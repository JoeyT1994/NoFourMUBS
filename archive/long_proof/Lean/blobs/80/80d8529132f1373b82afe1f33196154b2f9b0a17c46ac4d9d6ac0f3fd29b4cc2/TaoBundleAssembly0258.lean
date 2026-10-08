import TaoBundleAssembly0257
import TaoBundleChunkBatch0344
import TaoBundleChunkBatch0345
import TaoBundleChunkBatch0346
import TaoBundleChunkBatch0347
import TaoBundleChunkBatch0348
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258
def root_3644332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644332_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644332_right_fuel : Nat := 19
def small_3644332_right_count : Nat := 141
def small_3644332_right_encoded : String := "1151E8FD0A0000FE1152250908A91301120700F608A91303120700F808A913050000000512073D0408A913090000000500000009000000020000000112073CF80000000108A9130512070104000000020000000512073D0408A913090000000A12073CFE0000000400000009000000020000000012073CF60000000008A91303120700F808A9130512070104000000020000000512073D0408A91309120700FE050000FC135D80FD000000030CFD9C01000000050F350CF60000000004548A03000000051386ACF8000000010CFD9C050000000500000009000000050000000412073CFE0000000400000009000000020000000112073CF80000000108A91305120701040000000208A913090000000512073CFE00000004050000FC135D80FD000000030CFD9C0100000005000000090000000512073D0408A91309120700FE050000FC135D80FD000000030CFD9C010000000A0F350CF6000000000CFD9C030F34D0F80000000A000000010000000A135D44FD0CFD9C01000000050F350CF6000000000CFD9C03000000050000000A000000030000000412073CFE00000004050000FC135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F8000000090000000100000009135D44FD0CFD9C010F34D0F60000000900000000000000090000000300000002000000041151E9090000000408A91301120700F6000000090000000012073CF60000000008A91303120700F800000009000000010000000900000003"
theorem small_3644332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644332_right_root small_3644332_right_fuel small_3644332_right_count small_3644332_right_encoded = true := by
  decide +kernel
theorem small_3644332_right_covered : CoveredBy scale carrier boxes small_3644332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644332_right_root small_3644332_right_fuel small_3644332_right_count small_3644332_right_encoded small_3644332_right_checked

theorem cover_3644332 : CoveredBy scale carrier boxes root_3644332 := by
  apply coveredBy_split_literal root_3644332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3644333 small_3644332_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3644333
  · exact small_3644332_right_covered
#print axioms cover_3644332

def root_3644327 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644327_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644327_right_fuel : Nat := 1
def small_3644327_right_count : Nat := 1
def small_3644327_right_encoded : String := "00000002"
theorem small_3644327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644327_right_root small_3644327_right_fuel small_3644327_right_count small_3644327_right_encoded = true := by
  decide +kernel
theorem small_3644327_right_covered : CoveredBy scale carrier boxes small_3644327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644327_right_root small_3644327_right_fuel small_3644327_right_count small_3644327_right_encoded small_3644327_right_checked

theorem cover_3644327 : CoveredBy scale carrier boxes root_3644327 := by
  apply coveredBy_split_literal root_3644327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3644332 small_3644327_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3644332
  · exact small_3644327_right_covered
#print axioms cover_3644327

