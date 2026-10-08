import TaoBundleAssembly0679
import TaoBundleChunkBatch0944
import TaoBundleChunkBatch0946
import TaoBundleChunkBatch0947
import TaoBundleChunkBatch0948
import TaoBundleChunkBatch0949
import TaoBundleChunkBatch0950
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680
def root_10094004 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094004_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10094004_right_fuel : Nat := 25
def small_10094004_right_count : Nat := 329
def small_10094004_right_encoded : String := "1151E8FF08A91303120701020000000108A91307120700FC0500010000000005135D8101050000FA00000005135D450500000002050000FE00000005135D44FF0000000600000004000000000000000312073CFC0000000305000100135D450100000000050000FA135D8105050000FE135D80FF0000000404548A0313867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000080F87510700000003000000081386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D07028001000000000700000007000000030000000700000001135D44FF04548A0313867102000000010CFD9C0700000005000000081386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D070280010000000007000000070000000300000007000000010000000400000002135D450500000002050000FE135D80FF0000000404548A03000000081386AD020CFD9C07000000070000000700000001135D44FF04548A03000000081386AD020CFD9C0700000007000000070000000100000004135D8101050000FA135D8105050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D070780010000000005128A7D010000000500000000000000030F8751070000000307800100128A410100000000078000FA0000000A00000007128A7D01078000FA128A7D05078000FE00000005000000070000000200000007000000001386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D07078001000000000700000006000000030000000700000001135D44FF04548A0313867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D0707800100128A41010000000000000008128A7D01078000FA00000005128A4105000000020000000800000000000000030F8751070000000307800100128A410100000000078000FA0000000A00000007128A7D01078000FA128A7D05028000FE0000000713D7B0FF022A45830000000800000007000000040000000200000007000000001386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D070780010000000007128A7D0100000006000000000000000300000007000000010000000400000002135D450500000002050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC00000008000000071386AD020CFD9C07000000070000000700000001135D44FF04548A0313867102000000010CFD9C070F34D0FC0000000800000003000000081386AD020CFD9C07000000070000000700000001000000040000000012073D0208A91307120700FC000000060000000312073CFC0000000305000100135D450100000000050000FA135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030000000700000007135D44FF0CFD9C030F34D102000000010CFD9C070000000700000007000000070000000400000002135D45050000000200000007135D8101050000FA135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C07000000060000000600000006135D44FF0CFD9C030F34D102000000010CFD9C07000000060F350CFC0000000300000007000000060000000400000002135D450500000002050000FE0000000700000007000000000000000100000004"
theorem small_10094004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10094004_right_root small_10094004_right_fuel small_10094004_right_count small_10094004_right_encoded = true := by
  decide +kernel
theorem small_10094004_right_covered : CoveredBy scale carrier boxes small_10094004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10094004_right_root small_10094004_right_fuel small_10094004_right_count small_10094004_right_encoded small_10094004_right_checked

theorem cover_10094004 : CoveredBy scale carrier boxes root_10094004 := by
  apply coveredBy_split_literal root_10094004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10094005 small_10094004_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10094005
  · exact small_10094004_right_covered
#print axioms cover_10094004

def root_10093999 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093999_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093999_right_fuel : Nat := 1
def small_10093999_right_count : Nat := 1
def small_10093999_right_encoded : String := "00000003"
theorem small_10093999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10093999_right_root small_10093999_right_fuel small_10093999_right_count small_10093999_right_encoded = true := by
  decide +kernel
theorem small_10093999_right_covered : CoveredBy scale carrier boxes small_10093999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10093999_right_root small_10093999_right_fuel small_10093999_right_count small_10093999_right_encoded small_10093999_right_checked

theorem cover_10093999 : CoveredBy scale carrier boxes root_10093999 := by
  apply coveredBy_split_literal root_10093999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10094004 small_10093999_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10094004
  · exact small_10093999_right_covered
#print axioms cover_10093999

def root_10093998 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10093998 : CoveredBy scale carrier boxes root_10093998 := by
  apply coveredBy_split_literal root_10093998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10093999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3784.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10093999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3784.covered
#print axioms cover_10093998

def root_10093992 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093992_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10093992_left_fuel : Nat := 1
def small_10093992_left_count : Nat := 1
def small_10093992_left_encoded : String := "00000002"
theorem small_10093992_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10093992_left_root small_10093992_left_fuel small_10093992_left_count small_10093992_left_encoded = true := by
  decide +kernel
