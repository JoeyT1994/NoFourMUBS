import TaoBundleAssembly0586
import TaoBundleChunkBatch0800
import TaoBundleChunkBatch0801
import TaoBundleChunkBatch0802
import TaoBundleChunkBatch0803
import TaoBundleChunkBatch0804
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587
def root_8550275 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550275_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550275_right_fuel : Nat := 28
def small_8550275_right_count : Nat := 339
def small_8550275_right_encoded : String := "1151E9090000000408A91301120701000000000008A91303120700F808A912FB12073CFA0000000208A913070000000512073CFC00000003050000FE135D810904548A011386710000000000000000051386AD0004548A03138670F80CFD9BFB000000050000000900000001000000090000000000000004135D45090000000404548A010000000500000009120700FA08A91307120700FC000000090000000312073CFC00000003050000FE135D810904548A01138671000000000004548A03138670F8045489FB1386ACFA000000020CFD9C07000000050F350CFC0000000300000005138670FA0CFD9C070F34D0FC078000FE128A7D09000000090000000400000005000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09022A45810000000513E20100022A458300000005000000090000000000000004128A41090000000400000006000000030F875107000000030000000600000002000000011386ACF800000001045489FB1386ACFA000000020CFD9C07000000090F350CFC000000030C9A86FC0000000A0F8751070000000300000006138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09000000090000000400000009000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE83000000060000000A13E20100067ECE8300000006000000090000000000000004128A41090000000400000006000000021386AD0004548A03138670F8045489FB1386ACFA000000020CFD9C07000000090F350CFC000000030C9A86FC0000000600000006138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09000000090000000400000007000000030F875107000000030000000600000002000000011386ACF800000001045489FB00000009000000090000000000000004135D45090000000404548A01138671000000000004548A03138670F8045489FB00000005138670FA0CFD9C07000000050F350CFC000000030000000600000002000000011386ACF800000001045489FB00000009000000091386AD0004548A03138670F800000009000000010000000900000000000000020000000112073CF80000000108A912FB12073CFA0000000208A913070000000912073CFC00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F80000000900000001000000091386AD0000000009000000000000000400000009120700FA08A91307120700FC000000090000000312073CFC00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F8045489FB00000009138670FA0CFD9C07000000090F350CFC000000030C9A86FC000000090F87510700000003078000FE128A7D09022A458113E1C500000000000AD3578310D100F800000009000000010000000900000009000000040000000900000002000000010F350CF800000001045489FB00000009000000091386AD000CFD9C030F34D0F80000000900000001000000090000000000000004135D45090000000404548A0113867100000000000CFD9C030F34D0F8000000090000000100000009000000090000000212073D0008A91303120700F808A912FB12073CFA0000000200000009120700FA08A913070000000912073CFC00000003050000FE135D81090CFD9C010F34D1000000000004548A03138670F8045489FB00000009000000090000000100000009000000090000000400000009000000020000000112073CF80000000108A912FB12073CFA0000000208A913070000000912073CFC00000003000000090000000900000000"
theorem small_8550275_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550275_right_root small_8550275_right_fuel small_8550275_right_count small_8550275_right_encoded = true := by
  decide +kernel
theorem small_8550275_right_covered : CoveredBy scale carrier boxes small_8550275_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550275_right_root small_8550275_right_fuel small_8550275_right_count small_8550275_right_encoded small_8550275_right_checked

theorem cover_8550275 : CoveredBy scale carrier boxes root_8550275 := by
  apply coveredBy_split_literal root_8550275 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8550276 small_8550275_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8550276
  · exact small_8550275_right_covered
#print axioms cover_8550275

def root_8550270 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550270_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550270_right_fuel : Nat := 1
def small_8550270_right_count : Nat := 1
def small_8550270_right_encoded : String := "00000003"
theorem small_8550270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550270_right_root small_8550270_right_fuel small_8550270_right_count small_8550270_right_encoded = true := by
  decide +kernel
theorem small_8550270_right_covered : CoveredBy scale carrier boxes small_8550270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550270_right_root small_8550270_right_fuel small_8550270_right_count small_8550270_right_encoded small_8550270_right_checked

theorem cover_8550270 : CoveredBy scale carrier boxes root_8550270 := by
  apply coveredBy_split_literal root_8550270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550275 small_8550270_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550275
  · exact small_8550270_right_covered
