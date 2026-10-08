import TaoBundleAssembly0205
import TaoBundleChunkBatch0800
import TaoBundleChunkBatch0801
import TaoBundleChunkBatch0802
import TaoBundleChunkBatch0803
import TaoBundleChunkBatch0804
import TaoBundleChunkBatch0805
import TaoBundleChunkBatch0806
import TaoBundleChunkBatch0807
import TaoBundleChunkBatch0808
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206
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
  apply coveredBy_split_literal root_8550262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550263 small_8550262_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550263
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
  apply coveredBy_split_literal root_8550257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8550262 small_8550257_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8550262
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
  apply coveredBy_split_literal root_8557922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557927 small_8557922_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557927
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
  apply coveredBy_split_literal root_8557921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557922 small_8557921_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557922
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
  apply coveredBy_split_literal root_8557916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557921 small_8557916_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557921
  · exact small_8557916_right_covered
#print axioms cover_8557916

def root_8557915 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8557915 : CoveredBy scale carrier boxes root_8557915 := by
  apply coveredBy_split_literal root_8557915 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557916 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3205.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557916
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
  apply coveredBy_split_literal root_8557909 small_8557909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557915 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8557909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557915
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
  apply coveredBy_split_literal root_8557908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557909 small_8557908_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557909
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
  apply coveredBy_split_literal root_8557902 small_8557902_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557908 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8557902_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557908
#print axioms cover_8557902

def root_8550256 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550256 : CoveredBy scale carrier boxes root_8550256 := by
  apply coveredBy_split_literal root_8550256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8550257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8557902 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8550257
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8557902
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
  apply coveredBy_split_literal root_8550251 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8550256 small_8550251_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8550256
  · exact small_8550251_right_covered
#print axioms cover_8550251

def root_8548271 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8548271 : CoveredBy scale carrier boxes root_8548271 := by
  apply coveredBy_split_literal root_8548271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3198.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8550251 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3198.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8550251
#print axioms cover_8548271

def root_8538511 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538511 : CoveredBy scale carrier boxes root_8538511 := by
  apply coveredBy_split_literal root_8538511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8538512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8548271 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8538512
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8548271
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
  apply coveredBy_split_literal root_8538510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8538511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8565440 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8538511
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8565440
#print axioms cover_8538510

def root_8529360 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529360 : CoveredBy scale carrier boxes root_8529360 := by
  apply coveredBy_split_literal root_8529360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8529361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8538510 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8529361
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8538510
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
  apply coveredBy_split_literal root_8574047 small_8574047_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8574053 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8574047_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8574053
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
  apply coveredBy_split_literal root_8578534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8578539 small_8578534_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8578539
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
  apply coveredBy_split_literal root_8584380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8584385 small_8584380_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8584385
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
  apply coveredBy_split_literal root_8584296 small_8584296_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8584380 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8584296_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8584380
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
  apply coveredBy_split_literal root_8584291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8584296 small_8584291_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8584296
  · exact small_8584291_right_covered
#print axioms cover_8584291

def root_8584290 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584290_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584290_right_fuel : Nat := 29
def small_8584290_right_count : Nat := 351
def small_8584290_right_encoded : String := "115224FD000000030A0001081151E9090000000408A9130112070100000000000000000912073D0008A912FD12073D06050000F8135D8103050000FA00000009135D44FB000000090000000200000001000000090000000300000009000000001152250908A91301120701000000000008A912FD12073D0608A913091207010800000004050000F8000000090000000500000009000000030000000912073D0008A912FD12073D0608A913091207010800000004050000F8135D8103050000FA135D80FB000000020CFD9C010F34D10000000000000000090F350D000CFD9BFD000000060F34D106000000030000000600000000135D44FB0CFD9C010F34D100000000000CFD9BFD0F350D0604548A09000000071386AD080C9A870600000007000000050000000400000003000000070F350D000CFD9BFD0F350D0604548A09000000061386AD080C9A87000F87510100000000000000060F878D010C9A87060F8750FD0000000600000003000000060000000000000004000000030F34D1060000000304548A09000000061386AD080C9A87000F87510100000000000000060000000500000004000000000000000200000001135D450300000001050000FA135D80FB000000020CFD9C010F34D10000000000000000090F350D000CFD9BFD0F350D0604548A09000000061386AD080C9A87000F875101000000000000000A0000000900000004000000030F34D106000000030000000900000000135D44FB0CFD9C010F34D10000000000000000050F350D000CFD9BFD0F350D0604548A091386710800000004000000051386AD080C9A87000F875101000000000000000A0000000500000004000000030F34D1060000000300000005000000000000000212073D08050000F8135D8103050000FA135D80FB000000020CFD9C010F34D10000000000000000090F350D000CFD9BFD0F350D060CFD9C090F34D108000000040C9A87000F875101000000000C9A87060F8750FD000000060000000300000006000000090F350D080000000900000004000000030000000900000000135D44FB0CFD9C010F34D100000000000CFD9BFD0F350D060CFD9C09000000090000000900000003000000090F350D000CFD9BFD0F350D060CFD9C090F34D108000000040C9A87000F875101000000000C9A87060F8750FD078000F8128A7D0300000006000000010000000A000000030F878CFD00000003078000F8128A7D030000000A000000010000000A0F878D010C9A87060F8750FD078000F8128A7D03028000FA0000000613D7B0FB0AD3578900000006000000090000000200000001128A410300000001028000FA0000000913D7B0FB0000000900000002000000030F878CFD0000000300000009000000000F350D080C9A87000F875101000000000C9A87060F8750FD0C9A8708000000090F878D09078000F8128A7D030000000A000000010000000900000004000000030F878CFD00000003000000090F878D01000000090000000000000004000000030F34D106000000030CFD9C090000000900000009000000000000000200000001135D450300000001050000FA135D80FB000000020CFD9C01000000090F350D000CFD9BFD0F350D060CFD9C090000000900000009000000030000000900000000135D44FB0CFD9C010F34D10000000000000000090F350D000CFD9BFD0F350D060CFD9C090F34D108000000040C9A87000F875101000000000000000A0F878D010C9A87060F8750FD0000000A0000000300000005000000000F350D080C9A87000F875101000000000000000A0000000900000004000000030F34D106000000030000000900000000000000020000000400000003120701060000000308A913091207010800000004050000F8135D810300000009000000010000000512073D0800000009000000040000000000000004"
theorem small_8584290_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8584290_right_root small_8584290_right_fuel small_8584290_right_count small_8584290_right_encoded = true := by
  decide +kernel
