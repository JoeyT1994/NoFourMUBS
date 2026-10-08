import TaoBundleAssembly0206
import TaoBundleChunkBatch0806
import TaoBundleChunkBatch0808
import TaoBundleChunkBatch0809
import TaoBundleChunkBatch0810
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207
def root_8626982 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626982_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626982_right_fuel : Nat := 25
def small_8626982_right_count : Nat := 183
def small_8626982_right_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC000000090000000312073CFC00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F804548A05138670FA0CFD9C07000000090F350CFC000000030C9A86FC000000090F87510700000003078000FE128A7D09022A458113E1C500000000000AD3578310D100F8022A458500000009000000090000000100000009000000090000000400000009000000021386ACFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09022A458113E1C500000000000AD3578310D100F8067ECE85000000090000000500000001000000050000000500000004128A410900000004022A458113E1C500000000000000000900000005000000010F350CF80000000104548A05000000091386ACFA000000020CFD9C07000000090F350CFC000000030C9A86F800000009000000091386AD000CFD9C030F34D0F804548A05000000090000000900000001000000090000000000000004135D45090000000404548A0113867100000000000CFD9C030F34D0F8000000090000000100000009000000090000000212073CFA0000000208A91307120700FC000000090000000312073CFC00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030C9A86FC0F878D07078000FE0000000600000008000000030F8751070000000300000005000000020F350CFA000000020CFD9C070000000600000005000000010F350CF8000000010CFD9C050F34D0FA0CFD9C07000000060000000500000002000000051386AD000CFD9C030F34D0F80CFD9C05000000090000000500000001000000050000000000000004135D45090000000404548A0113867100000000000CFD9C030F34D0F80CFD9C050000000900000005000000010000000500000005"
theorem small_8626982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626982_right_root small_8626982_right_fuel small_8626982_right_count small_8626982_right_encoded = true := by
  decide +kernel
theorem small_8626982_right_covered : CoveredBy scale carrier boxes small_8626982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626982_right_root small_8626982_right_fuel small_8626982_right_count small_8626982_right_encoded small_8626982_right_checked

theorem cover_8626982 : CoveredBy scale carrier boxes root_8626982 := by
  apply coveredBy_split_literal root_8626982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8626983 small_8626982_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8626983
  · exact small_8626982_right_covered
#print axioms cover_8626982

def root_8626976 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626976_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626976_left_fuel : Nat := 1
def small_8626976_left_count : Nat := 1
def small_8626976_left_encoded : String := "00000000"
theorem small_8626976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626976_left_root small_8626976_left_fuel small_8626976_left_count small_8626976_left_encoded = true := by
  decide +kernel
theorem small_8626976_left_covered : CoveredBy scale carrier boxes small_8626976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626976_left_root small_8626976_left_fuel small_8626976_left_count small_8626976_left_encoded small_8626976_left_checked

theorem cover_8626976 : CoveredBy scale carrier boxes root_8626976 := by
  apply coveredBy_split_literal root_8626976 small_8626976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8626982 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8626976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8626982
#print axioms cover_8626976

def root_8626975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626975_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626975_right_fuel : Nat := 24
def small_8626975_right_count : Nat := 197
def small_8626975_right_encoded : String := "12073D0008A91303120700F808A91305120700FA08A91307120700FC000000090000000312073CFC00000003050000FE135D81090CFD9C010F34D1000000000004548A03138670F804548A05138670FA0CFD9C07000000090F350CFC000000030C9A86FC000000070F87510700000003078000FE128A7D090AD3578110D101000000000000000007000000070000000400000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FC000000070F87510700000003078000FE128A7D090AD3578110D101000000000000000007000000050000000400000007000000011386ACF80000000104548A0500000009000000090F350D0004548A03138670F804548A05000000090000000900000001000000090000000000000004135D4509000000040CFD9C010F34D1000000000004548A03138670F8000000090000000100000009000000090000000212073CFA0000000208A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000090F350D0004548A0300000009000000090000000000000004135D4509000000040CFD9C01000000080F350D0004548A030000000800000008000000000000000312073CFC00000003050000FE135D81090CFD9C010F34D1000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000090000000300000005000000020F350CFA000000020CFD9C070F34D0FC000000050000000300000005000000011386ACF8000000010CFD9C0500000009000000050F350D0004548A03138670F80CFD9C050F34D0FA00000005000000020000000500000001000000050000000000000004135D4509000000040CFD9C010F34D1000000000004548A03138670F80CFD9C0500000009000000050000000100000005000000050000000112073CF80000000108A91305120700FA08A913070000000912073CFC00000003050000FE135D81090CFD9C010F34D10000000000000000090000000900000004000000090000000212073CFA0000000208A91307120700FC050000FE0000000900000009000000030000000500000000"
theorem small_8626975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626975_right_root small_8626975_right_fuel small_8626975_right_count small_8626975_right_encoded = true := by
  decide +kernel
theorem small_8626975_right_covered : CoveredBy scale carrier boxes small_8626975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626975_right_root small_8626975_right_fuel small_8626975_right_count small_8626975_right_encoded small_8626975_right_checked

theorem cover_8626975 : CoveredBy scale carrier boxes root_8626975 := by
  apply coveredBy_split_literal root_8626975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8626976 small_8626975_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8626976
  · exact small_8626975_right_covered
#print axioms cover_8626975

def root_8626969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626969_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626969_left_fuel : Nat := 1
def small_8626969_left_count : Nat := 1
def small_8626969_left_encoded : String := "00000004"
theorem small_8626969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626969_left_root small_8626969_left_fuel small_8626969_left_count small_8626969_left_encoded = true := by
  decide +kernel
theorem small_8626969_left_covered : CoveredBy scale carrier boxes small_8626969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626969_left_root small_8626969_left_fuel small_8626969_left_count small_8626969_left_encoded small_8626969_left_checked

theorem cover_8626969 : CoveredBy scale carrier boxes root_8626969 := by
  apply coveredBy_split_literal root_8626969 small_8626969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8626975 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8626969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8626975
#print axioms cover_8626969

def root_8610449 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610449 : CoveredBy scale carrier boxes root_8610449 := by
  apply coveredBy_split_literal root_8610449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8626969 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610450
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8626969
#print axioms cover_8610449

def root_8610444 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610444_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610444_right_fuel : Nat := 1
def small_8610444_right_count : Nat := 1
def small_8610444_right_encoded : String := "00000003"
theorem small_8610444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610444_right_root small_8610444_right_fuel small_8610444_right_count small_8610444_right_encoded = true := by
  decide +kernel
theorem small_8610444_right_covered : CoveredBy scale carrier boxes small_8610444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610444_right_root small_8610444_right_fuel small_8610444_right_count small_8610444_right_encoded small_8610444_right_checked

theorem cover_8610444 : CoveredBy scale carrier boxes root_8610444 := by
  apply coveredBy_split_literal root_8610444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610449 small_8610444_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610449
  · exact small_8610444_right_covered