def root_3643657 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643657_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643657_left_fuel : Nat := 22
def small_3643657_left_count : Nat := 313
def small_3643657_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A91301120700F608A91303120700F808A912FD12073CFC0000000308A913090000000A12073CFE00000004050001040000000A00000009120700FC08A913090000000A12073CFE00000004050001040000000A135D810504548A01000000070000000A00000002000000030000000112073CF80000000108A912FD12073CFC000000030000000A120700FC08A913090000000A12073CFE0000000405000104135D4505000000020000000A135D810504548A01138670F60CFD9C030000000A0000000A000000000000000A00000002000000030000000012073CF60000000008A91303120700F808A912FD12073CFC0000000308A91309120700FE050001040000000A135D81050CFD9C010000000A0000000A000000020000000412073CFE0000000405000104135D4505000000020CFD9C010000000A0000000A135D81050CFD9C010F34D0F60000000A000000000F350CF60000000004548A03138670F80CFD9BFD000000090F34D0FC0000000A00000003000000011386ACF8000000010CFD9BFD000000090000000A00000002120700FC08A913090000000A12073CFE00000004050001040000000A0000000A000000030000000112073CF80000000108A912FD12073CFC0000000308A913090000000A12073CFE000000040000000A0000000A000000041151E9090000000408A91301120700F608A91303120700F808A912FD00000009120700FC050001040000000900000007000000030000000112073CF80000000108A912FD12073CFC0000000300000009120700FC05000104135D450500000002050000FE135D810904548A01138670F60CFD9C030000000700000005000000000000000A00000004135D45090000000400000009135D8105050000FE135D810904548A01138670F60CFD9C030000000900000009000000001386ACF6000000000CFD9C03000000090000000900000004135D4509000000040000000900000002000000030000000012073CF60000000008A91303120700F808A912FD12073CFC0000000300000009120700FC05000104135D450500000002050000FE0000000A135D45090000000400000009135D8105050000FE135D81090CFD9C010F34D0F600000007000000000000000A00000004135D4509000000040000000900000002000000030000000112073CF80000000108A912FD12073CFC0000000305000104135D4505000000020000000A135D8105050000FE135D81090000000A000000040000000900000002120700FC05000104135D450500000002050000FE0000000A135D45090000000400000005135D8105050000FE135D81090CFD9C010F34D0F60000000A000000000000000500000004135D4509000000040CFD9C010F34D0F600000009000000000000000500000002000000031151E8FD0A0000FE1152250908A91301120700F608A91303120700F80000000A000000010000000A0000000012073CF60000000008A91303120700F808A91309120700FE050001040000000A135D8105050000FC135D80FD000000030000000A0000000A000000020000000412073CFE00000004000000090000000112073CF80000000108A913090000000A12073CFE000000040500010400000008135D81050000000A00000002000000041151E9090000000408A91301120700F600000009000000000000000900000003"
theorem small_3643657_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3643657_left_root small_3643657_left_fuel small_3643657_left_count small_3643657_left_encoded = true := by
  decide +kernel
theorem small_3643657_left_covered : CoveredBy scale carrier boxes small_3643657_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3643657_left_root small_3643657_left_fuel small_3643657_left_count small_3643657_left_encoded small_3643657_left_checked

theorem cover_3643657 : CoveredBy scale carrier boxes root_3643657 := by
  apply coveredBy_split_literal root_3643657 small_3643657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3644327 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3643657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3644327
#print axioms cover_3643657

def root_3643652 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643652_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643652_right_fuel : Nat := 1
def small_3643652_right_count : Nat := 1
def small_3643652_right_encoded : String := "00000001"
theorem small_3643652_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3643652_right_root small_3643652_right_fuel small_3643652_right_count small_3643652_right_encoded = true := by
  decide +kernel
theorem small_3643652_right_covered : CoveredBy scale carrier boxes small_3643652_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3643652_right_root small_3643652_right_fuel small_3643652_right_count small_3643652_right_encoded small_3643652_right_checked

theorem cover_3643652 : CoveredBy scale carrier boxes root_3643652 := by
  apply coveredBy_split_literal root_3643652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3643657 small_3643652_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3643657
  · exact small_3643652_right_covered
#print axioms cover_3643652

def root_3643651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3643651 : CoveredBy scale carrier boxes root_3643651 := by
  apply coveredBy_split_literal root_3643651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3643652 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1379.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3643652
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1379.covered
#print axioms cover_3643651

def root_3643646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643646_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3643646_right_fuel : Nat := 1
def small_3643646_right_count : Nat := 1
def small_3643646_right_encoded : String := "00000000"
theorem small_3643646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3643646_right_root small_3643646_right_fuel small_3643646_right_count small_3643646_right_encoded = true := by
  decide +kernel
theorem small_3643646_right_covered : CoveredBy scale carrier boxes small_3643646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3643646_right_root small_3643646_right_fuel small_3643646_right_count small_3643646_right_encoded small_3643646_right_checked

theorem cover_3643646 : CoveredBy scale carrier boxes root_3643646 := by
  apply coveredBy_split_literal root_3643646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3643651 small_3643646_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3643651
  · exact small_3643646_right_covered
#print axioms cover_3643646

def root_3654415 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3654415 : CoveredBy scale carrier boxes root_3654415 := by
  apply coveredBy_split_literal root_3654415 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1382.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1383.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1382.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1383.covered
#print axioms cover_3654415

def root_3654409 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3654409_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3654409_left_fuel : Nat := 1
def small_3654409_left_count : Nat := 1
def small_3654409_left_encoded : String := "00000001"
theorem small_3654409_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3654409_left_root small_3654409_left_fuel small_3654409_left_count small_3654409_left_encoded = true := by
  decide +kernel
theorem small_3654409_left_covered : CoveredBy scale carrier boxes small_3654409_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3654409_left_root small_3654409_left_fuel small_3654409_left_count small_3654409_left_encoded small_3654409_left_checked