theorem small_8584290_right_covered : CoveredBy scale carrier boxes small_8584290_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8584290_right_root small_8584290_right_fuel small_8584290_right_count small_8584290_right_encoded small_8584290_right_checked

theorem cover_8584290 : CoveredBy scale carrier boxes root_8584290 := by
  apply coveredBy_split_literal root_8584290 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8584291 small_8584290_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8584291
  · exact small_8584290_right_covered
#print axioms cover_8584290

def root_8584285 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584285_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8584285_right_fuel : Nat := 1
def small_8584285_right_count : Nat := 1
def small_8584285_right_encoded : String := "00000002"
theorem small_8584285_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8584285_right_root small_8584285_right_fuel small_8584285_right_count small_8584285_right_encoded = true := by
  decide +kernel
theorem small_8584285_right_covered : CoveredBy scale carrier boxes small_8584285_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8584285_right_root small_8584285_right_fuel small_8584285_right_count small_8584285_right_encoded small_8584285_right_checked

theorem cover_8584285 : CoveredBy scale carrier boxes root_8584285 := by
  apply coveredBy_split_literal root_8584285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8584290 small_8584285_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8584290
  · exact small_8584285_right_covered
#print axioms cover_8584285

def root_8583255 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8583255_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8583255_left_fuel : Nat := 24
def small_8583255_left_count : Nat := 473
def small_8583255_left_encoded : String := "115224FB000000020A0001061151E8FD0A0001081151E9090000000408A91301120701000000000008A912FB00000009120700FA000000090000000212073D0008A912FB12073CFA00000002050000F8135D81030500010600000005135D80FD000000030500010800000005135D810900000009000000040000000100000009120700FA050000F8135D810305000106135D44FD00000005000000030000000A000000010000000A00000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913091207010800000004050000F8000000090000000900000009120700FA000000090000000212073D0008A912FB12073CFA0000000208A913091207010800000004050000F8135D810305000106135D44FD00000006000000030000000600000001135D45030000000105000106135D44FD0CFD9C010F34D10000000000000000060000000600000003135D80FD000000030CFD9C010F34D10000000000000000060000000612073D08050000F8135D810305000106135D44FD0CFD9C010F34D100000000000CFD9BFB00000009000000090F350D000CFD9BFB000000050F34D0FA00000005000000020000000000000003135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350CFA000000020CFD9C090F34D10800000004000000060F350D0800000009000000040F34D0FA00000009000000020000000000000001135D45030000000105000106135D44FD0CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040C9A87000F87510100000000000000070F878D010000000900000000000000070F34D0FA00000009000000020000000000000003135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350CFA000000020CFD9C0900000009000000090F34D0FA00000009000000020000000000000004120700FA08A9130912070108000000040000000612073D08050000F8135D810305000106135D44FD0CFD9C01000000050000000600000003135D80FD000000030CFD9C010F34D10000000000000000060000000600000001135D450300000001000000090000000400000002000000000000000400000003115224FD000000030A0001081151E9090000000408A91301120701000000000008A912FB12073CFA0000000208A912FD12073D06000000090000000300000009120700FA08A912FD12073D06050000F8135D81030500010800000008135D810904548A0100000008000000080000000400000001135D45030000000100000009000000031207010600000003050000F800000008000000080000000212073D0008A912FB12073CFA0000000208A912FD12073D06050000F8135D810305000108135D4509000000040CFD9C010000000900000009135D81090CFD9C010F34D10000000000000000090F350D000CFD9BFB000000090F34D0FA0000000900000002000000000000000400000001135D45030000000100000009000000031207010600000003050000F8135D8103000000090000000100000009120700FA08A912FD12073D06050000F8135D81030000000A000000010000000A000000031207010600000003050000F8135D8103050001080000000A135D81090CFD9C010F34D1000000000000000008000000090000000400000001135D4503000000010000000900000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A912FD12073D06000000090000000300000009120700FA08A912FD12073D0608A913090000000912073D08050000F8135D810304548A011386710000000000000000090000000900000001000000090000000400000003000000090000000212073D0008A912FB12073CFA0000000208A912FD12073D0608A913091207010800000004050000F8135D81030CFD9C01000000090F350D000CFD9BFB00000006000000060000000000000001135D4503000000010CFD9C01000000090F350D000CFD9BFB00000009000000090000000012073D08050000F8135D81030CFD9C010F34D10000000000000000090F350D000CFD9BFB000000090F34D0FA00000009000000020000000000000001135D450300000001000000090000000400000003120701060000000308A913090000000912073D080000000900000004120700FA08A912FD12073D0608A9130912070108000000040000000912073D08050000F8135D81030CFD9C010F34D10000000000045489FB00000009138670FA0CFD9BFD0000000600000009000000020F350D00045489FB1386ACFA000000020CFD9BFD0F350D06000000060000000300000009138670FA0CFD9BFD000000060F34D1060000000300000006000000020000000000000001135D4503000000010CFD9C010F34D1000000000000000009000000090000000400000003120701060000000308A913090000000912073D08050000F8135D81030CFD9C010F34D10000000000000000090F350D00045489FB00000009138670FA000000090000000200000000000000010000000900000004000000020000000000000004"
theorem small_8583255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8583255_left_root small_8583255_left_fuel small_8583255_left_count small_8583255_left_encoded = true := by
  decide +kernel
theorem small_8583255_left_covered : CoveredBy scale carrier boxes small_8583255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8583255_left_root small_8583255_left_fuel small_8583255_left_count small_8583255_left_encoded small_8583255_left_checked

theorem cover_8583255 : CoveredBy scale carrier boxes root_8583255 := by
  apply coveredBy_split_literal root_8583255 small_8583255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8584285 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8583255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8584285
#print axioms cover_8583255

def root_8583249 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8583249_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8583249_left_fuel : Nat := 1
def small_8583249_left_count : Nat := 1
def small_8583249_left_encoded : String := "00000001"
theorem small_8583249_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8583249_left_root small_8583249_left_fuel small_8583249_left_count small_8583249_left_encoded = true := by
  decide +kernel