theorem small_10093992_left_covered : CoveredBy scale carrier boxes small_10093992_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10093992_left_root small_10093992_left_fuel small_10093992_left_count small_10093992_left_encoded small_10093992_left_checked

theorem cover_10093992 : CoveredBy scale carrier boxes root_10093992 := by
  apply coveredBy_split_literal root_10093992 small_10093992_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10093998 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10093992_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10093998
#print axioms cover_10093992

def root_10070890 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10070890 : CoveredBy scale carrier boxes root_10070890 := by
  apply coveredBy_split_literal root_10070890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.root_10070891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10093992 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0679.cover_10070891
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10093992
#print axioms cover_10070890

def root_10070885 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070885_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070885_right_fuel : Nat := 1
def small_10070885_right_count : Nat := 1
def small_10070885_right_encoded : String := "00000001"
theorem small_10070885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070885_right_root small_10070885_right_fuel small_10070885_right_count small_10070885_right_encoded = true := by
  decide +kernel
theorem small_10070885_right_covered : CoveredBy scale carrier boxes small_10070885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070885_right_root small_10070885_right_fuel small_10070885_right_count small_10070885_right_encoded small_10070885_right_checked

theorem cover_10070885 : CoveredBy scale carrier boxes root_10070885 := by
  apply coveredBy_split_literal root_10070885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10070890 small_10070885_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10070890
  · exact small_10070885_right_covered
#print axioms cover_10070885

def root_10068961 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068961 : CoveredBy scale carrier boxes root_10068961 := by
  apply coveredBy_split_literal root_10068961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3774.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10070885 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3774.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10070885
#print axioms cover_10068961

def root_10068955 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10068955_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10068955_left_fuel : Nat := 1
def small_10068955_left_count : Nat := 1
def small_10068955_left_encoded : String := "00000000"
theorem small_10068955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10068955_left_root small_10068955_left_fuel small_10068955_left_count small_10068955_left_encoded = true := by
  decide +kernel
theorem small_10068955_left_covered : CoveredBy scale carrier boxes small_10068955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10068955_left_root small_10068955_left_fuel small_10068955_left_count small_10068955_left_encoded small_10068955_left_checked

theorem cover_10068955 : CoveredBy scale carrier boxes root_10068955 := by
  apply coveredBy_split_literal root_10068955 small_10068955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10068961 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10068955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10068961
#print axioms cover_10068955

def root_10101894 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10101894 : CoveredBy scale carrier boxes root_10101894 := by
  apply coveredBy_split_literal root_10101894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3785.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3786.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3785.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3786.covered
#print axioms cover_10101894

def root_10101889 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101889_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101889_right_fuel : Nat := 1
def small_10101889_right_count : Nat := 1
def small_10101889_right_encoded : String := "00000002"
theorem small_10101889_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101889_right_root small_10101889_right_fuel small_10101889_right_count small_10101889_right_encoded = true := by
  decide +kernel
theorem small_10101889_right_covered : CoveredBy scale carrier boxes small_10101889_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101889_right_root small_10101889_right_fuel small_10101889_right_count small_10101889_right_encoded small_10101889_right_checked

theorem cover_10101889 : CoveredBy scale carrier boxes root_10101889 := by
  apply coveredBy_split_literal root_10101889 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10101894 small_10101889_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10101894
  · exact small_10101889_right_covered
#print axioms cover_10101889

def root_10101888 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10101888 : CoveredBy scale carrier boxes root_10101888 := by
  apply coveredBy_split_literal root_10101888 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10101889 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3787.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10101889
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3787.covered
#print axioms cover_10101888

def root_10101883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101883_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101883_right_fuel : Nat := 1
def small_10101883_right_count : Nat := 1
def small_10101883_right_encoded : String := "00000001"
theorem small_10101883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101883_right_root small_10101883_right_fuel small_10101883_right_count small_10101883_right_encoded = true := by
  decide +kernel
theorem small_10101883_right_covered : CoveredBy scale carrier boxes small_10101883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101883_right_root small_10101883_right_fuel small_10101883_right_count small_10101883_right_encoded small_10101883_right_checked

theorem cover_10101883 : CoveredBy scale carrier boxes root_10101883 := by
  apply coveredBy_split_literal root_10101883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10101888 small_10101883_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10101888
  · exact small_10101883_right_covered
#print axioms cover_10101883