#print axioms cover_8610444

def root_8631640 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631640_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631640_left_fuel : Nat := 7
def small_8631640_left_count : Nat := 13
def small_8631640_left_encoded : String := "120700FE050000FC135D810704548A01138671000000000004548A030000000A000000070000000A000000030000000A00000004"
theorem small_8631640_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631640_left_root small_8631640_left_fuel small_8631640_left_count small_8631640_left_encoded = true := by
  decide +kernel
theorem small_8631640_left_covered : CoveredBy scale carrier boxes small_8631640_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631640_left_root small_8631640_left_fuel small_8631640_left_count small_8631640_left_encoded small_8631640_left_checked

theorem cover_8631640 : CoveredBy scale carrier boxes root_8631640 := by
  apply coveredBy_split_literal root_8631640 small_8631640_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3231.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8631640_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3231.covered
#print axioms cover_8631640

def root_8631635 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631635_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631635_right_fuel : Nat := 1
def small_8631635_right_count : Nat := 1
def small_8631635_right_encoded : String := "00000002"
theorem small_8631635_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631635_right_root small_8631635_right_fuel small_8631635_right_count small_8631635_right_encoded = true := by
  decide +kernel
theorem small_8631635_right_covered : CoveredBy scale carrier boxes small_8631635_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631635_right_root small_8631635_right_fuel small_8631635_right_count small_8631635_right_encoded small_8631635_right_checked

theorem cover_8631635 : CoveredBy scale carrier boxes root_8631635 := by
  apply coveredBy_split_literal root_8631635 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631640 small_8631635_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631640
  · exact small_8631635_right_covered
#print axioms cover_8631635

def root_8631634 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631634_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631634_right_fuel : Nat := 24
def small_8631634_right_count : Nat := 129
def small_8631634_right_encoded : String := "12073CFA0000000208A91309120700FE0000000A0000000412073CFE00000004050000FC135D810704548A01138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C090000000A0F350CFE000000040C9A86FE0000000A0F87510900000004078000FC128A7D07022A458113E1C50000000000022A45830000000A13E200F8000000010AD3578510D100FA0000000A000000020000000A0000000A000000030000000A000000020F350CFA000000020000000A000000011386ACF8000000010CFD9C050F34D0FA0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0000000A000000020000000500000001000000050000000500000003128A410700000003022A458113E1C500000000000000000A00000005000000020F350CFA000000020CFD9C090000000A0F350CFE000000040C9A86FA0000000A0000000A1386AD0004548A03138670F80CFD9C050F34D0FA0000000A000000020000000A000000011386ACF8000000010CFD9C050F34D0FA0000000A000000020000000A0000000000000003135D45070000000304548A01138671000000000004548A030000000A1386ACF8000000010CFD9C050F34D0FA0000000A000000020000000A0000000A"
theorem small_8631634_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631634_right_root small_8631634_right_fuel small_8631634_right_count small_8631634_right_encoded = true := by
  decide +kernel
theorem small_8631634_right_covered : CoveredBy scale carrier boxes small_8631634_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631634_right_root small_8631634_right_fuel small_8631634_right_count small_8631634_right_encoded small_8631634_right_checked

theorem cover_8631634 : CoveredBy scale carrier boxes root_8631634 := by
  apply coveredBy_split_literal root_8631634 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631635 small_8631634_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631635
  · exact small_8631634_right_covered
#print axioms cover_8631634

def root_8631629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631629_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631629_right_fuel : Nat := 1
def small_8631629_right_count : Nat := 1
def small_8631629_right_encoded : String := "00000001"
theorem small_8631629_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631629_right_root small_8631629_right_fuel small_8631629_right_count small_8631629_right_encoded = true := by
  decide +kernel
theorem small_8631629_right_covered : CoveredBy scale carrier boxes small_8631629_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631629_right_root small_8631629_right_fuel small_8631629_right_count small_8631629_right_encoded small_8631629_right_checked

theorem cover_8631629 : CoveredBy scale carrier boxes root_8631629 := by
  apply coveredBy_split_literal root_8631629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631634 small_8631629_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631634
  · exact small_8631629_right_covered
#print axioms cover_8631629

def root_8631628 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631628_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631628_right_fuel : Nat := 30
def small_8631628_right_count : Nat := 397
def small_8631628_right_encoded : String := "12073CF80000000108A91305120700FA08A91309120700FE050000FC135D810704548A01000000071386AD00000000070000000000000003000000070000000412073CFE00000004050000FC135D810704548A0113867100000000000CFD9C030F34D0F804548A05138670FA0CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D09078000FC128A7D07022A45810000000713E201000AD3578310D100F8000000070000000100000007000000000000000300000007000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3578310D100F8022A45850000000713E200FA000000020B4D43FE00000007108011090000000408C000FC11FC2507000000070000000300000007000000010000000713E201000AD3578310D100F8022A45850000000813E200FA000000020B4D43FE000000081080110900000004000000080000000110D13CF800000001022A458500000008000000050000000000000003128A41070000000300000008000000021386ACFA000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D09078000FC128A7D07022A45810000000713E201000AD357830000000A00000005000000000000000300000007000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3578310D100F8067ECE8512EA58FA0B4D43FE00000007108011090000000408C000FC0000000500000007000000020000000500000001000000050000000500000003128A410700000003022A45810000000700000005000000010F350CF80000000104548A05138670FA0CFD9C09000000070F350CFE000000040C9A86F80F878D030C9A86FE000000070F87510900000004078000FC128A7D07022A45810000000713E20100022A45850000000700000005000000000000000300000007000000010F875103000000010C9A86FE0000000700000007000000021386ACFA000000020CFD9C09000000070F350CFE000000040C9A86F80F878D030C9A86FE000000070F8751090000000400000005000000010F87510300000001000000051386AD000CFD9C030F34D0F804548A05138670FA0CFD9C090F34D0FE078000FC128A7D070000000A0000000300000007000000040F350CFE000000040C9A86FE0F878D09078000FC128A7D07067ECE8112EA59000000000000000008000000080000000300000008000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000AD3578310D100F8000000080000000100000005000000050000000300000008000000021386ACFA000000020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0F878D090000000A000000040F8751090000000400000005000000010F350CF80000000104548A05138670FA0CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09078000FC0000000500000007000000040F8751090000000400000005000000010F8751030000000100000005000000021386ACFA000000020CFD9C090F34D0FE0000000600000004000000050000000000000003135D45070000000304548A0113867100000000000CFD9C030F34D0F804548A05000000071386ACFA000000020000000700000001000000071386AD000CFD9C030F34D0F804548A05000000080000000A000000010F350CF80000000104548A05138670FA0CFD9C0900000007000000050000000200000005000000000000000212073CFA0000000208A91309120700FE0000000A0000000412073CFE00000004050000FC135D810704548A0113867100000000000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C09000000060F350CFE000000040C9A86FE0F878D09078000FC0000000600000007000000040F8751090000000400000005000000020F350CFA000000020CFD9C090000000600000005000000010F350CF8000000010CFD9C050F34D0FA0CFD9C09000000060000000500000002000000051386AD000CFD9C030F34D0F80CFD9C050F34D0FA0000000A000000020000000500000001000000050000000000000003135D45070000000304548A0113867100000000000CFD9C030F34D0F80CFD9C050F34D0FA0000000A0000000200000005000000010000000500000005"
theorem small_8631628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631628_right_root small_8631628_right_fuel small_8631628_right_count small_8631628_right_encoded = true := by
  decide +kernel