theorem small_8583249_left_covered : CoveredBy scale carrier boxes small_8583249_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8583249_left_root small_8583249_left_fuel small_8583249_left_count small_8583249_left_encoded small_8583249_left_checked

theorem cover_8583249 : CoveredBy scale carrier boxes root_8583249 := by
  apply coveredBy_split_literal root_8583249 small_8583249_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8583255 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8583249_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8583255
#print axioms cover_8583249

def root_8578533 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8578533 : CoveredBy scale carrier boxes root_8578533 := by
  apply coveredBy_split_literal root_8578533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8578534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8583249 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8578534
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8583249
#print axioms cover_8578533

def root_8578528 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8578528_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8578528_right_fuel : Nat := 1
def small_8578528_right_count : Nat := 1
def small_8578528_right_encoded : String := "00000000"
theorem small_8578528_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8578528_right_root small_8578528_right_fuel small_8578528_right_count small_8578528_right_encoded = true := by
  decide +kernel
theorem small_8578528_right_covered : CoveredBy scale carrier boxes small_8578528_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8578528_right_root small_8578528_right_fuel small_8578528_right_count small_8578528_right_encoded small_8578528_right_checked

theorem cover_8578528 : CoveredBy scale carrier boxes root_8578528 := by
  apply coveredBy_split_literal root_8578528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8578533 small_8578528_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8578533
  · exact small_8578528_right_covered
#print axioms cover_8578528

def root_8574046 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8574046 : CoveredBy scale carrier boxes root_8574046 := by
  apply coveredBy_split_literal root_8574046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8574047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8578528 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8574047
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8578528
#print axioms cover_8574046

def root_8571858 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8571858 : CoveredBy scale carrier boxes root_8571858 := by
  apply coveredBy_split_literal root_8571858 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3209.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8574046 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3209.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8574046
#print axioms cover_8571858

def root_8569678 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8569678 : CoveredBy scale carrier boxes root_8569678 := by
  apply coveredBy_split_literal root_8569678 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3208.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8571858 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3208.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8571858
#print axioms cover_8569678

def root_8588496 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8588496 : CoveredBy scale carrier boxes root_8588496 := by
  apply coveredBy_split_literal root_8588496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3215.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3216.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3215.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3216.covered
#print axioms cover_8588496

def root_8598716 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8598716_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8598716_left_fuel : Nat := 24
def small_8598716_left_count : Nat := 391
def small_8598716_left_encoded : String := "1151E9090000000408A91301120701000000000008A91303120700F808A912FB12073CFA0000000208A9130712070106000000030000000800000008120700FA08A9130712070106000000030500010800000008135D810904548A0100000007000000080000000412073D0605000108135D45090000000400000008135D810904548A01138671000000000004548A03138670F8045489FB00000008138670FA0CFD9C070F34D10600000003000000080000000800000002000000011386ACF800000001045489FB00000008138670FA0CFD9C070F34D106000000030000000700000008000000021386AD0004548A03138670F8045489FB00000008138670FA0CFD9C070F34D10600000003000000080000000800000002000000011386ACF800000001045489FB00000008138670FA0CFD9C070F34D10600000003000000070000000800000002000000000000000400000003000000020000000112073CF80000000108A912FB12073CFA0000000208A9130712070106000000030000000800000008120700FA08A9130712070106000000030500010800000007135D8109000000070000000412073D0605000108135D45090000000404548A0113867100000000000000000800000008135D810904548A0113867100000000000CFD9C030F34D0F8045489FB000000070000000700000001000000071386AD000CFD9C030F34D0F8045489FB00000008138670FA0CFD9C07000000080000000800000002000000010F350CF800000001045489FB00000008138670FA0CFD9C070000000700000007000000020000000000000004000000030000000212073D0008A91303120700F808A912FB12073CFA0000000208A9130712070106000000030000000800000008120700FA08A91307120701060000000305000108135D45090000000400000008135D81090CFD9C010F34D1000000000004548A03138670F80000000800000001000000080F350D0004548A030000000A1386ACF800000001045489FB000000080000000A000000000000000412073D0605000108135D4509000000040CFD9C010F34D100000000000000000800000008135D81090CFD9C010F34D1000000000004548A03138670F8045489FB00000008138670FA0CFD9C070F34D10600000003000000080000000800000002000000011386ACF800000001045489FB00000008138670FA0CFD9C070F34D106000000030000000800000008000000020F350D0004548A03138670F8045489FB00000008138670FA0CFD9C070F34D10600000003000000080F350D060C9A87000F875101000000000C9A87060F875107000000030000000800000008000000080000000300000002000000011386ACF800000001045489FB00000008138670FA0CFD9C070F34D10600000003000000080F350D060C9A87000F8751010000000000000008000000080000000300000002000000000000000400000003000000020000000112073CF80000000108A912FB12073CFA0000000208A9130712070106000000030000000812073D060500010800000008135D81090CFD9C010F34D1000000000000000008000000080000000400000003120700FA08A91307120701060000000305000108135D4509000000040CFD9C010F34D100000000000000000800000008135D81090CFD9C010F34D100000000000CFD9C030F34D0F80000000800000001000000080F350D000CFD9C030F34D0F8045489FB000000080000000A000000010F350CF800000001045489FB00000008138670FA04548A070000000A0000000700000002000000000000000412073D0605000108135D4509000000040CFD9C010F34D100000000000CFD9C030F34D0F80000000800000001000000080F350D000CFD9C030F34D0F800000008000000010F350CF800000001045489FB000000080000000500000000135D81090CFD9C010F34D100000000000CFD9C030F34D0F8045489FB00000008138670FA0CFD9C070F34D10600000003000000070000000800000002000000010F350CF800000001000000090F350D000CFD9C030F34D0F8045489FB00000008138670FA0CFD9C070F34D10600000003000000080F350D0600000009000000030000000200000001000000090000000000000004000000030000000200000000"
theorem small_8598716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8598716_left_root small_8598716_left_fuel small_8598716_left_count small_8598716_left_encoded = true := by
  decide +kernel
theorem small_8598716_left_covered : CoveredBy scale carrier boxes small_8598716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8598716_left_root small_8598716_left_fuel small_8598716_left_count small_8598716_left_encoded small_8598716_left_checked

theorem cover_8598716 : CoveredBy scale carrier boxes root_8598716 := by
  apply coveredBy_split_literal root_8598716 small_8598716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3220.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8598716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3220.covered
#print axioms cover_8598716