def root_10101193 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101193_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101193_left_fuel : Nat := 33
def small_10101193_left_count : Nat := 321
def small_10101193_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A91305120700FA00000006000000020000000612073D0008A91305120700FA08A913070000000612073CFC0000000308A912FF00000006120700FE0500010200000006135D81030CFD9C010F34D10000000000000000060F350D0004548A05138670FA0CFD9C07000000060000000600000002000000060000000000000001000000040000000212073CFA0000000208A913070000000612073CFC0000000308A912FF00000006120700FE0000000600000004000000001151E8FF0000000600000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A91305120700FA08A912FF00000006120700FE00000007000000040000000212073CFA000000020000000712073D0008A91305120700FA08A912FF12073CFE0000000405000102135D45030000000100000007135D8103050000FC135D81070CFD9C010F34D10000000000000000060F350D0004548A05138670FA0CFD9BFF000000060F34D0FE000000060000000400000002000000060000000000000003135D4507000000030000000700000001120700FE05000102135D450300000001050000FC135D81070CFD9C010F34D10000000000000000060F350D0004548A05138670FA045489FF00000006138670FE000000060000000400000002000000060000000000000003135D45070000000300000007135D8103050000FC135D81070CFD9C010F34D10000000000000000060F350D0004548A05138670FA045489FF1386ACFE000000040C9A87000F875101000000000780010200000006128A7D03078000FC00000006128A410700000003000000070000000100000006138670FE0C9A87000F8751010000000007800102128A410300000001078000FC00000006128A410700000003022A45850000000700000005128A7D03078000FC128A7D07022A458513E1C4FA022A457F0000000600000008000000020000000600000003128A410700000003022A458513E1C4FA022A457F00000009000000050000000200000005000000010F878D010780010200000006128A7D0300000009000000010000000000000004000000021386ACFA00000002045489FF00000006138670FE00000006000000040000000000000003135D4507000000030CFD9C01000000070F350D0004548A05138670FA045489FF00000007138670FE0C9A87000F875101000000000780010200000007128A7D03028000FC13D7ED07022A458500000009000000050000000300000007000000010F878D0100000007000000000000000400000002000000070000000000000001000000040000000212073CFA0000000208A912FF12073CFE000000040500010200000006135D8103050000FC000000060000000700000001120700FE05000102135D45030000000100000007135D8103050000FC135D81070CFD9C01000000060F350D000CFD9C050F34D0FA0000000600000002000000050000000000000003135D450700000003000000070000000100000004000000001151E8FF08A9130112070100000000000000000612073D0008A9130500000007000000060000000000000004000000021151E905000000020A0000FC115225070A0000FE000000061151E8FF0000000600000004000000031151E907000000030A0000FE115224FF0000000408A9130100000007000000071151E8FF0000000600000004"
theorem small_10101193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101193_left_root small_10101193_left_fuel small_10101193_left_count small_10101193_left_encoded = true := by
  decide +kernel
theorem small_10101193_left_covered : CoveredBy scale carrier boxes small_10101193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101193_left_root small_10101193_left_fuel small_10101193_left_count small_10101193_left_encoded small_10101193_left_checked

theorem cover_10101193 : CoveredBy scale carrier boxes root_10101193 := by
  apply coveredBy_split_literal root_10101193 small_10101193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10101883 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10101193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10101883
#print axioms cover_10101193

def root_10101188 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101188_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10101188_right_fuel : Nat := 1
def small_10101188_right_count : Nat := 1
def small_10101188_right_encoded : String := "00000000"
theorem small_10101188_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10101188_right_root small_10101188_right_fuel small_10101188_right_count small_10101188_right_encoded = true := by
  decide +kernel
theorem small_10101188_right_covered : CoveredBy scale carrier boxes small_10101188_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10101188_right_root small_10101188_right_fuel small_10101188_right_count small_10101188_right_encoded small_10101188_right_checked

theorem cover_10101188 : CoveredBy scale carrier boxes root_10101188 := by
  apply coveredBy_split_literal root_10101188 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10101193 small_10101188_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10101193
  · exact small_10101188_right_covered
#print axioms cover_10101188

def root_10068954 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068954 : CoveredBy scale carrier boxes root_10068954 := by
  apply coveredBy_split_literal root_10068954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10068955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10101188 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10068955
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10101188
#print axioms cover_10068954