theorem small_8631628_right_covered : CoveredBy scale carrier boxes small_8631628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631628_right_root small_8631628_right_fuel small_8631628_right_count small_8631628_right_encoded small_8631628_right_checked

theorem cover_8631628 : CoveredBy scale carrier boxes root_8631628 := by
  apply coveredBy_split_literal root_8631628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631629 small_8631628_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631629
  · exact small_8631628_right_covered
#print axioms cover_8631628

def root_8631622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631622_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631622_left_fuel : Nat := 1
def small_8631622_left_count : Nat := 1
def small_8631622_left_encoded : String := "00000000"
theorem small_8631622_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631622_left_root small_8631622_left_fuel small_8631622_left_count small_8631622_left_encoded = true := by
  decide +kernel
theorem small_8631622_left_covered : CoveredBy scale carrier boxes small_8631622_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631622_left_root small_8631622_left_fuel small_8631622_left_count small_8631622_left_encoded small_8631622_left_checked

theorem cover_8631622 : CoveredBy scale carrier boxes root_8631622 := by
  apply coveredBy_split_literal root_8631622 small_8631622_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631628 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8631622_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631628
#print axioms cover_8631622

def root_8631621 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631621_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631621_right_fuel : Nat := 24
def small_8631621_right_count : Nat := 187
def small_8631621_right_encoded : String := "12073D0008A91303120700F808A91305120700FA08A91309120700FE0000000A0000000412073CFE00000004050000FC135D81070CFD9C010F34D1000000000004548A03138670F804548A05138670FA0CFD9C090000000A0F350CFE000000040C9A86FE000000080F87510900000004078000FC128A7D070AD3578110D101000000000000000008000000080000000300000008000000020000000A000000011386ACF80000000104548A05138670FA0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080F87510900000004078000FC128A7D070AD3578110D101000000000000000008000000050000000300000008000000020000000A0F350D0004548A030000000A1386ACF8000000010000000A0000000000000003135D4507000000030CFD9C010F34D1000000000004548A030000000A0000000A0000000A0000000212073CFA0000000208A913090000000A12073CFE00000004050000FC135D81070CFD9C010F34D100000000000000000A0000000A000000030000000A0000000112073CF80000000108A91305120700FA08A91309120700FE050000FC135D81070CFD9C010F34D100000000000000000A0F350D000CFD9C030000000A0F350CF8000000010000000A0000000000000003135D4507000000030CFD9C01000000070F350D000CFD9C030000000A00000007000000000000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D0F804548A05138670FA0CFD9C090F34D0FE0000000A0000000400000005000000020000000A000000010F350CF80000000104548A05138670FA0CFD9C090F34D0FE00000005000000040000000500000002000000050F350D000CFD9C030F34D0F80000000500000001000000050000000000000003135D4507000000030CFD9C010F34D100000000000CFD9C030000000A00000005000000050000000212073CFA0000000208A91309120700FE050000FC0000000A0000000A000000040000000500000000"
theorem small_8631621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631621_right_root small_8631621_right_fuel small_8631621_right_count small_8631621_right_encoded = true := by
  decide +kernel
theorem small_8631621_right_covered : CoveredBy scale carrier boxes small_8631621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631621_right_root small_8631621_right_fuel small_8631621_right_count small_8631621_right_encoded small_8631621_right_checked

theorem cover_8631621 : CoveredBy scale carrier boxes root_8631621 := by
  apply coveredBy_split_literal root_8631621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631622 small_8631621_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631622
  · exact small_8631621_right_covered
#print axioms cover_8631621

def root_8631616 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631616_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631616_right_fuel : Nat := 1
def small_8631616_right_count : Nat := 1
def small_8631616_right_encoded : String := "00000004"
theorem small_8631616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631616_right_root small_8631616_right_fuel small_8631616_right_count small_8631616_right_encoded = true := by
  decide +kernel
theorem small_8631616_right_covered : CoveredBy scale carrier boxes small_8631616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631616_right_root small_8631616_right_fuel small_8631616_right_count small_8631616_right_encoded small_8631616_right_checked

theorem cover_8631616 : CoveredBy scale carrier boxes root_8631616 := by
  apply coveredBy_split_literal root_8631616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631621 small_8631616_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631621
  · exact small_8631616_right_covered
#print axioms cover_8631616

def root_8636310 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636310_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636310_right_fuel : Nat := 17
def small_8636310_right_count : Nat := 129
def small_8636310_right_encoded : String := "1386AD0004548A03138670F804548A05138670FA078000FC128A7D07078000FE00000006000000060000000300000006000000021386ACFA00000002078000FC128A7D07078000FE128A7D09067ECE8112EA590000000000022A45830000000713E200F800000001067ECE8512EA58FA08C000FC0000000600000006000000020000000512EA9500022A458300000007000000050000000000000004128A4109000000040000000700000003128A410700000003078000FE128A7D09067ECE8112EA590000000000022A45830000000613E200F800000001000000060000000A00000004128A41090000000400000006000000011386ACF80000000104548A05138670FA078000FC128A7D07078000FE128A7D09067ECE8112EA590000000000067ECE8312EA58F8022A45850000000613E200FA0000000208C000FC00000006000000060000000112EA94F800000001022A4585000000060000000512EA9500067ECE8312EA58F8022A4585000000060000000500000001000000050000000000000004128A410900000004067ECE8112EA590000000000067ECE8300000006000000090000000900000003128A410700000003078000FE00000008128A41090000000400000006000000021386ACFA00000002078000FC128A7D07078000FE00000005128A4109000000040000000500000003128A4107000000030000000500000000"
theorem small_8636310_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636310_right_root small_8636310_right_fuel small_8636310_right_count small_8636310_right_encoded = true := by
  decide +kernel
theorem small_8636310_right_covered : CoveredBy scale carrier boxes small_8636310_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636310_right_root small_8636310_right_fuel small_8636310_right_count small_8636310_right_encoded small_8636310_right_checked

theorem cover_8636310 : CoveredBy scale carrier boxes root_8636310 := by
  apply coveredBy_split_literal root_8636310 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3232.root small_8636310_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3232.covered
  · exact small_8636310_right_covered
#print axioms cover_8636310