def root_8598711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8598711_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8598711_right_fuel : Nat := 1
def small_8598711_right_count : Nat := 1
def small_8598711_right_encoded : String := "00000003"
theorem small_8598711_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8598711_right_root small_8598711_right_fuel small_8598711_right_count small_8598711_right_encoded = true := by
  decide +kernel
theorem small_8598711_right_covered : CoveredBy scale carrier boxes small_8598711_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8598711_right_root small_8598711_right_fuel small_8598711_right_count small_8598711_right_encoded small_8598711_right_checked

theorem cover_8598711 : CoveredBy scale carrier boxes root_8598711 := by
  apply coveredBy_split_literal root_8598711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8598716 small_8598711_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8598716
  · exact small_8598711_right_covered
#print axioms cover_8598711

def root_8597325 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8597325 : CoveredBy scale carrier boxes root_8597325 := by
  apply coveredBy_split_literal root_8597325 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3219.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8598711 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3219.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8598711
#print axioms cover_8597325

def root_8597319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597319_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597319_left_fuel : Nat := 1
def small_8597319_left_count : Nat := 1
def small_8597319_left_encoded : String := "00000002"
theorem small_8597319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597319_left_root small_8597319_left_fuel small_8597319_left_count small_8597319_left_encoded = true := by
  decide +kernel
theorem small_8597319_left_covered : CoveredBy scale carrier boxes small_8597319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597319_left_root small_8597319_left_fuel small_8597319_left_count small_8597319_left_encoded small_8597319_left_checked

theorem cover_8597319 : CoveredBy scale carrier boxes root_8597319 := by
  apply coveredBy_split_literal root_8597319 small_8597319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8597325 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8597319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8597325
#print axioms cover_8597319

def root_8597318 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597318_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597318_right_fuel : Nat := 15
def small_8597318_right_count : Nat := 93
def small_8597318_right_encoded : String := "1151E8FB0A0001061151E907000000030A0001081151E9090000000408A91301120701000000000000000008000000091152250908A91301120701000000000008A91303120700F800000009000000010000000912073D0008A913030000000912073CF80000000108A91309120701080000000400000009000000090000000000000004115225070A0001081151E9090000000408A9130112070100000000000000000812073D0008A91303120700F8000000080000000100000008000000001152250908A91301120701000000000008A91303120700F808A9130712070106000000030000000712073D060000000900000003000000010000000912073D0008A91303120700F808A91307120701060000000308A913090000000712073D080000000800000004000000090000000112073CF80000000108A91307120701060000000308A913090000000712073D08050000FA0000000900000007000000040000000900000000000000040000000300000002"
theorem small_8597318_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597318_right_root small_8597318_right_fuel small_8597318_right_count small_8597318_right_encoded = true := by
  decide +kernel
theorem small_8597318_right_covered : CoveredBy scale carrier boxes small_8597318_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597318_right_root small_8597318_right_fuel small_8597318_right_count small_8597318_right_encoded small_8597318_right_checked

theorem cover_8597318 : CoveredBy scale carrier boxes root_8597318 := by
  apply coveredBy_split_literal root_8597318 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8597319 small_8597318_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8597319
  · exact small_8597318_right_covered
#print axioms cover_8597318

def root_8597313 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597313_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597313_right_fuel : Nat := 1
def small_8597313_right_count : Nat := 1
def small_8597313_right_encoded : String := "00000001"
theorem small_8597313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597313_right_root small_8597313_right_fuel small_8597313_right_count small_8597313_right_encoded = true := by
  decide +kernel
theorem small_8597313_right_covered : CoveredBy scale carrier boxes small_8597313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597313_right_root small_8597313_right_fuel small_8597313_right_count small_8597313_right_encoded small_8597313_right_checked

theorem cover_8597313 : CoveredBy scale carrier boxes root_8597313 := by
  apply coveredBy_split_literal root_8597313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8597318 small_8597313_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8597318
  · exact small_8597313_right_covered
#print axioms cover_8597313

def root_8597312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597312_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597312_right_fuel : Nat := 20
def small_8597312_right_count : Nat := 265
def small_8597312_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E907000000030A0001081151E9090000000408A91301120701000000000008A912FB12073CFA0000000200000006120700FA050000F8135D810305000106135D45070000000300000006135D81070500010800000006000000060000000300000001000000060000000212073D0008A912FB0000000900000005000000001152250908A91301120701000000000008A912FB0000000A120700FA08A9130900000009000000090000000212073D0008A912FB12073CFA0000000208A9130912070108000000040000000A00000009120700FA00000009000000020000000000000004115225070A0001081151E9090000000408A91301120701000000000008A912FB12073CFA0000000208A9130712070106000000030000000812073D06050000F800000008135D45030000000105000108000000060000000900000003120700FA08A913071207010600000003050000F8000000070000000812073D06050000F8135D810305000108135D45090000000400000008135D810904548A0100000007000000090000000400000001135D45030000000105000108135D45090000000404548A010000000600000008135D810904548A011386710000000000000000070000000500000004000000030000000212073D0008A912FB12073CFA0000000208A913070000000912073D06050000F8000000090000000900000003120700FA08A913071207010600000003050000F8135D810305000108135D4509000000040000000800000009000000010000000912073D06050000F8135D810305000108135D4509000000040CFD9C010F34D1000000000000000008000000050000000900000001135D45030000000105000108135D45090000000400000005000000050000000300000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913070000000912073D0608A91309000000090000000900000003120700FA08A91307120701060000000308A91309000000070000000912073D0608A9130912070108000000040000000912073D08050000F8135D810304548A011386710000000000000000090000000900000001135D4503000000010000000900000004000000030000000212073D0008A912FB00000009120700FA08A913070000000912073D060000000900000003000000020000000000000004000000031151E8FB0A0001061151E907000000030A0001081151E90900000004000000061152250908A913010000000A12073D0008A9130912070108000000040000000A12073D08050000F80000000900000006000000040000000000000004115225070A0001081151E90900000004000000091152250908A913010000000912073D0008A913071207010600000003000000090000000900000000000000040000000300000002"
theorem small_8597312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597312_right_root small_8597312_right_fuel small_8597312_right_count small_8597312_right_encoded = true := by
  decide +kernel
theorem small_8597312_right_covered : CoveredBy scale carrier boxes small_8597312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597312_right_root small_8597312_right_fuel small_8597312_right_count small_8597312_right_encoded small_8597312_right_checked