#print axioms cover_8550270

def root_8550269 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550269 : CoveredBy scale carrier boxes root_8550269 := by
  apply coveredBy_split_literal root_8550269 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550270 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3202.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550270
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3202.covered
#print axioms cover_8550269

def root_8550263 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550263_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550263_left_fuel : Nat := 1
def small_8550263_left_count : Nat := 1
def small_8550263_left_encoded : String := "00000002"
theorem small_8550263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550263_left_root small_8550263_left_fuel small_8550263_left_count small_8550263_left_encoded = true := by
  decide +kernel
theorem small_8550263_left_covered : CoveredBy scale carrier boxes small_8550263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550263_left_root small_8550263_left_fuel small_8550263_left_count small_8550263_left_encoded small_8550263_left_checked

theorem cover_8550263 : CoveredBy scale carrier boxes root_8550263 := by
  apply coveredBy_split_literal root_8550263 small_8550263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550269 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8550263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550269
#print axioms cover_8550263

def root_8550262 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550262_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550262_right_fuel : Nat := 21
def small_8550262_right_count : Nat := 167
def small_8550262_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A913030000000512073CF80000000108A913070000000512073CFC0000000308A913090000000512073CFE00000004050000FA135D80FB0000000204548A0100000005000000080000000512073D0008A91303120700F808A91307120700FC08A9130900000005000000090000000312073CFC0000000308A91309120700FE0000000800000004000000080000000112073CF80000000108A91307120700FC08A91309120700FE050000FA135D80FB000000020CFD9C01000000050F350D000CFD9C03000000050F350CF80000000104548A07000000050000000800000000000000050000000412073CFE00000004050000FA135D80FB000000020CFD9C01000000090F350D000000000900000000135D44FB0CFD9C01000000050F350D000000000900000000000000020000000312073CFC0000000308A91309120700FE000000080000000412073CFE00000004050000FA135D80FB000000020CFD9C010F34D10000000000000000080F350D000CFD9C030F34D0F800000008000000010000000800000000135D44FB0CFD9C010F34D1000000000000000008000000080000000200000000000000041151E9090000000408A91301120701000000000008A913030000000512073CF80000000108A913070000000512073CFC00000003050000FA000000090000000912073D0008A913030000000912073CF80000000108A913070000000912073CFC000000030000000900000000000000031151E907000000030A0000FE1152250908A9130112070100000000000000000812073D0008A91303120700F800000008000000010000000800000000000000041151E9090000000408A913010000000612073D00000000060000000000000002"
theorem small_8550262_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550262_right_root small_8550262_right_fuel small_8550262_right_count small_8550262_right_encoded = true := by
  decide +kernel
theorem small_8550262_right_covered : CoveredBy scale carrier boxes small_8550262_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550262_right_root small_8550262_right_fuel small_8550262_right_count small_8550262_right_encoded small_8550262_right_checked

theorem cover_8550262 : CoveredBy scale carrier boxes root_8550262 := by
  apply coveredBy_split_literal root_8550262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550263 small_8550262_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550263
  · exact small_8550262_right_covered
#print axioms cover_8550262

def root_8550257 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550257_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550257_right_fuel : Nat := 1
def small_8550257_right_count : Nat := 1
def small_8550257_right_encoded : String := "00000001"
theorem small_8550257_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550257_right_root small_8550257_right_fuel small_8550257_right_count small_8550257_right_encoded = true := by
  decide +kernel
theorem small_8550257_right_covered : CoveredBy scale carrier boxes small_8550257_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550257_right_root small_8550257_right_fuel small_8550257_right_count small_8550257_right_encoded small_8550257_right_checked

theorem cover_8550257 : CoveredBy scale carrier boxes root_8550257 := by
  apply coveredBy_split_literal root_8550257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550262 small_8550257_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550262
  · exact small_8550257_right_covered
#print axioms cover_8550257

def root_8557927 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8557927 : CoveredBy scale carrier boxes root_8557927 := by
  apply coveredBy_split_literal root_8557927 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3203.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3204.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3203.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3204.covered
#print axioms cover_8557927

def root_8557922 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557922_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557922_right_fuel : Nat := 1
def small_8557922_right_count : Nat := 1
def small_8557922_right_encoded : String := "00000004"
theorem small_8557922_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8557922_right_root small_8557922_right_fuel small_8557922_right_count small_8557922_right_encoded = true := by
  decide +kernel