def root_8636305 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636305_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636305_right_fuel : Nat := 1
def small_8636305_right_count : Nat := 1
def small_8636305_right_encoded : String := "00000004"
theorem small_8636305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636305_right_root small_8636305_right_fuel small_8636305_right_count small_8636305_right_encoded = true := by
  decide +kernel
theorem small_8636305_right_covered : CoveredBy scale carrier boxes small_8636305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636305_right_root small_8636305_right_fuel small_8636305_right_count small_8636305_right_encoded small_8636305_right_checked

theorem cover_8636305 : CoveredBy scale carrier boxes root_8636305 := by
  apply coveredBy_split_literal root_8636305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636310 small_8636305_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636310
  · exact small_8636305_right_covered
#print axioms cover_8636305

def root_8636304 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636304_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636304_right_fuel : Nat := 17
def small_8636304_right_count : Nat := 69
def small_8636304_right_encoded : String := "135D45090000000404548A01138671000000000004548A03138670F804548A05000000061386ACFA0000000200000006000000011386ACF80000000104548A05000000061386ACFA00000002078000FC128A7D07028000FE13D7ED09022A458113E1C50000000000067ECE830000000712EA94F800000001067ECE85000000060000000513E20100067ECE830000000600000005000000000000000413D7B10900000004022A458113E1C50000000000000000070000000700000003128A410700000003028000FE00000006000000061386AD0004548A03138670F804548A050000000600000007000000011386ACF80000000104548A05138670FA078000FC0000000600000006000000020000000500000000"
theorem small_8636304_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636304_right_root small_8636304_right_fuel small_8636304_right_count small_8636304_right_encoded = true := by
  decide +kernel
theorem small_8636304_right_covered : CoveredBy scale carrier boxes small_8636304_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636304_right_root small_8636304_right_fuel small_8636304_right_count small_8636304_right_encoded small_8636304_right_checked

theorem cover_8636304 : CoveredBy scale carrier boxes root_8636304 := by
  apply coveredBy_split_literal root_8636304 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636305 small_8636304_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636305
  · exact small_8636304_right_covered
#print axioms cover_8636304

def root_8636299 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636299_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636299_right_fuel : Nat := 1
def small_8636299_right_count : Nat := 1
def small_8636299_right_encoded : String := "00000003"
theorem small_8636299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636299_right_root small_8636299_right_fuel small_8636299_right_count small_8636299_right_encoded = true := by
  decide +kernel
theorem small_8636299_right_covered : CoveredBy scale carrier boxes small_8636299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636299_right_root small_8636299_right_fuel small_8636299_right_count small_8636299_right_encoded small_8636299_right_checked

theorem cover_8636299 : CoveredBy scale carrier boxes root_8636299 := by
  apply coveredBy_split_literal root_8636299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636304 small_8636299_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636304
  · exact small_8636299_right_covered
#print axioms cover_8636299

def root_8636298 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636298_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636298_right_fuel : Nat := 20
def small_8636298_right_count : Nat := 101
def small_8636298_right_encoded : String := "135D450700000003050000FE135D810904548A01138671000000000004548A03138670F804548A05000000061386ACFA0000000200000006000000011386ACF80000000104548A05000000061386ACFA00000002028000FC13D7ED07078000FE128A7D09022A458113E1C50000000000067ECE8312EA58F8067ECE850000000612EA94FA00000002000000060000000112EA94F800000001067ECE85000000060000000513E20100067ECE8300000006000000050000000000000004128A410900000004000000060000000313D7B10700000003078000FE128A7D09022A458113E1C50000000000000000080000000800000004000000061386AD0004548A03138670F804548A05000000061386ACFA00000002028000FC0000000600000006000000011386ACF80000000104548A0500000008000000050000000000000004135D45090000000404548A01138671000000000004548A03000000061386ACF80000000104548A0500000006000000061386AD0004548A03000000061386ACF80000000104548A05000000060000000500000000"
theorem small_8636298_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636298_right_root small_8636298_right_fuel small_8636298_right_count small_8636298_right_encoded = true := by
  decide +kernel
theorem small_8636298_right_covered : CoveredBy scale carrier boxes small_8636298_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636298_right_root small_8636298_right_fuel small_8636298_right_count small_8636298_right_encoded small_8636298_right_checked

theorem cover_8636298 : CoveredBy scale carrier boxes root_8636298 := by
  apply coveredBy_split_literal root_8636298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636299 small_8636298_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636299
  · exact small_8636298_right_covered
#print axioms cover_8636298

def root_8636293 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636293_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636293_right_fuel : Nat := 1
def small_8636293_right_count : Nat := 1
def small_8636293_right_encoded : String := "00000002"
theorem small_8636293_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636293_right_root small_8636293_right_fuel small_8636293_right_count small_8636293_right_encoded = true := by
  decide +kernel
theorem small_8636293_right_covered : CoveredBy scale carrier boxes small_8636293_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636293_right_root small_8636293_right_fuel small_8636293_right_count small_8636293_right_encoded small_8636293_right_checked

theorem cover_8636293 : CoveredBy scale carrier boxes root_8636293 := by
  apply coveredBy_split_literal root_8636293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636298 small_8636293_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636298
  · exact small_8636293_right_covered
#print axioms cover_8636293

def root_8636292 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636292_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636292_right_fuel : Nat := 29
def small_8636292_right_count : Nat := 299
def small_8636292_right_encoded : String := "12073CFA00000002050000FC135D8107050000FE135D810904548A01138671000000000004548A03138670F80CFD9C050F34D0FA078000FC128A7D07078000FE128A7D09022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA000000070000000210D13CFA000000020000000A0000000113E200F8000000010AD3578510D100FA08C000FC11FC250708C000FE11FC25090115234113F8590000000000033F67C3000000070000000A0000000A00000004000000070000000311FBE9070000000308C000FE0000000A11FBE909000000040115234113F8590000000000033F67C30000000700000005000000050000000210D13CFA0000000208C000FC11FC250700000008000000030000000A13E20100022A458313E1C4F80AD3578510D100FA0000000700000002000000070000000113E200F8000000010AD3578510D100FA0000000A00000002000000050000000000000004128A410900000004022A458113E1C50000000000022A45830000000713E200F8000000010AD3578510D100FA0000000700000002000000050000000700000003128A410700000003078000FE128A7D09022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA00000006000000020000000A0000000113E200F8000000010AD3578510D100FA0000000A00000002000000050000000A00000004128A410900000004022A458113E1C50000000000022A45830000000613E200F8000000010AD35785000000060000000513E20100022A4583000000060000000500000000000000020F350CFA000000020C9A86FA0F878D05078000FC128A7D07078000FE128A7D09022A458113E1C50000000000022A458300000008000000050000000500000004128A4109000000040000000500000003128A410700000003078000FE00000005128A41090000000400000005000000020F8751050000000200000005000000011386ACF8000000010CFD9C050F34D0FA078000FC128A7D07078000FE128A7D09022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA08C000FC0000000511FBE9070000000300000005000000020000000500000001000000050000000500000004128A4109000000040000000500000003128A410700000003078000FE00000005128A4109000000040000000500000002000000051386AD0004548A03138670F80CFD9C050F34D0FA078000FC128A7D07078000FE128A7D090000000A00000004128A4109000000040000000500000003128A41070000000300000005000000020000000500000001000000050000000000000004135D45090000000404548A01138671000000000004548A03138670F80CFD9C050F34D0FA078000FC00000007128A41070000000300000006000000020000000500000001000000050000000500000003135D450700000003050000FE135D810904548A01138671000000000004548A03138670F80CFD9C050F34D0FA028000FC13D7ED07078000FE0000000A128A41090000000400000006000000030000000A000000020000000500000001000000050000000500000004135D45090000000404548A01138671000000000004548A03138670F80CFD9C050000000600000005000000010000000500000005"
theorem small_8636292_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636292_right_root small_8636292_right_fuel small_8636292_right_count small_8636292_right_encoded = true := by
  decide +kernel