theorem cover_8597312 : CoveredBy scale carrier boxes root_8597312 := by
  apply coveredBy_split_literal root_8597312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8597313 small_8597312_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8597313
  · exact small_8597312_right_covered
#print axioms cover_8597312

def root_8597307 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597307_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8597307_right_fuel : Nat := 1
def small_8597307_right_count : Nat := 1
def small_8597307_right_encoded : String := "00000000"
theorem small_8597307_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8597307_right_root small_8597307_right_fuel small_8597307_right_count small_8597307_right_encoded = true := by
  decide +kernel
theorem small_8597307_right_covered : CoveredBy scale carrier boxes small_8597307_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8597307_right_root small_8597307_right_fuel small_8597307_right_count small_8597307_right_encoded small_8597307_right_checked

theorem cover_8597307 : CoveredBy scale carrier boxes root_8597307 := by
  apply coveredBy_split_literal root_8597307 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8597312 small_8597307_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8597312
  · exact small_8597307_right_covered
#print axioms cover_8597307

def root_8595019 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8595019 : CoveredBy scale carrier boxes root_8595019 := by
  apply coveredBy_split_literal root_8595019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3218.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8597307 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3218.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8597307
#print axioms cover_8595019

def root_8592703 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8592703 : CoveredBy scale carrier boxes root_8592703 := by
  apply coveredBy_split_literal root_8592703 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3217.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8595019 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3217.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8595019
#print axioms cover_8592703

def root_8588495 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8588495 : CoveredBy scale carrier boxes root_8588495 := by
  apply coveredBy_split_literal root_8588495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8588496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8592703 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8588496
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8592703
#print axioms cover_8588495

def root_8569677 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8569677 : CoveredBy scale carrier boxes root_8569677 := by
  apply coveredBy_split_literal root_8569677 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8569678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8588495 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8569678
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8588495
#print axioms cover_8569677

def root_8529359 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529359 : CoveredBy scale carrier boxes root_8529359 := by
  apply coveredBy_split_literal root_8529359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8529360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8569677 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8529360
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8569677
#print axioms cover_8529359

def root_8604934 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8604934_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8604934_left_fuel : Nat := 23
def small_8604934_left_count : Nat := 293
def small_8604934_left_encoded : String := "0A0001001151E901000000000A0000F8115225030A0000FA115225050A0000FC115224FD000000030A0001081151E8FF08A91303120700F800000006000000010000000600000004115224FF0000000408A91303120700F808A913050000000512073CFA0000000208A912FD00000005120700FC08A912FF00000005120701080000000405000100135D4501000000000000000600000005000000030000000112073CF80000000108A91305120700FA08A912FD00000005120700FC08A912FF0000000500000008000000030000000212073CFA0000000208A912FD00000006120700FC08A912FF00000006120701080000000405000100135D4501000000000CFD9C030F34D0F800000006000000010000000600000006000000031151E8FD0000000500000003000000021151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A91303120700F808A912FD00000005120700FC08A912FF00000005120701080000000405000100135D4501000000000000000A00000006000000030000000112073CF80000000108A912FD00000006120700FC08A912FF00000006120701080000000405000100135D450100000000050000FA000000060000000A00000006000000031151E8FD0A00010800000006115224FF000000040000000A00000003000000011151E903000000010A0000FA115225050A0000FC115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A91305120700FA08A912FD00000005000000080000000212073CFA0000000208A912FD00000006120700FC08A912FF00000006120701080000000405000100135D450100000000050000F8000000060000000800000006000000031151E8FD0A00010800000006115224FF0000000408A91305000000060000000600000003000000021151E905000000020A0000FC115224FD000000030A00010800000006115224FF0000000408A912FD00000006120700FC00000006000000031151E8FD0000000600000003115225010A0000F8115225030A0000FA115225050A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A91301120701000000000008A91303000000050000000612073D0008A91303120700F8000000050000000112073CF80000000108A91305120700FA000000050000000200000006000000001151E8FD0A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A9130300000005000000060000000000000003000000021151E905000000020A0000FC115224FD000000030A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A91303120700F8000000060000000100000006000000001151E8FD0000000600000003000000011151E903000000010A0000FA115225050A0000FC115224FD000000030A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A91305120700FA000000060000000200000006000000001151E8FD0000000600000003000000021151E905000000020000000600000000"
theorem small_8604934_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8604934_left_root small_8604934_left_fuel small_8604934_left_count small_8604934_left_encoded = true := by
  decide +kernel
theorem small_8604934_left_covered : CoveredBy scale carrier boxes small_8604934_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8604934_left_root small_8604934_left_fuel small_8604934_left_count small_8604934_left_encoded small_8604934_left_checked

theorem cover_8604934 : CoveredBy scale carrier boxes root_8604934 := by
  apply coveredBy_split_literal root_8604934 small_8604934_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3222.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8604934_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3222.covered
#print axioms cover_8604934

def root_8603108 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8603108 : CoveredBy scale carrier boxes root_8603108 := by
  apply coveredBy_split_literal root_8603108 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3221.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8604934 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3221.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8604934
#print axioms cover_8603108

def root_8610583 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610583 : CoveredBy scale carrier boxes root_8610583 := by
  apply coveredBy_split_literal root_8610583 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3224.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3225.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3224.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3225.covered
#print axioms cover_8610583

def root_8610578 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610578_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610578_right_fuel : Nat := 1
def small_8610578_right_count : Nat := 1
def small_8610578_right_encoded : String := "00000001"
theorem small_8610578_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610578_right_root small_8610578_right_fuel small_8610578_right_count small_8610578_right_encoded = true := by
  decide +kernel
theorem small_8610578_right_covered : CoveredBy scale carrier boxes small_8610578_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610578_right_root small_8610578_right_fuel small_8610578_right_count small_8610578_right_encoded small_8610578_right_checked

theorem cover_8610578 : CoveredBy scale carrier boxes root_8610578 := by
  apply coveredBy_split_literal root_8610578 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610583 small_8610578_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610583
  · exact small_8610578_right_covered
#print axioms cover_8610578

def root_8616661 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8616661 : CoveredBy scale carrier boxes root_8616661 := by
  apply coveredBy_split_literal root_8616661 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3226.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3227.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3226.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3227.covered