theorem small_8557922_right_covered : CoveredBy scale carrier boxes small_8557922_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8557922_right_root small_8557922_right_fuel small_8557922_right_count small_8557922_right_encoded small_8557922_right_checked

theorem cover_8557922 : CoveredBy scale carrier boxes root_8557922 := by
  apply coveredBy_split_literal root_8557922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557927 small_8557922_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557927
  · exact small_8557922_right_covered
#print axioms cover_8557922

def root_8557921 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557921_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557921_right_fuel : Nat := 19
def small_8557921_right_count : Nat := 175
def small_8557921_right_encoded : String := "1151E9090000000408A91301120701000000000008A912FB12073CFA0000000208A91307120700FC050000F800000009135D450300000001050000FE00000009000000090000000312073CFC00000003050000F8135D8103050000FE135D810904548A0113867100000000000CFD9BFB0F350CFA0000000200000009000000091386AD000000000900000000000000040000000900000001135D450300000001050000FE135D810904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0000000A000000090F34D0FA0CFD9C07000000090F350CFC0000000300000009000000021386AD000CFD9BFB0F350CFA000000020CFD9C07000000090F350CFC000000030C9A86FA00000009000000090F34D0FA00000009000000020000000000000004135D45090000000404548A0113867100000000000CFD9BFB0000000A000000091386AD000000000900000000120700FA08A913070000000912073CFC00000003050000F8135D8103050000FE135D810900000009000000040000000900000001135D450300000001050000FE135D810904548A011386710000000000045489FB00000009000000090000000900000004000000090000000212073D0008A912FB12073CFA0000000208A91307120700FC050000F800000009135D450300000001050000FE00000009000000090000000312073CFC00000003050000F8135D8103050000FE135D81090CFD9C010000000900000009000000040000000900000001135D450300000001050000FE135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C07000000090F350CFC0000000300000006000000090F350D000CFD9BFB0F350CFA0000000200000009000000090000000000000004135D4509000000040CFD9C010000000900000009120700FA000000090000000200000000"
theorem small_8557921_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8557921_right_root small_8557921_right_fuel small_8557921_right_count small_8557921_right_encoded = true := by
  decide +kernel
theorem small_8557921_right_covered : CoveredBy scale carrier boxes small_8557921_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8557921_right_root small_8557921_right_fuel small_8557921_right_count small_8557921_right_encoded small_8557921_right_checked

theorem cover_8557921 : CoveredBy scale carrier boxes root_8557921 := by
  apply coveredBy_split_literal root_8557921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557922 small_8557921_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557922
  · exact small_8557921_right_covered
#print axioms cover_8557921

def root_8557916 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557916_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557916_right_fuel : Nat := 1
def small_8557916_right_count : Nat := 1
def small_8557916_right_encoded : String := "00000003"
theorem small_8557916_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8557916_right_root small_8557916_right_fuel small_8557916_right_count small_8557916_right_encoded = true := by
  decide +kernel
theorem small_8557916_right_covered : CoveredBy scale carrier boxes small_8557916_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8557916_right_root small_8557916_right_fuel small_8557916_right_count small_8557916_right_encoded small_8557916_right_checked

theorem cover_8557916 : CoveredBy scale carrier boxes root_8557916 := by
  apply coveredBy_split_literal root_8557916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557921 small_8557916_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557921
  · exact small_8557916_right_covered
#print axioms cover_8557916

def root_8557915 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8557915 : CoveredBy scale carrier boxes root_8557915 := by
  apply coveredBy_split_literal root_8557915 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557916 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3205.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557916
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3205.covered
#print axioms cover_8557915

def root_8557909 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557909_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557909_left_fuel : Nat := 1
def small_8557909_left_count : Nat := 1
def small_8557909_left_encoded : String := "00000002"
theorem small_8557909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8557909_left_root small_8557909_left_fuel small_8557909_left_count small_8557909_left_encoded = true := by
  decide +kernel
theorem small_8557909_left_covered : CoveredBy scale carrier boxes small_8557909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8557909_left_root small_8557909_left_fuel small_8557909_left_count small_8557909_left_encoded small_8557909_left_checked

theorem cover_8557909 : CoveredBy scale carrier boxes root_8557909 := by
  apply coveredBy_split_literal root_8557909 small_8557909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557915 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8557909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557915