theorem small_8636292_right_covered : CoveredBy scale carrier boxes small_8636292_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636292_right_root small_8636292_right_fuel small_8636292_right_count small_8636292_right_encoded small_8636292_right_checked

theorem cover_8636292 : CoveredBy scale carrier boxes root_8636292 := by
  apply coveredBy_split_literal root_8636292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636293 small_8636292_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636293
  · exact small_8636292_right_covered
#print axioms cover_8636292

def root_8636287 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636287_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636287_right_fuel : Nat := 1
def small_8636287_right_count : Nat := 1
def small_8636287_right_encoded : String := "00000001"
theorem small_8636287_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636287_right_root small_8636287_right_fuel small_8636287_right_count small_8636287_right_encoded = true := by
  decide +kernel
theorem small_8636287_right_covered : CoveredBy scale carrier boxes small_8636287_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636287_right_root small_8636287_right_fuel small_8636287_right_count small_8636287_right_encoded small_8636287_right_checked

theorem cover_8636287 : CoveredBy scale carrier boxes root_8636287 := by
  apply coveredBy_split_literal root_8636287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636292 small_8636287_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636292
  · exact small_8636287_right_covered
#print axioms cover_8636287

def root_8636286 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636286_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636286_right_fuel : Nat := 32
def small_8636286_right_count : Nat := 283
def small_8636286_right_encoded : String := "12073CF80000000108A91305120700FA050000FC135D8107050000FE135D810904548A0113867100000000000CFD9C030F34D0F804548A05138670FA078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3578310D100F8022A45850000000813E200FA0000000208C000FC11FC250708C000FE11FC25090115234113F859000000000009BE3543117740F80000000900000001000000070000000900000004000000090000000311FBE9070000000308C000FE0000000811FBE909000000040115234113F859000000000009BE3543117740F8000000080000000100000005000000050000000110D13CF800000001022A45850000000913E200FA0000000208C000FC0000000911FBE907000000030000000513E201000AD3578310D100F8022A45850000000813E200FA000000020000000900000001000000090000000000000004128A410900000004022A458113E1C500000000000AD3578310D100F8022A4585000000060000000900000001000000090000000900000003128A410700000003078000FE128A7D09022A458113E1C500000000000AD3578310D100F80000000800000001000000070000000800000004128A410900000004022A458113E1C500000000000AD357830000000610D13CF800000001022A4585000000060000000513E201000AD35783000000060000000500000000000000021386ACFA00000002078000FC128A7D07078000FE128A7D09022A458113E1C500000000000AD3578310D100F8067ECE8512EA58FA08C000FC0000000511FBE9070000000300000005000000020000000500000001000000050000000500000004128A4109000000040000000500000003128A410700000003078000FE00000005128A41090000000400000005000000010F350CF80000000104548A05138670FA0C9A86F80F878D03078000FC128A7D07078000FE128A7D09022A458113E1C50000000000022A4585000000070000000500000005000000040000000900000003128A410700000003078000FE00000005128A41090000000400000005000000010F875103000000010000000500000002000000051386AD000CFD9C030F34D0F804548A05138670FA078000FC128A7D07078000FE128A7D0900000009000000040000000900000003128A41070000000300000005000000020000000500000001000000050000000000000004135D45090000000404548A0113867100000000000CFD9C030F34D0F804548A05138670FA078000FC128A7D070000000900000003128A41070000000300000006000000020000000500000001000000050000000500000003135D450700000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F804548A05138670FA028000FC13D7ED07078000FE00000008128A410900000004000000060000000300000008000000020000000500000001000000050000000500000004135D45090000000404548A0113867100000000000CFD9C030F34D0F804548A0500000006000000050000000100000005000000050000000200000005"
theorem small_8636286_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636286_right_root small_8636286_right_fuel small_8636286_right_count small_8636286_right_encoded = true := by
  decide +kernel
theorem small_8636286_right_covered : CoveredBy scale carrier boxes small_8636286_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636286_right_root small_8636286_right_fuel small_8636286_right_count small_8636286_right_encoded small_8636286_right_checked

theorem cover_8636286 : CoveredBy scale carrier boxes root_8636286 := by
  apply coveredBy_split_literal root_8636286 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636287 small_8636286_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636287
  · exact small_8636286_right_covered
#print axioms cover_8636286

def root_8636280 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636280_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636280_left_fuel : Nat := 1
def small_8636280_left_count : Nat := 1
def small_8636280_left_encoded : String := "00000000"
theorem small_8636280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636280_left_root small_8636280_left_fuel small_8636280_left_count small_8636280_left_encoded = true := by
  decide +kernel
theorem small_8636280_left_covered : CoveredBy scale carrier boxes small_8636280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636280_left_root small_8636280_left_fuel small_8636280_left_count small_8636280_left_encoded small_8636280_left_checked

theorem cover_8636280 : CoveredBy scale carrier boxes root_8636280 := by
  apply coveredBy_split_literal root_8636280 small_8636280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636286 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8636280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636286
#print axioms cover_8636280

def root_8636279 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636279_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636279_right_fuel : Nat := 19
def small_8636279_right_count : Nat := 99
def small_8636279_right_encoded : String := "12073D0008A91303120700F808A91305120700FA050000FC135D8107050000FE135D81090CFD9C010F34D1000000000004548A03138670F804548A05138670FA078000FC128A7D07078000FE000000060000000600000003128A41070000000300000006000000021386ACFA00000002078000FC000000050000000A000000011386ACF80000000104548A05138670FA078000FC00000005128A4107000000030000000500000002000000050F350D0004548A03138670F80000000500000001000000050000000000000004135D4509000000040CFD9C010F34D1000000000004548A03138670F804548A05000000060000000500000001000000050000000500000003135D450700000003050000FE135D81090CFD9C010F34D1000000000004548A03138670F804548A05000000060000000500000001000000050000000500000004135D4509000000040CFD9C010F34D1000000000004548A03138670F804548A0500000006000000050000000100000005000000050000000200000005000000010000000500000000"
theorem small_8636279_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636279_right_root small_8636279_right_fuel small_8636279_right_count small_8636279_right_encoded = true := by
  decide +kernel