#print axioms cover_8616661

def root_8616655 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8616655_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8616655_left_fuel : Nat := 1
def small_8616655_left_count : Nat := 1
def small_8616655_left_encoded : String := "00000001"
theorem small_8616655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8616655_left_root small_8616655_left_fuel small_8616655_left_count small_8616655_left_encoded = true := by
  decide +kernel
theorem small_8616655_left_covered : CoveredBy scale carrier boxes small_8616655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8616655_left_root small_8616655_left_fuel small_8616655_left_count small_8616655_left_encoded small_8616655_left_checked

theorem cover_8616655 : CoveredBy scale carrier boxes root_8616655 := by
  apply coveredBy_split_literal root_8616655 small_8616655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8616661 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8616655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8616661
#print axioms cover_8616655

def root_8610577 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610577 : CoveredBy scale carrier boxes root_8610577 := by
  apply coveredBy_split_literal root_8610577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610578 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8616655 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610578
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8616655
#print axioms cover_8610577

def root_8610571 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610571_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610571_left_fuel : Nat := 1
def small_8610571_left_count : Nat := 1
def small_8610571_left_encoded : String := "00000000"
theorem small_8610571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610571_left_root small_8610571_left_fuel small_8610571_left_count small_8610571_left_encoded = true := by
  decide +kernel
theorem small_8610571_left_covered : CoveredBy scale carrier boxes small_8610571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610571_left_root small_8610571_left_fuel small_8610571_left_count small_8610571_left_encoded small_8610571_left_checked

theorem cover_8610571 : CoveredBy scale carrier boxes root_8610571 := by
  apply coveredBy_split_literal root_8610571 small_8610571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610577 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8610571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610577
#print axioms cover_8610571

def root_8610570 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610570 : CoveredBy scale carrier boxes root_8610570 := by
  apply coveredBy_split_literal root_8610570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610571 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3228.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610571
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3228.covered
#print axioms cover_8610570

def root_8610564 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610564_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610564_left_fuel : Nat := 1
def small_8610564_left_count : Nat := 1
def small_8610564_left_encoded : String := "00000004"
theorem small_8610564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610564_left_root small_8610564_left_fuel small_8610564_left_count small_8610564_left_encoded = true := by
  decide +kernel
theorem small_8610564_left_covered : CoveredBy scale carrier boxes small_8610564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610564_left_root small_8610564_left_fuel small_8610564_left_count small_8610564_left_encoded small_8610564_left_checked

theorem cover_8610564 : CoveredBy scale carrier boxes root_8610564 := by
  apply coveredBy_split_literal root_8610564 small_8610564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610570 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8610564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610570
#print axioms cover_8610564

def root_8610526 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610526_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610526_left_fuel : Nat := 8
def small_8610526_left_count : Nat := 17
def small_8610526_left_encoded : String := "120700FE04548A011386710000000000000000061386AD0004548A03138670F804548A05138670FA00000006000000020000000600000001000000060000000000000004"
theorem small_8610526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610526_left_root small_8610526_left_fuel small_8610526_left_count small_8610526_left_encoded = true := by
  decide +kernel
theorem small_8610526_left_covered : CoveredBy scale carrier boxes small_8610526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610526_left_root small_8610526_left_fuel small_8610526_left_count small_8610526_left_encoded small_8610526_left_checked

theorem cover_8610526 : CoveredBy scale carrier boxes root_8610526 := by
  apply coveredBy_split_literal root_8610526 small_8610526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610564 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8610526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610564
#print axioms cover_8610526

def root_8610520 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610520_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610520_left_fuel : Nat := 1
def small_8610520_left_count : Nat := 1
def small_8610520_left_encoded : String := "00000003"
theorem small_8610520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610520_left_root small_8610520_left_fuel small_8610520_left_count small_8610520_left_encoded = true := by
  decide +kernel
theorem small_8610520_left_covered : CoveredBy scale carrier boxes small_8610520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610520_left_root small_8610520_left_fuel small_8610520_left_count small_8610520_left_encoded small_8610520_left_checked

theorem cover_8610520 : CoveredBy scale carrier boxes root_8610520 := by
  apply coveredBy_split_literal root_8610520 small_8610520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610526 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8610520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610526
#print axioms cover_8610520

def root_8610474 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610474_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610474_left_fuel : Nat := 10
def small_8610474_left_count : Nat := 21
def small_8610474_left_encoded : String := "120700FC08A913090000000612073CFE0000000404548A011386710000000000000000061386AD0004548A03138670F804548A05138670FA00000006000000020000000600000001000000060000000000000003"
theorem small_8610474_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610474_left_root small_8610474_left_fuel small_8610474_left_count small_8610474_left_encoded = true := by
  decide +kernel
theorem small_8610474_left_covered : CoveredBy scale carrier boxes small_8610474_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610474_left_root small_8610474_left_fuel small_8610474_left_count small_8610474_left_encoded small_8610474_left_checked

theorem cover_8610474 : CoveredBy scale carrier boxes root_8610474 := by
  apply coveredBy_split_literal root_8610474 small_8610474_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610520 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8610474_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610520
#print axioms cover_8610474

def root_8610469 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610469_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610469_right_fuel : Nat := 1
def small_8610469_right_count : Nat := 1
def small_8610469_right_encoded : String := "00000002"
theorem small_8610469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610469_right_root small_8610469_right_fuel small_8610469_right_count small_8610469_right_encoded = true := by
  decide +kernel
theorem small_8610469_right_covered : CoveredBy scale carrier boxes small_8610469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610469_right_root small_8610469_right_fuel small_8610469_right_count small_8610469_right_encoded small_8610469_right_checked

theorem cover_8610469 : CoveredBy scale carrier boxes root_8610469 := by
  apply coveredBy_split_literal root_8610469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610474 small_8610469_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610474
  · exact small_8610469_right_covered
#print axioms cover_8610469