def root_10109324 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10109324 : CoveredBy scale carrier boxes root_10109324 := by
  apply coveredBy_split_literal root_10109324 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3789.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3790.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3789.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3790.covered
#print axioms cover_10109324

def root_10109319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10109319_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10109319_right_fuel : Nat := 1
def small_10109319_right_count : Nat := 1
def small_10109319_right_encoded : String := "00000000"
theorem small_10109319_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10109319_right_root small_10109319_right_fuel small_10109319_right_count small_10109319_right_encoded = true := by
  decide +kernel
theorem small_10109319_right_covered : CoveredBy scale carrier boxes small_10109319_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10109319_right_root small_10109319_right_fuel small_10109319_right_count small_10109319_right_encoded small_10109319_right_checked

theorem cover_10109319 : CoveredBy scale carrier boxes root_10109319 := by
  apply coveredBy_split_literal root_10109319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10109324 small_10109319_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10109324
  · exact small_10109319_right_covered
#print axioms cover_10109319

def root_10107999 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10107999 : CoveredBy scale carrier boxes root_10107999 := by
  apply coveredBy_split_literal root_10107999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3788.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10109319 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3788.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10109319
#print axioms cover_10107999

def root_10068953 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068953 : CoveredBy scale carrier boxes root_10068953 := by
  apply coveredBy_split_literal root_10068953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10068954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10107999 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10068954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10107999
#print axioms cover_10068953

def root_10116405 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10116405 : CoveredBy scale carrier boxes root_10116405 := by
  apply coveredBy_split_literal root_10116405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3793.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3794.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3793.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3794.covered
#print axioms cover_10116405

def root_10116399 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10116399_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10116399_left_fuel : Nat := 1
def small_10116399_left_count : Nat := 1
def small_10116399_left_encoded : String := "00000004"
theorem small_10116399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10116399_left_root small_10116399_left_fuel small_10116399_left_count small_10116399_left_encoded = true := by
  decide +kernel
theorem small_10116399_left_covered : CoveredBy scale carrier boxes small_10116399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10116399_left_root small_10116399_left_fuel small_10116399_left_count small_10116399_left_encoded small_10116399_left_checked

theorem cover_10116399 : CoveredBy scale carrier boxes root_10116399 := by
  apply coveredBy_split_literal root_10116399 small_10116399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10116405 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10116399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10116405
#print axioms cover_10116399

def root_10113995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10113995 : CoveredBy scale carrier boxes root_10113995 := by
  apply coveredBy_split_literal root_10113995 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3792.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10116399 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3792.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10116399
#print axioms cover_10113995

def root_10113990 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113990_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113990_right_fuel : Nat := 1
def small_10113990_right_count : Nat := 1
def small_10113990_right_encoded : String := "00000003"
theorem small_10113990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113990_right_root small_10113990_right_fuel small_10113990_right_count small_10113990_right_encoded = true := by
  decide +kernel
theorem small_10113990_right_covered : CoveredBy scale carrier boxes small_10113990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113990_right_root small_10113990_right_fuel small_10113990_right_count small_10113990_right_encoded small_10113990_right_checked

theorem cover_10113990 : CoveredBy scale carrier boxes root_10113990 := by
  apply coveredBy_split_literal root_10113990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10113995 small_10113990_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10113995
  · exact small_10113990_right_covered
#print axioms cover_10113990