theorem small_8636279_right_covered : CoveredBy scale carrier boxes small_8636279_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636279_right_root small_8636279_right_fuel small_8636279_right_count small_8636279_right_encoded small_8636279_right_checked

theorem cover_8636279 : CoveredBy scale carrier boxes root_8636279 := by
  apply coveredBy_split_literal root_8636279 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636280 small_8636279_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636280
  · exact small_8636279_right_covered
#print axioms cover_8636279

def root_8636273 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636273_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8636273_left_fuel : Nat := 1
def small_8636273_left_count : Nat := 1
def small_8636273_left_encoded : String := "00000004"
theorem small_8636273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8636273_left_root small_8636273_left_fuel small_8636273_left_count small_8636273_left_encoded = true := by
  decide +kernel
theorem small_8636273_left_covered : CoveredBy scale carrier boxes small_8636273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8636273_left_root small_8636273_left_fuel small_8636273_left_count small_8636273_left_encoded small_8636273_left_checked

theorem cover_8636273 : CoveredBy scale carrier boxes root_8636273 := by
  apply coveredBy_split_literal root_8636273 small_8636273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636279 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8636273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636279
#print axioms cover_8636273

def root_8631615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8631615 : CoveredBy scale carrier boxes root_8631615 := by
  apply coveredBy_split_literal root_8631615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8636273 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8636273
#print axioms cover_8631615

def root_8631609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631609_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8631609_left_fuel : Nat := 1
def small_8631609_left_count : Nat := 1
def small_8631609_left_encoded : String := "00000003"
theorem small_8631609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8631609_left_root small_8631609_left_fuel small_8631609_left_count small_8631609_left_encoded = true := by
  decide +kernel
theorem small_8631609_left_covered : CoveredBy scale carrier boxes small_8631609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8631609_left_root small_8631609_left_fuel small_8631609_left_count small_8631609_left_encoded small_8631609_left_checked

theorem cover_8631609 : CoveredBy scale carrier boxes root_8631609 := by
  apply coveredBy_split_literal root_8631609 small_8631609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631615 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8631609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631615
#print axioms cover_8631609

def root_8610443 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610443 : CoveredBy scale carrier boxes root_8610443 := by
  apply coveredBy_split_literal root_8610443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8631609 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8631609
#print axioms cover_8610443

def root_8610438 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610438_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610438_right_fuel : Nat := 1
def small_8610438_right_count : Nat := 1
def small_8610438_right_encoded : String := "00000002"
theorem small_8610438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610438_right_root small_8610438_right_fuel small_8610438_right_count small_8610438_right_encoded = true := by
  decide +kernel
theorem small_8610438_right_covered : CoveredBy scale carrier boxes small_8610438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610438_right_root small_8610438_right_fuel small_8610438_right_count small_8610438_right_encoded small_8610438_right_checked

theorem cover_8610438 : CoveredBy scale carrier boxes root_8610438 := by
  apply coveredBy_split_literal root_8610438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610443 small_8610438_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610443
  · exact small_8610438_right_covered
#print axioms cover_8610438

def root_8610437 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610437_right_fuel : Nat := 29
def small_8610437_right_count : Nat := 439
def small_8610437_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE1152250908A91301120701000000000008A91303120700F808A913070000000612073CFC0000000308A913090000000612073CFE00000004050000FA135D810504548A01138671000000000004548A03138670F80CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000060F875107000000030C9A86FE000000060F87510900000004078000FA000000060000000A00000001000000061386AD0004548A03138670F80CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D070000000A000000030000000A000000011386ACF8000000010CFD9C07000000060F350CFC000000030000000A0000000000000002135D45050000000204548A01138671000000000004548A03138670F80CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000060F875107000000030C9A86FE000000060F875109000000040000000500000001000000061386AD0004548A03138670F80CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A00000005000000011386ACF8000000010CFD9C070000000600000005000000000000000112073CF80000000108A913070000000612073CFC0000000308A913090000000612073CFE00000004050000FA135D810504548A01000000061386AD000CFD9C030F34D0F80000000600000001000000050000000000000002135D45050000000204548A01000000060000000512073D0008A91303120700F808A91307120700FC08A913090000000612073CFE00000004050000FA135D81050CFD9C010F34D10000000000000000060F350D0004548A0300000009000000060000000000000002135D4505000000020CFD9C010F34D10000000000000000060F350D0004548A03138670F804548A0700000006000000090000000100000006000000000000000312073CFC0000000308A91309120700FE0000000A0000000412073CFE00000004050000FA135D81050CFD9C010F34D1000000000004548A03138670F80CFD9C070000000A0000000A000000011386ACF8000000010CFD9C0700000006000000050F350D000000000A0000000000000002135D4505000000020CFD9C010F34D1000000000004548A03138670F80CFD9C070F34D0FC0000000900000003000000050000000100000005000000050000000112073CF80000000108A91307120700FC000000060000000312073CFC0000000308A91309120700FE00000006000000040000000500000000000000041151E9090000000408A91301120701000000000008A91303120700F808A91307120700FC050000FA00000008135D450500000002000000080000000312073CFC00000003050000FA135D8105050000FE135D810904548A01138671000000000004548A03138670F80CFD9C07000000080F350CFC000000030C9A86FC0F878D0700000008000000030F8751070000000300000005000000011386ACF8000000010CFD9C0700000006000000051386AD0004548A03138670F80CFD9C070F34D0FC00000008000000030000000500000001000000050000000000000004135D45090000000404548A01000000080000000500000002135D450500000002050000FE135D810904548A01138671000000000004548A03138670F80CFD9C070F34D0FC00000006000000030000000500000001000000050000000500000004135D45090000000404548A01138671000000000004548A030000000800000005000000050000000112073CF80000000108A91307120700FC00000006000000030000000512073D0008A91303120700F808A91307120700FC050000FA135D8105050000FE135D81090CFD9C010F34D10000000000000000090F350D0004548A03138670F80000000500000001000000050000000000000004135D4509000000040CFD9C01000000080000000500000002135D450500000002050000FE135D81090CFD9C010F34D10000000000000000090000000500000004135D4509000000040CFD9C0100000008000000050000000300000005000000010000000500000000000000031151E907000000030A0000FE1152250908A91301120701000000000008A91303120700F808A913090000000A12073CFE00000004050000FA135D8105050000FC135D810704548A0113867100000000000000000A0000000A000000030000000A00000002135D450500000002050000FC135D810704548A01138671000000000004548A030000000A0000000500000005000000030000000A0000000112073CF80000000108A913090000000A0000000512073D0008A913030000000A0000000500000000000000041151E9090000000400000005"
theorem small_8610437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610437_right_root small_8610437_right_fuel small_8610437_right_count small_8610437_right_encoded = true := by
  decide +kernel