theorem cover_3654409 : CoveredBy scale carrier boxes root_3654409 := by
  apply coveredBy_split_literal root_3654409 small_3654409_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3654415 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3654409_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3654415
#print axioms cover_3654409

def root_3653105 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3653105 : CoveredBy scale carrier boxes root_3653105 := by
  apply coveredBy_split_literal root_3653105 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1381.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3654409 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1381.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3654409
#print axioms cover_3653105

def root_3653100 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653100_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653100_right_fuel : Nat := 1
def small_3653100_right_count : Nat := 1
def small_3653100_right_encoded : String := "00000004"
theorem small_3653100_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653100_right_root small_3653100_right_fuel small_3653100_right_count small_3653100_right_encoded = true := by
  decide +kernel
theorem small_3653100_right_covered : CoveredBy scale carrier boxes small_3653100_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653100_right_root small_3653100_right_fuel small_3653100_right_count small_3653100_right_encoded small_3653100_right_checked

theorem cover_3653100 : CoveredBy scale carrier boxes root_3653100 := by
  apply coveredBy_split_literal root_3653100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3653105 small_3653100_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3653105
  · exact small_3653100_right_covered
#print axioms cover_3653100

def root_3653099 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3653099 : CoveredBy scale carrier boxes root_3653099 := by
  apply coveredBy_split_literal root_3653099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3653100 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1384.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3653100
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1384.covered
#print axioms cover_3653099

def root_3653093 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653093_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653093_left_fuel : Nat := 1
def small_3653093_left_count : Nat := 1
def small_3653093_left_encoded : String := "00000003"
theorem small_3653093_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653093_left_root small_3653093_left_fuel small_3653093_left_count small_3653093_left_encoded = true := by
  decide +kernel
theorem small_3653093_left_covered : CoveredBy scale carrier boxes small_3653093_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653093_left_root small_3653093_left_fuel small_3653093_left_count small_3653093_left_encoded small_3653093_left_checked

theorem cover_3653093 : CoveredBy scale carrier boxes root_3653093 := by
  apply coveredBy_split_literal root_3653093 small_3653093_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3653099 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3653093_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3653099
#print axioms cover_3653093

def root_3653092 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653092_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653092_right_fuel : Nat := 21
def small_3653092_right_count : Nat := 205
def small_3653092_right_encoded : String := "1151E8FD0A0000FE1152250908A91303120700F808A913050000000512073D0408A913090000000512073CFE00000004050000F6135D8101050000FC135D80FD0000000304548A0300000009000000090000000900000000135D450100000000050000FC135D80FD0000000304548A03000000051386ACF8000000010CFD9C050000000500000009135D44FD0000000500000003000000020000000112073CF80000000108A91305120701040000000208A913090000000512073CFE00000004050000F6135D81010000000500000000135D450100000000050000FC00000005135D44FD000000050000000312073D0408A91309120700FE050000F6135D8101050000FC135D80FD000000030CFD9C030F34D0F80CFD9C05000000050F350D040000000A00000002000000010F350CF8000000010000000A135D44FD0CFD9C03000000050F350CF800000001000000050000000300000000135D450100000000050000FC135D80FD000000030CFD9C03000000050F350CF8000000010CFD9C050000000500000006135D44FD00000005000000030000000412073CFE00000004050000F6135D8101050000FC135D80FD000000030CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020000000900000009135D44FD0CFD9C030F34D0F80000000900000001000000090000000300000000135D450100000000050000FC135D80FD000000030CFD9C030F34D0F80CFD9C050F34D10400000002000000050F350D040CFD9C090F34D0FE00000009000000040000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C0900000005000000090F350D040CFD9C090F34D0FE0C9A86F80000000600000008000000040F350CFE000000040000000800000002135D44FD0CFD9C030F34D0F80CFD9C050000000500000009000000010F350CF8000000010CFD9C050F34D10400000002000000090F350D040CFD9C090F34D0FE0C9A86F800000006000000080000000400000008000000020000000300000002000000041151E9090000000408A91303120700F8000000090000000112073CF80000000108A913051207010400000002000000090000000900000003"
theorem small_3653092_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653092_right_root small_3653092_right_fuel small_3653092_right_count small_3653092_right_encoded = true := by
  decide +kernel
theorem small_3653092_right_covered : CoveredBy scale carrier boxes small_3653092_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653092_right_root small_3653092_right_fuel small_3653092_right_count small_3653092_right_encoded small_3653092_right_checked

theorem cover_3653092 : CoveredBy scale carrier boxes root_3653092 := by
  apply coveredBy_split_literal root_3653092 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3653093 small_3653092_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3653093
  · exact small_3653092_right_covered