#print axioms cover_8557909

def root_8557908 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557908_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557908_right_fuel : Nat := 25
def small_8557908_right_count : Nat := 339
def small_8557908_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A913070000000512073CFC0000000308A913090000000512073CFE00000004050000F8135D81030000000500000001135D450300000001050000FA00000005135D44FB000000050000000212073D0008A91307120700FC08A913090000000512073CFE00000004050000F8135D8103050000FA135D80FB000000020CFD9C010F34D10000000000000000050F350D0004548A07000000091386ACFC000000030CFD9C090F34D0FE00000009000000040000000900000000135D44FB0CFD9C01000000050F350D0004548A07000000051386ACFC0000000300000005000000000000000200000001135D450300000001050000FA135D80FB000000020CFD9C01000000050F350D000000000700000000135D44FB00000005000000020000000312073CFC0000000308A91309120700FE050000F8135D8103050000FA135D80FB000000020CFD9C010F34D1000000000000000005000000080000000800000001135D450300000001050000FA135D80FB000000020CFD9C01000000050F350D000CFD9C07000000050000000800000000135D44FB00000005000000020000000412073CFE00000004050000F8135D8103050000FA135D80FB000000020CFD9C010F34D10000000000000000080F350D000CFD9C070F34D0FC0CFD9C090F34D0FE000000080000000400000008000000030000000800000000135D44FB0CFD9C010F34D1000000000000000008000000080000000200000001135D450300000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000050F350CFC00000003000000080F350D000CFD9C070F34D0FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A8700000000070F878D010C9A86FE000000070000000600000000000000030F350CFC000000030CFD9C090F34D0FE00000008000000040000000800000000135D44FB0CFD9C010F34D100000000000CFD9C0700000005000000080F350D000CFD9C070F34D0FC0CFD9C09000000050F350CFE000000040C9A87000000000600000008000000030F350CFC0000000300000008000000000000000200000000000000041151E9090000000408A91301120701000000000008A91307120700FC000000050000000312073CFC00000003050000F8135D8103050000FA135D80FB00000002050000FE00000009000000090000000900000001135D450300000001050000FA135D80FB00000002050000FE135D810904548A01000000051386AD000CFD9C07000000050F350CFC00000003000000060000000000000004135D45090000000400000009135D44FB050000FE135D810904548A01000000051386AD000000000900000000000000040000000A0000000212073D0008A91307120700FC050000F800000009135D450300000001050000FA135D80FB00000002050000FE0000000700000009135D44FB050000FE0000000500000009000000020000000312073CFC00000003050000F8135D8103050000FA135D80FB00000002050000FE00000009000000060000000900000001135D450300000001050000FA135D80FB00000002050000FE135D81090CFD9C010F34D100000000000CFD9C070000000600000006000000060000000400000006135D44FB050000FE135D81090CFD9C01000000090000000600000004000000060000000200000000000000031151E907000000030A0000FE1152250908A9130112070100000000000000000812073D0008A91309120700FE00000008000000040000000800000000000000041151E9090000000408A913011207010000000000000000080000000600000002"
theorem small_8557908_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8557908_right_root small_8557908_right_fuel small_8557908_right_count small_8557908_right_encoded = true := by
  decide +kernel
theorem small_8557908_right_covered : CoveredBy scale carrier boxes small_8557908_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8557908_right_root small_8557908_right_fuel small_8557908_right_count small_8557908_right_encoded small_8557908_right_checked

theorem cover_8557908 : CoveredBy scale carrier boxes root_8557908 := by
  apply coveredBy_split_literal root_8557908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557909 small_8557908_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557909
  · exact small_8557908_right_covered
#print axioms cover_8557908

def root_8557902 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557902_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8557902_left_fuel : Nat := 1
def small_8557902_left_count : Nat := 1
def small_8557902_left_encoded : String := "00000001"
theorem small_8557902_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8557902_left_root small_8557902_left_fuel small_8557902_left_count small_8557902_left_encoded = true := by
  decide +kernel
theorem small_8557902_left_covered : CoveredBy scale carrier boxes small_8557902_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8557902_left_root small_8557902_left_fuel small_8557902_left_count small_8557902_left_encoded small_8557902_left_checked

theorem cover_8557902 : CoveredBy scale carrier boxes root_8557902 := by
  apply coveredBy_split_literal root_8557902 small_8557902_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557908 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8557902_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557908