theorem small_8610437_right_covered : CoveredBy scale carrier boxes small_8610437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610437_right_root small_8610437_right_fuel small_8610437_right_count small_8610437_right_encoded small_8610437_right_checked

theorem cover_8610437 : CoveredBy scale carrier boxes root_8610437 := by
  apply coveredBy_split_literal root_8610437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610438 small_8610437_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610438
  · exact small_8610437_right_covered
#print axioms cover_8610437

def root_8610432 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610432_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610432_right_fuel : Nat := 1
def small_8610432_right_count : Nat := 1
def small_8610432_right_encoded : String := "00000001"
theorem small_8610432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610432_right_root small_8610432_right_fuel small_8610432_right_count small_8610432_right_encoded = true := by
  decide +kernel
theorem small_8610432_right_covered : CoveredBy scale carrier boxes small_8610432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610432_right_root small_8610432_right_fuel small_8610432_right_count small_8610432_right_encoded small_8610432_right_checked

theorem cover_8610432 : CoveredBy scale carrier boxes root_8610432 := by
  apply coveredBy_split_literal root_8610432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610437 small_8610432_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610437
  · exact small_8610432_right_covered
#print axioms cover_8610432

def root_8610431 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610431_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610431_right_fuel : Nat := 31
def small_8610431_right_count : Nat := 473
def small_8610431_right_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0000FE1152250908A91301120701000000000008A91305120700FA08A913070000000612073CFC0000000308A913090000000612073CFE00000004050000F8135D810304548A01138671000000000004548A05138670FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000060F875107000000030C9A86FE000000060F87510900000004078000F8000000060000000900000002000000061386AD0004548A05138670FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000090F8751070000000300000005000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C0900000006000000050000000000000001135D45030000000104548A01138671000000000004548A05138670FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000060F875107000000030C9A86FE000000060F875109000000040000000500000002000000061386AD0004548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE000000060000000400000005000000021386ACFA000000020CFD9C070000000600000005000000000000000212073CFA0000000208A913070000000612073CFC0000000308A913090000000612073CFE00000004050000F8135D810304548A01000000061386AD000CFD9C050F34D0FA0000000600000002000000050000000000000001135D45030000000104548A01000000060000000512073D0008A91305120700FA08A91307120700FC08A9130900000006000000090000000312073CFC0000000308A91309120700FE050000F8135D81030CFD9C010F34D10000000000000000060F350D0004548A0500000009000000060000000000000001135D4503000000010CFD9C010F34D10000000000000000060F350D0004548A05138670FA0CFD9C07000000060F350CFC000000030000000A0000000200000006000000000000000412073CFE00000004050000F8135D81030CFD9C010F34D1000000000004548A05138670FA0CFD9C07000000090F350CFC000000030CFD9C090000000900000005000000021386ACFA000000020CFD9C0700000006000000050F350D00000000090000000000000001135D4503000000010CFD9C010F34D1000000000004548A05138670FA0CFD9C0700000009000000050000000200000005000000050000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A91309120700FE00000006000000040000000500000000000000041151E9090000000408A91301120701000000000008A91305120700FA08A913070000000912073CFC00000003050000F8135D8103050000FE135D810904548A0113867100000000000000000900000009000000040000000900000001135D450300000001050000FE135D810904548A01138671000000000004548A0500000009000000050000000500000004000000090000000212073CFA0000000208A91307000000090000000512073D0008A91305000000090000000500000000000000031151E907000000030A0000FE1152250908A91301120701000000000008A91305120700FA08A91309120700FE050000F800000007135D450300000001000000070000000412073CFE00000004050000F8135D8103050000FC135D810704548A01138671000000000004548A05138670FA0CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F8751090000000400000005000000021386ACFA000000020CFD9C0900000006000000051386AD0004548A05138670FA0CFD9C090F34D0FE00000007000000040000000500000002000000050000000000000003135D45070000000304548A01000000070000000500000001135D450300000001050000FC135D810704548A01138671000000000004548A05138670FA0CFD9C090F34D0FE00000006000000040000000500000002000000050000000500000003135D45070000000304548A01138671000000000004548A050000000700000005000000050000000212073CFA0000000208A91309120700FE00000006000000040000000512073D0008A91305120700FA08A91309120700FE050000F8135D8103050000FC135D81070CFD9C010F34D100000000000000000A0F350D0004548A05138670FA0000000500000002000000050000000000000003135D4507000000030CFD9C01000000070000000500000001135D450300000001050000FC135D81070CFD9C010F34D100000000000000000A0000000500000003135D4507000000030CFD9C0100000007000000050000000400000005000000020000000500000000000000041151E9090000000400000005000000021151E905000000020A0000FC115225070A0000FE1152250908A91301120701000000000008A91307000000060000000612073D0008A91307000000090000000500000000000000041151E9090000000400000005000000031151E9070000000300000005"
theorem small_8610431_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610431_right_root small_8610431_right_fuel small_8610431_right_count small_8610431_right_encoded = true := by
  decide +kernel
theorem small_8610431_right_covered : CoveredBy scale carrier boxes small_8610431_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610431_right_root small_8610431_right_fuel small_8610431_right_count small_8610431_right_encoded small_8610431_right_checked

theorem cover_8610431 : CoveredBy scale carrier boxes root_8610431 := by
  apply coveredBy_split_literal root_8610431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610432 small_8610431_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610432
  · exact small_8610431_right_covered
#print axioms cover_8610431

def root_8610426 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610426_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610426_right_fuel : Nat := 1
def small_8610426_right_count : Nat := 1
def small_8610426_right_encoded : String := "00000000"
theorem small_8610426_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610426_right_root small_8610426_right_fuel small_8610426_right_count small_8610426_right_encoded = true := by
  decide +kernel
theorem small_8610426_right_covered : CoveredBy scale carrier boxes small_8610426_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610426_right_root small_8610426_right_fuel small_8610426_right_count small_8610426_right_encoded small_8610426_right_checked

theorem cover_8610426 : CoveredBy scale carrier boxes root_8610426 := by
  apply coveredBy_split_literal root_8610426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610431 small_8610426_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610431
  · exact small_8610426_right_covered
#print axioms cover_8610426