def root_8610468 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610468_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610468_right_fuel : Nat := 33
def small_8610468_right_count : Nat := 363
def small_8610468_right_encoded : String := "12073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE0000000404548A01138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA000000080000000200000006000000010000000613E20100022A458313E1C4F80AD3578510D100FA000000070000000200000006000000010000000600000000000000030F875107000000030C9A86FE0F878D09022A458113E1C50000000000022A45830000000A000000060000000A000000040F87510900000004022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA0B4D43FC10804D070B4D43FE0000000A00000007000000030000000A0000000210D13CFA000000020000000A0000000113E200F8000000010AD3578510D100FA0B4D43FC10804D070B4D43FE00000006000000080000000310801107000000030B4D43FE0000000A10801109000000040115234113F8590000000000033F67C300000008000000080000000A0000000210D13CFA000000020B4D43FC000000060000000A13E20100022A458313E1C4F80AD3578510D100FA0000000A000000020000000A0000000113E200F8000000010AD3578510D100FA0000000A000000020000000A00000000000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA0F878D050C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0000000A0F87510900000004022A458113E1C50000000000022A45830000000A000000060000000A000000020F875105000000020C9A86FC000000060000000A000000011386ACF8000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA000000060000000200000006000000010000000613E20100067ECE8312EA58F80AD3578510D100FA0000000A0000000200000005000000010000000500000000000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA00000006000000061386AD0004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090000000A000000040F87510900000004067ECE8112EA590000000000022A458313E1C4F80AD3578510D100FA0000000700000002000000070000000113E200F8000000010AD3578510D100FA00000006000000020000000512EA95000000000A00000000000000030F875107000000030000000A000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000A0F350CFE000000040C9A86FA0000000A0F875105000000020000000A000000011386ACF8000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D070C9A86FE000000060F87510900000004067ECE8112EA5900000000000000000600000005000000030F875107000000030C9A86FE0000000A0F8751090000000400000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA0F878D050C9A86FC000000050000000A000000020F875105000000020000000500000000"
theorem small_8610468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610468_right_root small_8610468_right_fuel small_8610468_right_count small_8610468_right_encoded = true := by
  decide +kernel
theorem small_8610468_right_covered : CoveredBy scale carrier boxes small_8610468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610468_right_root small_8610468_right_fuel small_8610468_right_count small_8610468_right_encoded small_8610468_right_checked

theorem cover_8610468 : CoveredBy scale carrier boxes root_8610468 := by
  apply coveredBy_split_literal root_8610468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610469 small_8610468_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610469
  · exact small_8610468_right_covered
#print axioms cover_8610468

def root_8610463 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610463_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610463_right_fuel : Nat := 1
def small_8610463_right_count : Nat := 1
def small_8610463_right_encoded : String := "00000001"
theorem small_8610463_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610463_right_root small_8610463_right_fuel small_8610463_right_count small_8610463_right_encoded = true := by
  decide +kernel
theorem small_8610463_right_covered : CoveredBy scale carrier boxes small_8610463_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610463_right_root small_8610463_right_fuel small_8610463_right_count small_8610463_right_encoded small_8610463_right_checked

theorem cover_8610463 : CoveredBy scale carrier boxes root_8610463 := by
  apply coveredBy_split_literal root_8610463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610468 small_8610463_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610468
  · exact small_8610463_right_covered
#print axioms cover_8610463

def root_8610462 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610462_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610462_right_fuel : Nat := 36
def small_8610462_right_count : Nat := 421
def small_8610462_right_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE0000000404548A0113867100000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C500000000000AD3578310D100F800000009000000010000000600000009000000030F875107000000030C9A86FE0F878D09022A458113E1C500000000000AD3578310D100F8022A45850000000700000006000000010000000613E201000AD3578310D100F8022A45850000000800000006000000010000000600000000000000040F87510900000004022A458113E1C500000000000AD3578310D100F8022A458513E1C4FA0B4D43FC10804D07000000090000000310801107000000030B4D43FE00000007000000090000000213E200FA000000020B4D43FC10804D070B4D43FE00000006000000090000000310801107000000030B4D43FE10804D09000000060000000410801109000000040115234113F859000000000009BE3543117740F8000000070000000100000007000000090000000110D13CF800000001022A45850000000913E200FA000000020B4D43FC000000060000000713E201000AD3578310D100F8022A45850000000900000009000000010000000900000000000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C500000000000AD3578310D100F8067ECE8512EA58FA000000060000000200000006000000010000000613E201000AD3578310D100F8067ECE850000000900000005000000010000000500000000000000010F350CF80000000104548A05138670FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F87510900000004022A458113E1C50000000000022A4585000000090000000600000009000000010F875103000000010C9A86FC000000060F875107000000030C9A86FE0000000600000009000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F800000006000000061386AD000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000090000000400000009000000030F875107000000030C9A86FE0F878D09067ECE8112EA5900000000000AD3578310D100F8022A45850000000800000006000000010000000912EA95000000000900000000000000040F8751090000000400000009000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D070C9A86FE0000000600000009000000030F875107000000030C9A86FE0F878D09067ECE8112EA5900000000000000000600000005000000040F8751090000000400000005000000010F350CF80000000104548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F8000000090F8751030000000100000009000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FC000000050F8751070000000300000005000000010F8751030000000100000005000000000000000212073CFA0000000208A913070000000612073CFC0000000308A913090000000612073CFE0000000404548A0113867100000000000CFD9C030F34D0F80CFD9C050F34D0FA000000060000000200000006000000010F350CF8000000010CFD9C050F34D0FA0000000600000002000000061386AD000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000050F87510700000003000000050000000200000006000000010F350CF8000000010CFD9C050F34D0FA00000006000000020000000600000000"
theorem small_8610462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610462_right_root small_8610462_right_fuel small_8610462_right_count small_8610462_right_encoded = true := by
  decide +kernel
theorem small_8610462_right_covered : CoveredBy scale carrier boxes small_8610462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610462_right_root small_8610462_right_fuel small_8610462_right_count small_8610462_right_encoded small_8610462_right_checked

theorem cover_8610462 : CoveredBy scale carrier boxes root_8610462 := by
  apply coveredBy_split_literal root_8610462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610463 small_8610462_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610463
  · exact small_8610462_right_covered
#print axioms cover_8610462

def root_8610456 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610456_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610456_left_fuel : Nat := 1
def small_8610456_left_count : Nat := 1
def small_8610456_left_encoded : String := "00000000"
theorem small_8610456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610456_left_root small_8610456_left_fuel small_8610456_left_count small_8610456_left_encoded = true := by
  decide +kernel
theorem small_8610456_left_covered : CoveredBy scale carrier boxes small_8610456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610456_left_root small_8610456_left_fuel small_8610456_left_count small_8610456_left_encoded small_8610456_left_checked