def root_10113989 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113989_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113989_right_fuel : Nat := 24
def small_10113989_right_count : Nat := 387
def small_10113989_right_encoded : String := "1151E907000000030A0001081151E8FF08A91303120701020000000108A91305120700FA050001000000000A135D8101050000FC0000000A0000000A000000000000000212073CFA00000002050001000000000A135D8101050000FC135D810705000108135D44FF04548A0313867102000000010000000A0000000A00000004135D80FF0000000404548A0313867102000000010CFD9C050F34D0FA0000000A000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001000000030000000A0000000012073D0208A91305120700FA050001000000000A135D8101050000FC135D81070500010800000008000000080000000300000008000000000000000212073CFA0000000205000100135D450100000000050000FC0000000A0000000A135D8101050000FC135D810705000108135D44FF0CFD9C030F34D102000000010000000A0F350D020CFD9C0500000007000000070000000100000004135D80FF000000040CFD9C030F34D102000000010CFD9C050000000A0000000A0F350D020CFD9C050F34D0FA00000008000000020000000A0000000100000003135D45070000000305000108135D44FF00000007000000040000000A000000000000000100000004115224FF0000000408A91303120701020000000108A91305120700FA08A912FF12073D0805000100135D450100000000050000FC0000000A0000000A135D8101050000FC135D810704548A03138671020000000104548A05000000061386ACFA000000020CFD9BFF0000000A000000061386AD0204548A05000000080000000A0000000100000003135D4507000000030000000800000000000000041207010800000004000000060000000212073CFA0000000208A912FF12073D0805000100135D450100000000050000FC135D810704548A0313867102000000010CFD9C05000000060F350CFA00000002000000061386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF0000000A000000060000000100000003135D45070000000304548A031386710200000001000000060000000A135D8101050000FC135D810704548A0313867102000000010CFD9C050F34D0FA0CFD9BFF0F350D080C9A870800000006000000060000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000006000000020000000600000004000000061386AD020CFD9C050F34D0FA0CFD9BFF0000000A0F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0000000A0F875105000000020C9A87080F8750FF0000000A0000000400000005000000040F34D10800000004000000050000000100000003135D45070000000304548A0313867102000000010CFD9C050F34D0FA0000000A000000020F350CFA00000002000000061386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020000000500000001000000000000000412070108000000040500010000000006135D8101050000FC00000006000000050000000012073D0208A91305120700FA08A912FF12073D0805000100135D4501000000000000000A0000000800000004000000080000000212073CFA0000000208A912FF12073D0805000100135D450100000000050000FC135D81070CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050000000A0000000A0000000100000003135D4507000000030CFD9C030F34D102000000010000000A0000000A135D8101050000FC135D81070CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9BFF0000000A00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0000000A0F875105000000020000000500000004000000050F350D020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A87020F87510300000001000000050000000A00000004000000050000000100000003135D4507000000030CFD9C030F34D102000000010CFD9C050F34D0FA0000000800000002000000050F350D0200000008000000010000000000000004120701080000000405000100000000090000000500000001"
theorem small_10113989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113989_right_root small_10113989_right_fuel small_10113989_right_count small_10113989_right_encoded = true := by
  decide +kernel
theorem small_10113989_right_covered : CoveredBy scale carrier boxes small_10113989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113989_right_root small_10113989_right_fuel small_10113989_right_count small_10113989_right_encoded small_10113989_right_checked

theorem cover_10113989 : CoveredBy scale carrier boxes root_10113989 := by
  apply coveredBy_split_literal root_10113989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10113990 small_10113989_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10113990
  · exact small_10113989_right_covered
#print axioms cover_10113989

def root_10113984 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113984_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113984_right_fuel : Nat := 1
def small_10113984_right_count : Nat := 1
def small_10113984_right_encoded : String := "00000002"
theorem small_10113984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113984_right_root small_10113984_right_fuel small_10113984_right_count small_10113984_right_encoded = true := by
  decide +kernel
theorem small_10113984_right_covered : CoveredBy scale carrier boxes small_10113984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113984_right_root small_10113984_right_fuel small_10113984_right_count small_10113984_right_encoded small_10113984_right_checked

theorem cover_10113984 : CoveredBy scale carrier boxes root_10113984 := by
  apply coveredBy_split_literal root_10113984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10113989 small_10113984_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10113989
  · exact small_10113984_right_covered
#print axioms cover_10113984

def root_10122217 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122217_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122217_right_fuel : Nat := 20
def small_10122217_right_count : Nat := 129
def small_10122217_right_encoded : String := "1151E907000000030A0001081151E8FF08A91303120701020000000105000100135D450100000000050000FA0000000A135D450500000002050000FC135D8107000000090000000300000007135D8101050000FA135D8105050000FC135D810705000108135D44FF04548A0313867102000000010000000A0000000700000004135D80FF0000000404548A031386710200000001078001000000000A128A7D01078000FA0000000A128A41050000000200000009000000001386AD02078001000000000A128A7D01078000FA0000000A000000050000000000000001000000030000000A00000002135D450500000002050000FC135D810705000108135D44FF0000000700000004135D80FF0000000404548A03000000090000000500000003000000070000000012073D020500010000000007135D8101050000FA135D8105050000FC135D810705000108000000070000000700000003000000070000000200000007000000000000000100000004115224FF0000000408A91303120701020000000108A912FF12073D0805000100135D45010000000000000009135D8101050000FA135D8105050000FC135D810704548A0300000006000000050000000300000005000000020000000500000000000000040000000512073D0208A912FF12073D0805000100135D4501000000000000000500000005000000040000000500000001"
theorem small_10122217_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10122217_right_root small_10122217_right_fuel small_10122217_right_count small_10122217_right_encoded = true := by
  decide +kernel