#print axioms cover_3653092

def root_3653087 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653087_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3653087_right_fuel : Nat := 1
def small_3653087_right_count : Nat := 1
def small_3653087_right_encoded : String := "00000002"
theorem small_3653087_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3653087_right_root small_3653087_right_fuel small_3653087_right_count small_3653087_right_encoded = true := by
  decide +kernel
theorem small_3653087_right_covered : CoveredBy scale carrier boxes small_3653087_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3653087_right_root small_3653087_right_fuel small_3653087_right_count small_3653087_right_encoded small_3653087_right_checked

theorem cover_3653087 : CoveredBy scale carrier boxes root_3653087 := by
  apply coveredBy_split_literal root_3653087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3653092 small_3653087_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3653092
  · exact small_3653087_right_covered
#print axioms cover_3653087

def root_3651895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3651895 : CoveredBy scale carrier boxes root_3651895 := by
  apply coveredBy_split_literal root_3651895 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1380.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3653087 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1380.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3653087
#print axioms cover_3651895

def root_3651890 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651890_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651890_right_fuel : Nat := 1
def small_3651890_right_count : Nat := 1
def small_3651890_right_encoded : String := "00000001"
theorem small_3651890_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3651890_right_root small_3651890_right_fuel small_3651890_right_count small_3651890_right_encoded = true := by
  decide +kernel
theorem small_3651890_right_covered : CoveredBy scale carrier boxes small_3651890_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3651890_right_root small_3651890_right_fuel small_3651890_right_count small_3651890_right_encoded small_3651890_right_checked

theorem cover_3651890 : CoveredBy scale carrier boxes root_3651890 := by
  apply coveredBy_split_literal root_3651890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3651895 small_3651890_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3651895
  · exact small_3651890_right_covered
#print axioms cover_3651890

def root_3651889 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651889_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651889_right_fuel : Nat := 31
def small_3651889_right_count : Nat := 485
def small_3651889_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC000000030000000A0000000A000000040000000A1151E8FD0A0000FE1152250908A913090000000800000008000000040000000800000003115225050A0000FC115224FD000000030A0000FE1152250908A91305120701040000000208A912FD12073CFC0000000308A91309120700FE050000F60000000A135D450100000000050000F80000000A0000000A0000000412073CFE00000004050000F6135D8101050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC000000030000000A0000000A1386AD040000000A00000002000000010000000A00000000135D450100000000050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A86FC000000070000000A0F34D0FC0CFD9C090000000A0F350CFE000000040000000A000000031386AD040CFD9BFD0F350CFC000000030CFD9C090000000A0F350CFE000000040C9A86FC0000000A0000000A0F34D0FC0000000A000000030000000200000001135D45030000000104548A0513867104000000020CFD9BFD000000070000000A1386AD040000000A00000002120700FC08A913090000000A12073CFE00000004050000F6135D8101050000F8135D81030000000A000000010000000A00000000135D450100000000050000F8135D810304548A051386710400000002045489FD0000000A0000000A0000000A000000010000000A0000000312073D0408A912FD12073CFC0000000308A91309120700FE050000F60000000A135D450100000000050000F80000000A0000000A0000000412073CFE00000004050000F6135D8101050000F8135D81030CFD9C050000000A0000000A000000010000000A00000000135D450100000000050000F8135D81030CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C090000000A0F350CFE00000004000000080000000A0F350D040CFD9BFD0F350CFC000000030000000A0000000A0000000200000001135D4503000000010CFD9C050000000A0000000A120700FC0000000A0000000300000002000000041151E9090000000408A91305120701040000000208A912FD12073CFC00000003050000F6135D8101050000F8000000090000000800000000135D450100000000050000F8135D8103050000FE135D810904548A0513867104000000020CFD9BFD000000090F34D0FC028000F60000000913D7B10100000000078000F800000009000000080000000300000009000000040000000800000001135D45030000000100000008120700FC050000F6135D8101050000F8135D8103050000FE135D810904548A051386710400000002045489FD1386ACFC00000003078000F600000009128A4101000000000000000A138670FC078000F6128A7D01078000F8128A7D030000000A000000010000000A00000000128A410100000000078000F8128A7D030000000A000000010000000A000000031386AD04045489FD0000000A000000050000000200000004135D45090000000404548A051386710400000002045489FD00000008000000050000000500000001135D450300000001050000FE0000000A0000000800000000135D450100000000050000F8135D8103050000FE135D810904548A051386710400000002045489FD1386ACFC00000003028000F613D7ED01078000F8128A7D03078000FE0000000A00000009000000010000000A0000000013D7B10100000000078000F8128A7D03078000FE128A7D09022A458513E1C50400000002067ECE7D000000070000000A0000000A0000000400000009000000010000000A000000050000000500000004135D45090000000404548A051386710400000002045489FD00000008000000050000000500000001135D450300000001050000FE0000000A000000080000000312073D0408A912FD12073CFC00000003050000F6000000080000000800000005000000021151E8FD0A0000FE1152250908A91305120701040000000208A91309120700FE000000050000000412073CFE00000004050000F6135D8101050000F8135D8103050000FC0000000A0000000A000000010000000A00000000135D450100000000050000F8135D8103050000FC135D80FD0000000304548A05000000051386AD040CFD9C09000000050F350CFE000000040000000800000002135D44FD04548A05000000051386AD040000000A000000020000000300000001135D450300000001050000FC135D80FD000000030000000A0000000A12073D0408A91309120700FE050000F60000000A135D450100000000050000F8135D8103050000FC000000060000000A00000001135D4503000000010000000A0000000412073CFE00000004050000F6135D8101050000F8135D8103050000FC000000080000000A000000010000000800000000135D450100000000050000F8135D8103050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C09000000080000000800000008135D44FD0CFD9C050000000A0000000800000003000000010000000800000002000000041151E9090000000408A91305120701040000000200000009000000080000000300000002"
theorem small_3651889_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3651889_right_root small_3651889_right_fuel small_3651889_right_count small_3651889_right_encoded = true := by
  decide +kernel