theorem cover_8610456 : CoveredBy scale carrier boxes root_8610456 := by
  apply coveredBy_split_literal root_8610456 small_8610456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610462 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8610456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610462
#print axioms cover_8610456

def root_8610455 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8610455 : CoveredBy scale carrier boxes root_8610455 := by
  apply coveredBy_split_literal root_8610455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3229.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3229.covered
#print axioms cover_8610455

def root_8610450 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610450_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8610450_right_fuel : Nat := 1
def small_8610450_right_count : Nat := 1
def small_8610450_right_encoded : String := "00000004"
theorem small_8610450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8610450_right_root small_8610450_right_fuel small_8610450_right_count small_8610450_right_encoded = true := by
  decide +kernel
theorem small_8610450_right_covered : CoveredBy scale carrier boxes small_8610450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8610450_right_root small_8610450_right_fuel small_8610450_right_count small_8610450_right_encoded small_8610450_right_checked

theorem cover_8610450 : CoveredBy scale carrier boxes root_8610450 := by
  apply coveredBy_split_literal root_8610450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8610455 small_8610450_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8610455
  · exact small_8610450_right_covered
#print axioms cover_8610450

def root_8626994 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626994_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626994_left_fuel : Nat := 7
def small_8626994_left_count : Nat := 13
def small_8626994_left_encoded : String := "120700FC050000FE135D810904548A01138671000000000004548A03000000080000000900000009000000040000000900000003"
theorem small_8626994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626994_left_root small_8626994_left_fuel small_8626994_left_count small_8626994_left_encoded = true := by
  decide +kernel
theorem small_8626994_left_covered : CoveredBy scale carrier boxes small_8626994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626994_left_root small_8626994_left_fuel small_8626994_left_count small_8626994_left_encoded small_8626994_left_checked

theorem cover_8626994 : CoveredBy scale carrier boxes root_8626994 := by
  apply coveredBy_split_literal root_8626994 small_8626994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3230.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8626994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3230.covered
#print axioms cover_8626994

def root_8626989 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626989_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626989_right_fuel : Nat := 1
def small_8626989_right_count : Nat := 1
def small_8626989_right_encoded : String := "00000002"
theorem small_8626989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626989_right_root small_8626989_right_fuel small_8626989_right_count small_8626989_right_encoded = true := by
  decide +kernel
theorem small_8626989_right_covered : CoveredBy scale carrier boxes small_8626989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626989_right_root small_8626989_right_fuel small_8626989_right_count small_8626989_right_encoded small_8626989_right_checked

theorem cover_8626989 : CoveredBy scale carrier boxes root_8626989 := by
  apply coveredBy_split_literal root_8626989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8626994 small_8626989_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8626994
  · exact small_8626989_right_covered
#print axioms cover_8626989

def root_8626988 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626988_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626988_right_fuel : Nat := 28
def small_8626988_right_count : Nat := 327
def small_8626988_right_encoded : String := "12073CFA0000000208A91307120700FC050000FE135D810904548A01000000081386AD00000000080000000000000004000000080000000312073CFC00000003050000FE135D810904548A01138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09022A45810000000813E20100022A45830000000700000008000000000000000400000007000000030F87510700000003078000FE128A7D09022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA0000000700000002000000070000000113E200F8000000010AD3578510D100FA0B4D43FC00000007108011070000000308C000FE11FC2509000000080000000400000007000000020000000813E20100022A45830000000713E200F8000000010AD3578510D100FA0B4D43FC0000000710801107000000030000000700000002000000050000000000000004128A41090000000400000007000000020F350CFA000000020CFD9C07000000080F350CFC000000030C9A86FA0F878D050C9A86FC000000080F87510700000003078000FE128A7D09022A45810000000813E20100022A45830000000700000005000000000000000400000008000000020F875105000000020C9A86FC0000000800000008000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09022A45810000000813E20100067ECE830000000800000005000000000000000400000008000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0B4D43FC00000008108011070000000308C000FE0000000500000008000000020000000500000001000000050000000500000004128A410900000004022A45810000000800000005000000020F350CFA000000020CFD9C07000000080F350CFC000000030C9A86FA0F878D050C9A86FC000000080F8751070000000300000005000000020F87510500000002000000051386AD0004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC078000FE128A7D09000000090000000400000007000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09067ECE8112EA59000000000000000007000000070000000400000007000000030F87510700000003078000FE128A7D09067ECE8112EA590000000000022A45830000000700000005000000050000000400000007000000020F350CFA000000020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D07078000FE0000000500000007000000030F8751070000000300000005000000020F8751050000000200000005000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D0700000009000000030F8751070000000300000005000000020F350CFA000000020CFD9C070F34D0FC0000000600000003000000050000000000000004135D45090000000404548A01138671000000000004548A03138670F80CFD9C050F34D0FA000000080000000200000008000000011386ACF8000000010CFD9C050F34D0FA0000000800000002000000081386AD0004548A03138670F80CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070000000800000005000000011386ACF8000000010CFD9C05000000090000000500000000"
theorem small_8626988_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626988_right_root small_8626988_right_fuel small_8626988_right_count small_8626988_right_encoded = true := by
  decide +kernel
theorem small_8626988_right_covered : CoveredBy scale carrier boxes small_8626988_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626988_right_root small_8626988_right_fuel small_8626988_right_count small_8626988_right_encoded small_8626988_right_checked

theorem cover_8626988 : CoveredBy scale carrier boxes root_8626988 := by
  apply coveredBy_split_literal root_8626988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8626989 small_8626988_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8626989
  · exact small_8626988_right_covered
#print axioms cover_8626988

def root_8626983 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626983_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8626983_right_fuel : Nat := 1
def small_8626983_right_count : Nat := 1
def small_8626983_right_encoded : String := "00000001"
theorem small_8626983_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8626983_right_root small_8626983_right_fuel small_8626983_right_count small_8626983_right_encoded = true := by
  decide +kernel
theorem small_8626983_right_covered : CoveredBy scale carrier boxes small_8626983_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8626983_right_root small_8626983_right_fuel small_8626983_right_count small_8626983_right_encoded small_8626983_right_checked

theorem cover_8626983 : CoveredBy scale carrier boxes root_8626983 := by
  apply coveredBy_split_literal root_8626983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8626988 small_8626983_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8626988
  · exact small_8626983_right_covered
#print axioms cover_8626983

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206