theorem small_10122217_right_covered : CoveredBy scale carrier boxes small_10122217_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10122217_right_root small_10122217_right_fuel small_10122217_right_count small_10122217_right_encoded small_10122217_right_checked

theorem cover_10122217 : CoveredBy scale carrier boxes root_10122217 := by
  apply coveredBy_split_literal root_10122217 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3795.root small_10122217_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3795.covered
  · exact small_10122217_right_covered
#print axioms cover_10122217

def root_10122211 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122211_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10122211_left_fuel : Nat := 1
def small_10122211_left_count : Nat := 1
def small_10122211_left_encoded : String := "00000002"
theorem small_10122211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10122211_left_root small_10122211_left_fuel small_10122211_left_count small_10122211_left_encoded = true := by
  decide +kernel
theorem small_10122211_left_covered : CoveredBy scale carrier boxes small_10122211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10122211_left_root small_10122211_left_fuel small_10122211_left_count small_10122211_left_encoded small_10122211_left_checked

theorem cover_10122211 : CoveredBy scale carrier boxes root_10122211 := by
  apply coveredBy_split_literal root_10122211 small_10122211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10122217 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10122211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10122217
#print axioms cover_10122211

def root_10113983 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10113983 : CoveredBy scale carrier boxes root_10113983 := by
  apply coveredBy_split_literal root_10113983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10113984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10122211 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10113984
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10122211
#print axioms cover_10113983

def root_10113978 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113978_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10113978_right_fuel : Nat := 1
def small_10113978_right_count : Nat := 1
def small_10113978_right_encoded : String := "00000001"
theorem small_10113978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10113978_right_root small_10113978_right_fuel small_10113978_right_count small_10113978_right_encoded = true := by
  decide +kernel
theorem small_10113978_right_covered : CoveredBy scale carrier boxes small_10113978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10113978_right_root small_10113978_right_fuel small_10113978_right_count small_10113978_right_encoded small_10113978_right_checked

theorem cover_10113978 : CoveredBy scale carrier boxes root_10113978 := by
  apply coveredBy_split_literal root_10113978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10113983 small_10113978_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10113983
  · exact small_10113978_right_covered
#print axioms cover_10113978

def root_10112568 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10112568 : CoveredBy scale carrier boxes root_10112568 := by
  apply coveredBy_split_literal root_10112568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3791.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10113978 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3791.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10113978
#print axioms cover_10112568

def root_10112562 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10112562_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10112562_left_fuel : Nat := 1
def small_10112562_left_count : Nat := 1
def small_10112562_left_encoded : String := "00000000"
theorem small_10112562_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10112562_left_root small_10112562_left_fuel small_10112562_left_count small_10112562_left_encoded = true := by
  decide +kernel
theorem small_10112562_left_covered : CoveredBy scale carrier boxes small_10112562_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10112562_left_root small_10112562_left_fuel small_10112562_left_count small_10112562_left_encoded small_10112562_left_checked

theorem cover_10112562 : CoveredBy scale carrier boxes root_10112562 := by
  apply coveredBy_split_literal root_10112562 small_10112562_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10112568 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10112562_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10112568
#print axioms cover_10112562

def root_10133583 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10133583 : CoveredBy scale carrier boxes root_10133583 := by
  apply coveredBy_split_literal root_10133583 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3799.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3800.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3799.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3800.covered
#print axioms cover_10133583

def root_10133577 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133577_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133577_left_fuel : Nat := 1
def small_10133577_left_count : Nat := 1
def small_10133577_left_encoded : String := "00000001"
theorem small_10133577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133577_left_root small_10133577_left_fuel small_10133577_left_count small_10133577_left_encoded = true := by
  decide +kernel
theorem small_10133577_left_covered : CoveredBy scale carrier boxes small_10133577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133577_left_root small_10133577_left_fuel small_10133577_left_count small_10133577_left_encoded small_10133577_left_checked

theorem cover_10133577 : CoveredBy scale carrier boxes root_10133577 := by
  apply coveredBy_split_literal root_10133577 small_10133577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10133583 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_10133577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10133583
#print axioms cover_10133577

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680