theorem small_3651889_right_covered : CoveredBy scale carrier boxes small_3651889_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3651889_right_root small_3651889_right_fuel small_3651889_right_count small_3651889_right_encoded small_3651889_right_checked

theorem cover_3651889 : CoveredBy scale carrier boxes root_3651889 := by
  apply coveredBy_split_literal root_3651889 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3651890 small_3651889_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3651890
  · exact small_3651889_right_covered
#print axioms cover_3651889

def root_3651883 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651883_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3651883_left_fuel : Nat := 1
def small_3651883_left_count : Nat := 1
def small_3651883_left_encoded : String := "00000000"
theorem small_3651883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3651883_left_root small_3651883_left_fuel small_3651883_left_count small_3651883_left_encoded = true := by
  decide +kernel
theorem small_3651883_left_covered : CoveredBy scale carrier boxes small_3651883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3651883_left_root small_3651883_left_fuel small_3651883_left_count small_3651883_left_encoded small_3651883_left_checked

theorem cover_3651883 : CoveredBy scale carrier boxes root_3651883 := by
  apply coveredBy_split_literal root_3651883 small_3651883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3651889 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3651883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3651889
#print axioms cover_3651883

def root_3643645 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3643645 : CoveredBy scale carrier boxes root_3643645 := by
  apply coveredBy_split_literal root_3643645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3643646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3651883 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3643646
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3651883
#print axioms cover_3643645

def root_3642265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642265 : CoveredBy scale carrier boxes root_3642265 := by
  apply coveredBy_split_literal root_3642265 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1376.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3643645 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1376.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3643645
#print axioms cover_3642265

def root_3660402 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3660402 : CoveredBy scale carrier boxes root_3660402 := by
  apply coveredBy_split_literal root_3660402 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1385.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1386.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1385.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1386.covered
#print axioms cover_3660402

def root_3642264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642264 : CoveredBy scale carrier boxes root_3642264 := by
  apply coveredBy_split_literal root_3642264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3642265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3660402 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3642265
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3660402
#print axioms cover_3642264

def root_3666507 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3666507 : CoveredBy scale carrier boxes root_3666507 := by
  apply coveredBy_split_literal root_3666507 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1388.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1389.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1388.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1389.covered
#print axioms cover_3666507

def root_3666501 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3666501_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3666501_left_fuel : Nat := 1
def small_3666501_left_count : Nat := 1
def small_3666501_left_encoded : String := "00000002"
theorem small_3666501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3666501_left_root small_3666501_left_fuel small_3666501_left_count small_3666501_left_encoded = true := by
  decide +kernel
theorem small_3666501_left_covered : CoveredBy scale carrier boxes small_3666501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3666501_left_root small_3666501_left_fuel small_3666501_left_count small_3666501_left_encoded small_3666501_left_checked

theorem cover_3666501 : CoveredBy scale carrier boxes root_3666501 := by
  apply coveredBy_split_literal root_3666501 small_3666501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3666507 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3666501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3666507
#print axioms cover_3666501

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258