def root_8609778 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8609778_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8609778_left_fuel : Nat := 25
def small_8609778_left_count : Nat := 303
def small_8609778_left_encoded : String := "1151E901000000000A0000F8115225030A0000FA115225050A0000FC115225070A0000FE1152250908A91303120700F808A91305120700FA08A91307120700FC000000090000000312073CFC0000000308A91309120700FE0000000A0000000412073CFE0000000405000100135D45010000000004548A030000000A00000005135D810104548A03138670F804548A05138670FA0CFD9C07000000090000000A000000020000000A000000011386ACF80000000100000009000000000000000212073CFA0000000208A91307120700FC08A913090000000912073CFE00000004050001000000000A0000000A0000000312073CFC0000000308A913090000000A12073CFE0000000405000100000000050000000A0000000112073CF80000000108A91305120700FA08A91307120700FC000000090000000312073CFC0000000308A91309120700FE0500010000000009000000090000000412073CFE000000040500010000000005000000090000000212073CFA0000000208A91307120700FC08A913090000000912073CFE000000040500010000000005000000090000000312073CFC0000000308A91309120700FE0500010000000005000000090000000400000005000000041151E9090000000408A91303120700F808A91305120700FA08A91307120700FC000000090000000312073CFC0000000305000100135D45010000000000000005000000090000000212073CFA0000000208A91307120700FC05000100135D45010000000000000005135D8101050000FE135D810904548A03138670F80CFD9C050000000900000005000000010000000500000004135D45090000000404548A03138670F80CFD9C05000000090000000500000001000000050000000000000003000000050000000112073CF80000000108A91305120700FA08A91307120700FC0000000900000003000000050000000200000005000000031151E907000000030A0000FE1152250908A91303120700F808A91305120700FA08A91309120700FE0000000A0000000412073CFE0000000405000100135D450100000000000000050000000A0000000212073CFA0000000208A91309120700FE0000000A00000004000000050000000112073CF80000000108A91305120700FA08A91309120700FE05000100135D45010000000000000005135D8101050000FC135D81070CFD9C030000000A0000000500000003135D4507000000030CFD9C030F34D0F80000000500000001000000050000000000000004000000050000000200000005000000041151E9090000000400000005000000021151E905000000020A0000FC115225070A0000FE1152250908A91303120700F808A91307120700FC0000000A000000030000000A0000000112073CF80000000108A913070000000A00000005000000041151E9090000000400000005000000031151E9070000000300000005000000011151E903000000010A0000FA115225050A0000FC115225070A0000FE1152250908A91305120700FA08A913070000000912073CFC0000000308A91309120700FE0000000900000004000000050000000212073CFA0000000208A913070000000900000005000000041151E9090000000400000005000000031151E9070000000300000005000000021151E9050000000200000005"
theorem small_8609778_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8609778_left_root small_8609778_left_fuel small_8609778_left_count small_8609778_left_encoded = true := by
  decide +kernel
theorem small_8609778_left_covered : CoveredBy scale carrier boxes small_8609778_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8609778_left_root small_8609778_left_fuel small_8609778_left_count small_8609778_left_encoded small_8609778_left_checked

theorem cover_8609778 : CoveredBy scale carrier boxes root_8609778 := by
  apply coveredBy_split_literal root_8609778 small_8609778_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8610426 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8609778_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8610426
#print axioms cover_8609778

def root_8608166 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8608166 : CoveredBy scale carrier boxes root_8608166 := by
  apply coveredBy_split_literal root_8608166 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3223.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8609778 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3223.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8609778
#print axioms cover_8608166

def root_8643336 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8643336 : CoveredBy scale carrier boxes root_8643336 := by
  apply coveredBy_split_literal root_8643336 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3233.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3234.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3233.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3234.covered
#print axioms cover_8643336

def root_8647089 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8647089 : CoveredBy scale carrier boxes root_8647089 := by
  apply coveredBy_split_literal root_8647089 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3235.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3236.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3235.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3236.covered
#print axioms cover_8647089

def root_8643335 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8643335 : CoveredBy scale carrier boxes root_8643335 := by
  apply coveredBy_split_literal root_8643335 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8643336 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8647089 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8643336
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8647089
#print axioms cover_8643335

def root_8608165 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8608165 : CoveredBy scale carrier boxes root_8608165 := by
  apply coveredBy_split_literal root_8608165 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8608166 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8643335 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8608166
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8643335
#print axioms cover_8608165

def root_8603107 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8603107 : CoveredBy scale carrier boxes root_8603107 := by
  apply coveredBy_split_literal root_8603107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8603108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8608165 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8603108
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8608165
#print axioms cover_8603107

def root_8650890 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8650890 : CoveredBy scale carrier boxes root_8650890 := by
  apply coveredBy_split_literal root_8650890 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3237.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3238.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3237.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3238.covered
#print axioms cover_8650890

def root_8650262 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8650262_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8650262_left_fuel : Nat := 23
def small_8650262_left_count : Nat := 291
def small_8650262_left_encoded : String := "0A0001001151E901000000000A0000F8115225030A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A91303120700F80000000600000001000000060000000500000003115224FD000000030A0000FE115224FF0000000408A91303120700F808A913050000000512073CFA0000000208A912FD00000005000000070000000112073CF80000000108A91305120700FA08A912FD00000005120701060000000308A912FF00000005120700FE05000100135D4501000000000000000600000005000000040000000212073CFA0000000208A912FD00000006120701060000000308A912FF00000006120700FE05000100135D4501000000000CFD9C030F34D0F800000006000000010000000600000006000000041151E8FF0000000500000004000000021151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A91303120700F808A912FD00000005000000070000000112073CF80000000108A912FD00000006120701060000000308A912FF00000006120700FE05000100135D450100000000050000FA000000060000000700000006000000041151E8FF08A91303000000060000000600000004000000011151E903000000010A0000FA115225050A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A91305120700FA08A912FD00000005120701060000000308A912FF00000005120700FE05000100135D4501000000000000000900000006000000040000000212073CFA0000000208A912FD00000006120701060000000308A912FF00000006120700FE05000100135D450100000000050000F8000000060000000900000006000000041151E8FF0000000900000004000000021151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A912FD00000006120701060000000308A912FF00000006120700FE00000006000000041151E8FF0000000600000004115225010A0000F8115225030A0000FA115225050A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91303000000050000000612073D0008A91303120700F8000000050000000112073CF80000000108A91305120700FA000000050000000200000006000000001151E8FF08A9130112070100000000000000000612073D0008A9130300000005000000060000000000000004000000021151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A91303120700F8000000060000000100000006000000001151E8FF0000000600000004000000011151E903000000010A0000FA115225050A0001061151E8FD0000000600000003115224FD000000030A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A91305120700FA000000060000000200000006000000001151E8FF0000000600000004000000021151E905000000020000000600000000"
theorem small_8650262_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8650262_left_root small_8650262_left_fuel small_8650262_left_count small_8650262_left_encoded = true := by
  decide +kernel
theorem small_8650262_left_covered : CoveredBy scale carrier boxes small_8650262_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8650262_left_root small_8650262_left_fuel small_8650262_left_count small_8650262_left_encoded small_8650262_left_checked

theorem cover_8650262 : CoveredBy scale carrier boxes root_8650262 := by
  apply coveredBy_split_literal root_8650262 small_8650262_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8650890 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8650262_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8650890
#print axioms cover_8650262

def root_8655483 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8655483 : CoveredBy scale carrier boxes root_8655483 := by
  apply coveredBy_split_literal root_8655483 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3239.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3240.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3239.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3240.covered
#print axioms cover_8655483

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207