#print axioms cover_8557902

def root_8550256 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550256 : CoveredBy scale carrier boxes root_8550256 := by
  apply coveredBy_split_literal root_8550256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8557902 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550257
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8557902
#print axioms cover_8550256

def root_8550251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550251_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550251_right_fuel : Nat := 1
def small_8550251_right_count : Nat := 1
def small_8550251_right_encoded : String := "00000000"
theorem small_8550251_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550251_right_root small_8550251_right_fuel small_8550251_right_count small_8550251_right_encoded = true := by
  decide +kernel
theorem small_8550251_right_covered : CoveredBy scale carrier boxes small_8550251_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550251_right_root small_8550251_right_fuel small_8550251_right_count small_8550251_right_encoded small_8550251_right_checked

theorem cover_8550251 : CoveredBy scale carrier boxes root_8550251 := by
  apply coveredBy_split_literal root_8550251 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550256 small_8550251_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550256
  · exact small_8550251_right_covered
#print axioms cover_8550251

def root_8548271 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8548271 : CoveredBy scale carrier boxes root_8548271 := by
  apply coveredBy_split_literal root_8548271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3198.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8550251 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3198.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8550251
#print axioms cover_8548271

def root_8538511 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538511 : CoveredBy scale carrier boxes root_8538511 := by
  apply coveredBy_split_literal root_8538511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8538512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8548271 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8538512
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8548271
#print axioms cover_8538511

def root_8565440 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8565440 : CoveredBy scale carrier boxes root_8565440 := by
  apply coveredBy_split_literal root_8565440 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3206.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3207.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3206.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3207.covered
#print axioms cover_8565440

def root_8538510 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538510 : CoveredBy scale carrier boxes root_8538510 := by
  apply coveredBy_split_literal root_8538510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8538511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8565440 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8538511
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8565440
#print axioms cover_8538510

def root_8529360 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529360 : CoveredBy scale carrier boxes root_8529360 := by
  apply coveredBy_split_literal root_8529360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8529361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8538510 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8529361
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8538510
#print axioms cover_8529360

def root_8574053 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8574053 : CoveredBy scale carrier boxes root_8574053 := by
  apply coveredBy_split_literal root_8574053 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3210.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3211.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3210.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3211.covered
#print axioms cover_8574053

def root_8574047 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8574047_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8574047_left_fuel : Nat := 1
def small_8574047_left_count : Nat := 1
def small_8574047_left_encoded : String := "00000000"
theorem small_8574047_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8574047_left_root small_8574047_left_fuel small_8574047_left_count small_8574047_left_encoded = true := by
  decide +kernel
theorem small_8574047_left_covered : CoveredBy scale carrier boxes small_8574047_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8574047_left_root small_8574047_left_fuel small_8574047_left_count small_8574047_left_encoded small_8574047_left_checked

theorem cover_8574047 : CoveredBy scale carrier boxes root_8574047 := by
  apply coveredBy_split_literal root_8574047 small_8574047_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8574053 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8574047_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8574053
#print axioms cover_8574047

def root_8578539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8578539 : CoveredBy scale carrier boxes root_8578539 := by
  apply coveredBy_split_literal root_8578539 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3212.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3213.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3212.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3213.covered
#print axioms cover_8578539

def root_8578534 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8578534_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8578534_right_fuel : Nat := 1
def small_8578534_right_count : Nat := 1
def small_8578534_right_encoded : String := "00000001"
theorem small_8578534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8578534_right_root small_8578534_right_fuel small_8578534_right_count small_8578534_right_encoded = true := by
  decide +kernel
theorem small_8578534_right_covered : CoveredBy scale carrier boxes small_8578534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8578534_right_root small_8578534_right_fuel small_8578534_right_count small_8578534_right_encoded small_8578534_right_checked

theorem cover_8578534 : CoveredBy scale carrier boxes root_8578534 := by
  apply coveredBy_split_literal root_8578534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8578539 small_8578534_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8578539
  · exact small_8578534_right_covered
#print axioms cover_8578534

def root_8584385 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584385_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584385_left_fuel : Nat := 23
def small_8584385_left_count : Nat := 147
def small_8584385_left_encoded : String := "120701000000000008A913091207010800000004050000F8135D8103050000FA135D80FB0000000205000106135D44FD04548A0100000009000000060000000300000009135D44FB05000106135D44FD04548A01000000071386AD0004548A09000000061386AD08078000F800000007128A410300000001028000FA0000000600000007000000040000000000000003135D80FD00000003000000070000000200000001135D450300000001050000FA135D80FB0000000205000106135D44FD04548A01000000091386AD0004548A090000000600000009000000000000000300000009135D44FB05000106135D44FD04548A01138671000000000004548A0900000007000000091386AD0004548A091386710800000004028000F800000006000000051386AD08028000F813D7ED03028000FA0000000913D7B0FB0280010613D7B0FD067ECE810000000712EA9500067ECE890000000600000009000000000000000300000005000000020000000113D7B10300000001028000FA0000000900000005000000040000000000000003000000050000000212073D08050000F8135D8103050000FA00000009135D44FB05000106135D44FD04548A01000000091386AD000CFD9C090F34D10800000004078000F8128A7D030000000900000001000000090F350D0800000009000000040000000000000003000000090000000200000001135D450300000001050000FA00000009135D44FB05000106135D44FD04548A01000000091386AD000CFD9C0900000009000000090000000000000003000000090000000200000004"
theorem small_8584385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8584385_left_root small_8584385_left_fuel small_8584385_left_count small_8584385_left_encoded = true := by
  decide +kernel
theorem small_8584385_left_covered : CoveredBy scale carrier boxes small_8584385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8584385_left_root small_8584385_left_fuel small_8584385_left_count small_8584385_left_encoded small_8584385_left_checked

theorem cover_8584385 : CoveredBy scale carrier boxes root_8584385 := by
  apply coveredBy_split_literal root_8584385 small_8584385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3214.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8584385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3214.covered
#print axioms cover_8584385

def root_8584380 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584380_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584380_right_fuel : Nat := 1
def small_8584380_right_count : Nat := 1
def small_8584380_right_encoded : String := "00000004"
theorem small_8584380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8584380_right_root small_8584380_right_fuel small_8584380_right_count small_8584380_right_encoded = true := by
  decide +kernel
theorem small_8584380_right_covered : CoveredBy scale carrier boxes small_8584380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8584380_right_root small_8584380_right_fuel small_8584380_right_count small_8584380_right_encoded small_8584380_right_checked

theorem cover_8584380 : CoveredBy scale carrier boxes root_8584380 := by
  apply coveredBy_split_literal root_8584380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8584385 small_8584380_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8584385
  · exact small_8584380_right_covered
#print axioms cover_8584380

def root_8584296 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584296_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584296_left_fuel : Nat := 13
def small_8584296_left_count : Nat := 39
def small_8584296_left_encoded : String := "1151E9090000000408A9130112070100000000000000000912073D00050000F8135D8103050000FA135D80FB00000002050001060000000500000009135D44FB05000106135D44FD0000000700000003135D80FD000000030500010800000009135D81090CFD9C010000000900000007000000040000000200000001135D450300000001050000FA00000007135D44FB000000070000000200000000"
theorem small_8584296_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8584296_left_root small_8584296_left_fuel small_8584296_left_count small_8584296_left_encoded = true := by
  decide +kernel
theorem small_8584296_left_covered : CoveredBy scale carrier boxes small_8584296_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8584296_left_root small_8584296_left_fuel small_8584296_left_count small_8584296_left_encoded small_8584296_left_checked

theorem cover_8584296 : CoveredBy scale carrier boxes root_8584296 := by
  apply coveredBy_split_literal root_8584296 small_8584296_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8584380 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8584296_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8584380
#print axioms cover_8584296

def root_8584291 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584291_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584291_right_fuel : Nat := 1
def small_8584291_right_count : Nat := 1
def small_8584291_right_encoded : String := "00000003"
theorem small_8584291_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8584291_right_root small_8584291_right_fuel small_8584291_right_count small_8584291_right_encoded = true := by
  decide +kernel
theorem small_8584291_right_covered : CoveredBy scale carrier boxes small_8584291_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8584291_right_root small_8584291_right_fuel small_8584291_right_count small_8584291_right_encoded small_8584291_right_checked

theorem cover_8584291 : CoveredBy scale carrier boxes root_8584291 := by
  apply coveredBy_split_literal root_8584291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.root_8584296 small_8584291_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587.cover_8584296
  · exact small_8584291_right_covered
#print axioms cover_8584291

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0587
