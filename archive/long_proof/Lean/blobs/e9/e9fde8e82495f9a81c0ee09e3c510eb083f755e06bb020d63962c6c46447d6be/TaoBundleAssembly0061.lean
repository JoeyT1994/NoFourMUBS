import TaoBundleAssembly0060
import TaoBundleChunkBatch0243
import TaoBundleChunkBatch0244
import TaoBundleChunkBatch0245
import TaoBundleChunkBatch0246
import TaoBundleChunkBatch0247
import TaoBundleChunkBatch0248
import TaoBundleChunkBatch0249
import TaoBundleChunkBatch0250
import TaoBundleChunkBatch0251
import TaoBundleChunkBatch0252
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061
def root_2545345 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2545345_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2545345_left_fuel : Nat := 25
def small_2545345_left_count : Nat := 361
def small_2545345_left_encoded : String := "1152250908A91301120700F608A912F912073CF80000000108A912FB12073CFA0000000208A91309120700FE000000060000000412073CFE00000004050000FC135D810704548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C0900000006000000060000000600000006000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C09000000060F350CFE000000040C9A86F80000000600000006000000060F34D0F8000000060000000100000003135D45070000000304548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F80F878CF9000000010C9A86FA00000006000000060F8750F90C9A86FA0000000900000005000000010F34D0FA00000006000000020F34D0F80CFD9BFB0F350CFA00000002000000060000000600000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F80F878CF9000000010C9A86FA0F878CFB0000000200000006000000080F8750F90C9A86FA0F878CFB000000020C9A86FE000000060000000500000005000000010F34D0FA0CFD9C09000000060F350CFE000000040C9A86F80000000600000006000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C09000000060F350CFE000000040C9A86FA00000006000000060000000600000001120700FA08A91309000000060000000600000002120700F808A912FB12073CFA0000000208A91309000000060000000600000006000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A91309120700FE050000FC00000006135D4507000000030CFD9C010F34D0F60000000800000000000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D0F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C09000000080F350CFE000000040C9A86F80F878CF900000001000000060F8750F90C9A86FA0000000600000006000000010F34D0FA00000006000000020F34D0F80CFD9BFB0F350CFA00000002000000060000000600000001000000000F350CF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C0900000008000000080F34D0FA00000006000000020F34D0F80CFD9BFB0F350CFA0000000200000006000000060000000100000003135D4507000000030CFD9C010F34D0F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C09000000080F350CFE000000040C9A86F8000000080F8750F900000008000000010F34D0FA0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F80F878CF900000001000000060F8750F90000000A00000001000000020F34D0F80CFD9BFB0F350CFA00000002000000080F34D0FA000000060000000200000001000000000F350CF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000080000000A0F34D0F80CFD9BFB000000080F34D0FA000000060000000200000001120700FA08A91309120700FE000000060000000412073CFE00000004050000FC00000006135D4507000000030CFD9C010F34D0F60CFD9BF90F350CF8000000010000000600000006000000000F350CF6000000000CFD9BF90000000A0000000600000002120700F808A912FB12073CFA0000000208A91309120700FE000000060000000412073CFE00000004050000FC00000006135D4507000000030CFD9C010F34D0F6045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000060000000600000006000000000F350CF600000000045489F90000000800000006120700FA08A91309120700FE000000060000000400000006000000020000000100000004"
theorem small_2545345_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2545345_left_root small_2545345_left_fuel small_2545345_left_count small_2545345_left_encoded = true := by
  decide +kernel
theorem small_2545345_left_covered : CoveredBy scale carrier boxes small_2545345_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2545345_left_root small_2545345_left_fuel small_2545345_left_count small_2545345_left_encoded small_2545345_left_checked

theorem cover_2545345 : CoveredBy scale carrier boxes root_2545345 := by
  apply coveredBy_split_literal root_2545345 small_2545345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2546119 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2545345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2546119
#print axioms cover_2545345

def root_2545339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2545339_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2545339_left_fuel : Nat := 1
def small_2545339_left_count : Nat := 1
def small_2545339_left_encoded : String := "00000003"
theorem small_2545339_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2545339_left_root small_2545339_left_fuel small_2545339_left_count small_2545339_left_encoded = true := by
  decide +kernel
theorem small_2545339_left_covered : CoveredBy scale carrier boxes small_2545339_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2545339_left_root small_2545339_left_fuel small_2545339_left_count small_2545339_left_encoded small_2545339_left_checked

theorem cover_2545339 : CoveredBy scale carrier boxes root_2545339 := by
  apply coveredBy_split_literal root_2545339 small_2545339_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2545345 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2545339_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2545345
#print axioms cover_2545339

def root_2544225 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2544225 : CoveredBy scale carrier boxes root_2544225 := by
  apply coveredBy_split_literal root_2544225 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0970.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2545339 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0970.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2545339
#print axioms cover_2544225

def root_2544219 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2544219_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2544219_left_fuel : Nat := 1
def small_2544219_left_count : Nat := 1
def small_2544219_left_encoded : String := "00000002"
theorem small_2544219_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2544219_left_root small_2544219_left_fuel small_2544219_left_count small_2544219_left_encoded = true := by
  decide +kernel
theorem small_2544219_left_covered : CoveredBy scale carrier boxes small_2544219_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2544219_left_root small_2544219_left_fuel small_2544219_left_count small_2544219_left_encoded small_2544219_left_checked

theorem cover_2544219 : CoveredBy scale carrier boxes root_2544219 := by
  apply coveredBy_split_literal root_2544219 small_2544219_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544225 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2544219_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544225
#print axioms cover_2544219

def root_2544218 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2544218 : CoveredBy scale carrier boxes root_2544218 := by
  apply coveredBy_split_literal root_2544218 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544219 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0973.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544219
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0973.covered
#print axioms cover_2544218

def root_2544212 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2544212_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2544212_left_fuel : Nat := 1
def small_2544212_left_count : Nat := 1
def small_2544212_left_encoded : String := "00000001"
theorem small_2544212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2544212_left_root small_2544212_left_fuel small_2544212_left_count small_2544212_left_encoded = true := by
  decide +kernel
theorem small_2544212_left_covered : CoveredBy scale carrier boxes small_2544212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2544212_left_root small_2544212_left_fuel small_2544212_left_count small_2544212_left_encoded small_2544212_left_checked

theorem cover_2544212 : CoveredBy scale carrier boxes root_2544212 := by
  apply coveredBy_split_literal root_2544212 small_2544212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544218 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2544212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544218
#print axioms cover_2544212

def root_2544211 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2544211 : CoveredBy scale carrier boxes root_2544211 := by
  apply coveredBy_split_literal root_2544211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544212 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0974.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544212
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0974.covered
#print axioms cover_2544211

def root_2544206 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2544206_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2544206_right_fuel : Nat := 1
def small_2544206_right_count : Nat := 1
def small_2544206_right_encoded : String := "00000000"
theorem small_2544206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2544206_right_root small_2544206_right_fuel small_2544206_right_count small_2544206_right_encoded = true := by
  decide +kernel
theorem small_2544206_right_covered : CoveredBy scale carrier boxes small_2544206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2544206_right_root small_2544206_right_fuel small_2544206_right_count small_2544206_right_encoded small_2544206_right_checked

theorem cover_2544206 : CoveredBy scale carrier boxes root_2544206 := by
  apply coveredBy_split_literal root_2544206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544211 small_2544206_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544211
  · exact small_2544206_right_covered
#print axioms cover_2544206

def root_2544205 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2544205 : CoveredBy scale carrier boxes root_2544205 := by
  apply coveredBy_split_literal root_2544205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544206 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0975.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544206
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0975.covered
#print axioms cover_2544205

def root_2542419 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2542419 : CoveredBy scale carrier boxes root_2542419 := by
  apply coveredBy_split_literal root_2542419 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0969.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2544205 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0969.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2544205
#print axioms cover_2542419

def root_2560209 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2560209 : CoveredBy scale carrier boxes root_2560209 := by
  apply coveredBy_split_literal root_2560209 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0978.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0979.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0978.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0979.covered
#print axioms cover_2560209

def root_2560203 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2560203_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2560203_left_fuel : Nat := 1
def small_2560203_left_count : Nat := 1
def small_2560203_left_encoded : String := "00000000"
theorem small_2560203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2560203_left_root small_2560203_left_fuel small_2560203_left_count small_2560203_left_encoded = true := by
  decide +kernel
theorem small_2560203_left_covered : CoveredBy scale carrier boxes small_2560203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2560203_left_root small_2560203_left_fuel small_2560203_left_count small_2560203_left_encoded small_2560203_left_checked

theorem cover_2560203 : CoveredBy scale carrier boxes root_2560203 := by
  apply coveredBy_split_literal root_2560203 small_2560203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2560209 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2560203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2560209
#print axioms cover_2560203

def root_2559769 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559769_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559769_left_fuel : Nat := 23
def small_2559769_left_count : Nat := 209
def small_2559769_left_encoded : String := "120700F608A912F912073CF80000000108A912FB12073CFA00000002050000FC135D810705000108135D45090000000404548A01138670F60CFD9BF90F350CF800000001000000050000000A000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA0C9A86F80F878CF900000001078000FC128A7D070280010813D7B10900000004067ECE81000000050000000700000005000000030000000500000005000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000A0000000200000001135D810904548A01000000051386ACF6000000000CFD9BF9000000050000000A0000000400000003135D45070000000305000108135D45090000000404548A01138670F60CFD9BF9000000050000000A000000001386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFB000000050F34D0FA0000000A000000020000000100000005120700FA050000FC135D810705000108135D45090000000404548A01138670F60CFD9BF90000000800000006000000001386ACF6000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020C9A86F80F878CF900000001078000FC000000060000000800000008138670FA00000008000000020F34D0F8045489FB1386ACFA00000002078000FC00000006128A410700000003000000060000000600000001135D810904548A01000000081386ACF6000000000CFD9BF90F350CF80000000100000008000000080000000400000003135D45070000000305000108135D45090000000404548A01138670F600000009000000001386ACF6000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020C9A86F80000000900000005000000090F34D0F8045489FB1386ACFA00000002028000FC13D7ED0702800108000000060000000800000003000000090000000900000001135D810904548A01000000081386ACF6000000000CFD9BF90F350CF80000000100000008000000080000000400000002120700F808A912FB0000000A120700FA050000FC0000000A135D45070000000305000108135D45090000000404548A01000000061386ACF600000000045489F91386ACF800000001045489FB0000000A00000006000000060000000A000000020000000100000000"
theorem small_2559769_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2559769_left_root small_2559769_left_fuel small_2559769_left_count small_2559769_left_encoded = true := by
  decide +kernel
theorem small_2559769_left_covered : CoveredBy scale carrier boxes small_2559769_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2559769_left_root small_2559769_left_fuel small_2559769_left_count small_2559769_left_encoded small_2559769_left_checked

theorem cover_2559769 : CoveredBy scale carrier boxes root_2559769 := by
  apply coveredBy_split_literal root_2559769 small_2559769_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2560203 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2559769_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2560203
#print axioms cover_2559769

def root_2559763 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559763_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559763_left_fuel : Nat := 1
def small_2559763_left_count : Nat := 1
def small_2559763_left_encoded : String := "00000004"
theorem small_2559763_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2559763_left_root small_2559763_left_fuel small_2559763_left_count small_2559763_left_encoded = true := by
  decide +kernel
theorem small_2559763_left_covered : CoveredBy scale carrier boxes small_2559763_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2559763_left_root small_2559763_left_fuel small_2559763_left_count small_2559763_left_encoded small_2559763_left_checked

theorem cover_2559763 : CoveredBy scale carrier boxes root_2559763 := by
  apply coveredBy_split_literal root_2559763 small_2559763_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2559769 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2559763_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2559769
#print axioms cover_2559763

def root_2559762 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559762_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559762_right_fuel : Nat := 25
def small_2559762_right_count : Nat := 267
def small_2559762_right_encoded : String := "1152250908A91301120700F608A912F912073CF80000000108A912FB00000005120700FA08A913090000000512073D08050000FC135D810704548A010000000A1386ACF6000000000CFD9BF90F350CF800000001000000050000000A00000003135D45070000000304548A01000000051386ACF6000000000CFD9BF9000000050000000A00000004000000020000000A0000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A913090000000512073D08050000FC135D81070CFD9C01000000050F350CF60000000000000005000000030000000500000004120700FA08A9130912070108000000040000000512073D08050000FC135D81070CFD9C010F34D0F60CFD9BF90F350CF800000001045489FB00000005138670FA0CFD9C09000000050F350D080C9A86F80F878CF9000000010C9A870800000007000000050000000500000004000000020F34D0F80000000A00000001000000000F350CF6000000000CFD9BF90F350CF800000001045489FB00000005138670FA00000007000000020F34D0F8045489FB1386ACFA000000020CFD9C09000000090F350D080C9A86F60F878D010000000A000000000F875101000000000000000700000004138670FA0CFD9C090F34D108000000040C9A86F600000007000000050F350D080C9A86F60F878D010C9A87080000000700000007000000000000000700000004000000020000000100000003135D4507000000030CFD9C010F34D0F60CFD9BF9000000050F34D0F8045489FB00000005138670FA0000000A0000000200000001000000000F350CF6000000000CFD9BF90F350CF800000001000000050F34D0F8045489FB1386ACFA000000020CFD9C09000000050F350D080C9A86F60F878D0100000005000000000000000500000004138670FA0CFD9C090F34D10800000004000000050F350D080C9A86F60F878D010C9A87080F875109000000040000000800000008000000000F875101000000000C9A87080F8751090000000400000007000000070000000400000002000000010000000400000002120700F808A912FB0000000A120700FA08A9130912070108000000040000000A12073D08050000FC135D81070CFD9C010000000A0F350CF600000000045489F91386ACF800000001045489FB0000000A138670FA0CFD9C090F34D10800000004000000090F350D080C9A86F60000000A0F875101000000000C9A87080F87510900000004000000070000000700000004000000020000000A00000003135D4507000000030CFD9C010000000A0F350CF600000000045489F91386ACF800000001045489FB0000000A138670FA0CFD9C090F34D108000000040000000A0F350D080C9A86F60000000A0F875101000000000C9A87080F87510900000004028000FC00000008000000080000000A00000004000000020000000A00000004000000020000000100000004"
theorem small_2559762_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2559762_right_root small_2559762_right_fuel small_2559762_right_count small_2559762_right_encoded = true := by
  decide +kernel
theorem small_2559762_right_covered : CoveredBy scale carrier boxes small_2559762_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2559762_right_root small_2559762_right_fuel small_2559762_right_count small_2559762_right_encoded small_2559762_right_checked

theorem cover_2559762 : CoveredBy scale carrier boxes root_2559762 := by
  apply coveredBy_split_literal root_2559762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2559763 small_2559762_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2559763
  · exact small_2559762_right_covered
#print axioms cover_2559762

def root_2559756 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559756_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2559756_left_fuel : Nat := 1
def small_2559756_left_count : Nat := 1
def small_2559756_left_encoded : String := "00000003"
theorem small_2559756_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2559756_left_root small_2559756_left_fuel small_2559756_left_count small_2559756_left_encoded = true := by
  decide +kernel
theorem small_2559756_left_covered : CoveredBy scale carrier boxes small_2559756_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2559756_left_root small_2559756_left_fuel small_2559756_left_count small_2559756_left_encoded small_2559756_left_checked

theorem cover_2559756 : CoveredBy scale carrier boxes root_2559756 := by
  apply coveredBy_split_literal root_2559756 small_2559756_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2559762 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2559756_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2559762
#print axioms cover_2559756

def root_2557082 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2557082 : CoveredBy scale carrier boxes root_2557082 := by
  apply coveredBy_split_literal root_2557082 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0977.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2559756 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0977.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2559756
#print axioms cover_2557082

def root_2557076 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557076_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557076_left_fuel : Nat := 1
def small_2557076_left_count : Nat := 1
def small_2557076_left_encoded : String := "00000002"
theorem small_2557076_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2557076_left_root small_2557076_left_fuel small_2557076_left_count small_2557076_left_encoded = true := by
  decide +kernel
theorem small_2557076_left_covered : CoveredBy scale carrier boxes small_2557076_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2557076_left_root small_2557076_left_fuel small_2557076_left_count small_2557076_left_encoded small_2557076_left_checked

theorem cover_2557076 : CoveredBy scale carrier boxes root_2557076 := by
  apply coveredBy_split_literal root_2557076 small_2557076_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557082 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2557076_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557082
#print axioms cover_2557076

def root_2557075 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557075_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557075_right_fuel : Nat := 20
def small_2557075_right_count : Nat := 219
def small_2557075_right_encoded : String := "1151E8FB0A0000FC115225070A0001081151E9090000000408A91301120700F608A912F912073CF80000000108A91307120700FC050000FA135D80FB0000000205000108135D45090000000404548A01138670F60CFD9BF90000000A00000006000000000000000700000005000000050000000312073CFC00000003050000FA135D80FB0000000205000108135D45090000000404548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80000000A000000010000000500000005120700F808A91307120700FC0000000A000000030000000A000000010000000012073CF60000000008A912F912073CF80000000108A91307120700FC050000FA135D80FB0000000205000108135D4509000000040000000700000005000000050000000312073CFC00000003050000FA135D80FB0000000205000108135D4509000000040CFD9C010F34D0F60CFD9BF9000000050000000900000000000000090000000500000005120700F808A91307120700FC050000FA135D80FB000000020500010800000006135D81090CFD9C01000000060F350CF6000000000000000900000004135D44FB050001080000000600000005000000020000000312073CFC00000003050000FA135D80FB0000000205000108135D4509000000040CFD9C010000000900000009135D81090CFD9C010000000A0000000900000004135D44FB05000108135D4509000000040CFD9C010000000900000009135D81090CFD9C0100000005000000090000000400000002000000011152250908A91301120700F608A912F912073CF80000000108A91307120700FC08A913091207010800000004000000050000000500000003000000050000000A0000000012073CF60000000008A912F900000005120700F808A91307000000050000000A0000000100000004000000031151E907000000030A0001081151E9090000000408A91301120700F608A912F9000000050000000A0000000012073CF60000000008A912F912073CF80000000100000005120700F8050000FA135D80FB00000002050000FC135D810705000108000000090000000A00000003135D45070000000305000108135D4509000000040CFD9C01000000050000000900000005135D44FB050000FC135D81070500010800000009000000050000000300000005000000020000000111522509000000050000000400000002"
theorem small_2557075_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2557075_right_root small_2557075_right_fuel small_2557075_right_count small_2557075_right_encoded = true := by
  decide +kernel
theorem small_2557075_right_covered : CoveredBy scale carrier boxes small_2557075_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2557075_right_root small_2557075_right_fuel small_2557075_right_count small_2557075_right_encoded small_2557075_right_checked

theorem cover_2557075 : CoveredBy scale carrier boxes root_2557075 := by
  apply coveredBy_split_literal root_2557075 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557076 small_2557075_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557076
  · exact small_2557075_right_covered
#print axioms cover_2557075

def root_2557069 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557069_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557069_left_fuel : Nat := 1
def small_2557069_left_count : Nat := 1
def small_2557069_left_encoded : String := "00000001"
theorem small_2557069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2557069_left_root small_2557069_left_fuel small_2557069_left_count small_2557069_left_encoded = true := by
  decide +kernel
theorem small_2557069_left_covered : CoveredBy scale carrier boxes small_2557069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2557069_left_root small_2557069_left_fuel small_2557069_left_count small_2557069_left_encoded small_2557069_left_checked

theorem cover_2557069 : CoveredBy scale carrier boxes root_2557069 := by
  apply coveredBy_split_literal root_2557069 small_2557069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557075 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2557069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557075
#print axioms cover_2557069

def root_2557068 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557068_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557068_right_fuel : Nat := 22
def small_2557068_right_count : Nat := 239
def small_2557068_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E9090000000408A91301120700F608A912FB12073CFA0000000208A91307120700FC000000070000000312073CFC00000003050000F8135D80F90000000105000108135D45090000000404548A01000000051386ACF6000000000CFD9BFB000000050F34D0FA00000007000000020000000500000005120700FA08A91307120700FC000000070000000312073CFC00000003050000F8135D80F90000000105000108135D45090000000404548A01138670F6045489FB00000007000000060000000000000007135D810904548A01138670F6045489FB00000005138670FA0000000700000002000000000000000700000004135D44F905000108000000070000000500000001000000020000000012073CF60000000008A912FB12073CFA0000000208A91307120700FC000000070000000312073CFC00000003050000F8135D80F90000000105000108135D4509000000040CFD9C010F34D0F60000000700000000000000070000000500000005120700FA08A913070000000700000007000000021152250908A91301120700F608A912FB12073CFA0000000208A91307120700FC08A9130900000009000000050000000300000005120700FA08A91307120700FC08A91309120701080000000400000005000000050000000300000005000000020000000012073CF60000000008A912FB00000005120700FA08A913070000000512073CFC0000000308A913090000000512073D08050000F8135D80F9000000010CFD9C01000000050000000700000005000000040000000200000004000000031151E907000000030A0001081151E9090000000408A91301120700F608A912FB00000005120700FA050000F8135D80F900000001050000FC135D810705000108135D45090000000404548A01000000050000000800000005000000030000000500000005000000020000000012073CF60000000008A912FB12073CFA0000000200000005120700FA050000F8135D80F900000001050000FC135D810705000108000000070000000700000003135D45070000000305000108135D4509000000040CFD9C01000000050000000700000005135D44F9050000FC000000070000000500000001000000021152250900000005000000041151E8FB0A0000FC115225070A0001081151E90900000004000000051152250908A91301120700F608A91307120700FC08A9130900000009000000050000000300000005000000000000000500000004000000031151E90700000003000000050000000200000001"
theorem small_2557068_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2557068_right_root small_2557068_right_fuel small_2557068_right_count small_2557068_right_encoded = true := by
  decide +kernel
theorem small_2557068_right_covered : CoveredBy scale carrier boxes small_2557068_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2557068_right_root small_2557068_right_fuel small_2557068_right_count small_2557068_right_encoded small_2557068_right_checked

theorem cover_2557068 : CoveredBy scale carrier boxes root_2557068 := by
  apply coveredBy_split_literal root_2557068 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557069 small_2557068_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557069
  · exact small_2557068_right_covered
#print axioms cover_2557068

def root_2557063 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557063_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2557063_right_fuel : Nat := 1
def small_2557063_right_count : Nat := 1
def small_2557063_right_encoded : String := "00000000"
theorem small_2557063_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2557063_right_root small_2557063_right_fuel small_2557063_right_count small_2557063_right_encoded = true := by
  decide +kernel
theorem small_2557063_right_covered : CoveredBy scale carrier boxes small_2557063_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2557063_right_root small_2557063_right_fuel small_2557063_right_count small_2557063_right_encoded small_2557063_right_checked

theorem cover_2557063 : CoveredBy scale carrier boxes root_2557063 := by
  apply coveredBy_split_literal root_2557063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557068 small_2557063_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557068
  · exact small_2557063_right_covered
#print axioms cover_2557063

def root_2557062 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2557062 : CoveredBy scale carrier boxes root_2557062 := by
  apply coveredBy_split_literal root_2557062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0980.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557063
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0980.covered
#print axioms cover_2557062

def root_2555656 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2555656 : CoveredBy scale carrier boxes root_2555656 := by
  apply coveredBy_split_literal root_2555656 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0976.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2557062 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0976.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2557062
#print axioms cover_2555656

def root_2542418 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2542418 : CoveredBy scale carrier boxes root_2542418 := by
  apply coveredBy_split_literal root_2542418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2542419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2555656 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2542419
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2555656
#print axioms cover_2542418

def root_2513326 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513326 : CoveredBy scale carrier boxes root_2513326 := by
  apply coveredBy_split_literal root_2513326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.root_2513327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2542418 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0060.cover_2513327
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2542418
#print axioms cover_2513326

def root_2567687 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567687 : CoveredBy scale carrier boxes root_2567687 := by
  apply coveredBy_split_literal root_2567687 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0981.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0982.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0981.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0982.covered
#print axioms cover_2567687

def root_2567682 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567682_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567682_right_fuel : Nat := 1
def small_2567682_right_count : Nat := 1
def small_2567682_right_encoded : String := "00000000"
theorem small_2567682_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567682_right_root small_2567682_right_fuel small_2567682_right_count small_2567682_right_encoded = true := by
  decide +kernel
theorem small_2567682_right_covered : CoveredBy scale carrier boxes small_2567682_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567682_right_root small_2567682_right_fuel small_2567682_right_count small_2567682_right_encoded small_2567682_right_checked

theorem cover_2567682 : CoveredBy scale carrier boxes root_2567682 := by
  apply coveredBy_split_literal root_2567682 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567687 small_2567682_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567687
  · exact small_2567682_right_covered
#print axioms cover_2567682

def root_2567681 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567681 : CoveredBy scale carrier boxes root_2567681 := by
  apply coveredBy_split_literal root_2567681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567682 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0983.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567682
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0983.covered
#print axioms cover_2567681

def root_2567675 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567675_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567675_left_fuel : Nat := 1
def small_2567675_left_count : Nat := 1
def small_2567675_left_encoded : String := "00000004"
theorem small_2567675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567675_left_root small_2567675_left_fuel small_2567675_left_count small_2567675_left_encoded = true := by
  decide +kernel
theorem small_2567675_left_covered : CoveredBy scale carrier boxes small_2567675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567675_left_root small_2567675_left_fuel small_2567675_left_count small_2567675_left_encoded small_2567675_left_checked

theorem cover_2567675 : CoveredBy scale carrier boxes root_2567675 := by
  apply coveredBy_split_literal root_2567675 small_2567675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567681 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2567675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567681
#print axioms cover_2567675

def root_2567674 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567674_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567674_right_fuel : Nat := 24
def small_2567674_right_count : Nat := 427
def small_2567674_right_encoded : String := "1151E8FF08A91301120700F608A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF0000000404548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000050F34D106000000030C9A86F8000000060F8750F900000005000000010F34D0FA0CFD9BFD000000050F34D1060000000300000006000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD000000050F34D10600000003000000060F34D0FA0CFD9BFD000000060F34D10600000003000000060000000200000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000060F34D10600000003000000060F34D0FA00000006000000020F34D0F80CFD9BFB000000060F34D0FA000000060000000200000001135D44FF04548A01138670F60CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000006000000020F34D0F80CFD9BFB000000060000000600000001000000001386ACF6000000000CFD9BF9000000060F34D0F8000000060000000100000004000000031207010600000003050000FE135D80FF0000000404548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F8000000060F8750F900000006000000010000000313867106000000030C9A86F8000000060F8750F90C9A86FA000000060F8750FB0000000600000002000000010F34D0FA045489FD0000000600000007000000020F34D0F80CFD9BFB0F350CFA00000002045489FD000000061386710600000003000000060F34D0FA000000060000000200000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA00000006000000020F34D0F80000000600000001135D44FF04548A01138670F60CFD9BF9000000060F34D0F80000000600000001000000000000000600000004120700FA08A912FD12073D06050000FE135D80FF0000000404548A01138670F60CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD000000060F34D1060000000300000006138670FA0CFD9BFD0000000600000007000000020F34D0F80000000800000001000000001386ACF6000000000CFD9BF90F350CF800000001045489FB00000006000000060F34D0F80000000600000001135D44FF04548A01138670F60CFD9BF9000000060F34D0F80000000600000001000000000000000600000004000000031207010600000003050000FE135D80FF0000000404548A0100000007000000070000000700000002120700F808A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF0000000404548A01138670F6045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD000000060F34D10600000003000000060F34D0FA0000000600000002138670F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D10600000003000000060F34D0FA000000060000000200000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFB0000000600000006138670F80CFD9BFB000000060000000600000001135D44FF04548A01138670F6045489F900000006138670F80000000600000001000000000000000600000004000000031207010600000003050000FE135D80FF0000000404548A01138670F6045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD000000061386710600000003000000060F34D0FA0000000600000002138670F80CFD9BFB0F350CFA00000002045489FD000000061386710600000003000000060F34D0FA000000060000000200000001000000001386ACF600000000045489F900000006138670F80000000600000001135D44FF0000000600000004120700FA08A912FD12073D06050000FE135D80FF0000000404548A01000000080000000600000006000000031207010600000003050000FE135D80FF0000000404548A01138670F6045489F900000006138670F8000000060000000100000000000000060000000600000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF000000040CFD9C010F34D0F60CFD9BF9000000060F34D0F8000000060000000100000000000000060000000600000003120701060000000300000006120700FA08A912FD0000000612070106000000030000000600000002120700F808A912FB12073CFA0000000208A912FD00000006120701060000000300000006120700FA00000006000000020000000100000004"
theorem small_2567674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567674_right_root small_2567674_right_fuel small_2567674_right_count small_2567674_right_encoded = true := by
  decide +kernel
theorem small_2567674_right_covered : CoveredBy scale carrier boxes small_2567674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567674_right_root small_2567674_right_fuel small_2567674_right_count small_2567674_right_encoded small_2567674_right_checked

theorem cover_2567674 : CoveredBy scale carrier boxes root_2567674 := by
  apply coveredBy_split_literal root_2567674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567675 small_2567674_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567675
  · exact small_2567674_right_covered
#print axioms cover_2567674

def root_2567668 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567668_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567668_left_fuel : Nat := 1
def small_2567668_left_count : Nat := 1
def small_2567668_left_encoded : String := "00000003"
theorem small_2567668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567668_left_root small_2567668_left_fuel small_2567668_left_count small_2567668_left_encoded = true := by
  decide +kernel
theorem small_2567668_left_covered : CoveredBy scale carrier boxes small_2567668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567668_left_root small_2567668_left_fuel small_2567668_left_count small_2567668_left_encoded small_2567668_left_checked

theorem cover_2567668 : CoveredBy scale carrier boxes root_2567668 := by
  apply coveredBy_split_literal root_2567668 small_2567668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567674 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2567668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567674
#print axioms cover_2567668

def root_2567138 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567138_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567138_left_fuel : Nat := 18
def small_2567138_left_count : Nat := 249
def small_2567138_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120700F608A912F912073CF80000000108A912FB12073CFA000000020000000A120700FA08A912FF12073CFE00000004050001060000000A0000000A0000000A00000002120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D44FD0000000A00000003135D80FD0000000304548A010000000A0000000A0000000A120700FA08A912FF12073CFE00000004050001060000000A135D80FD0000000304548A01000000080000000A0000000A00000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE000000040000000A0000000A120700FA08A912FF12073CFE0000000405000106135D44FD0CFD9C010000000A0F350CF6000000000000000A00000003135D80FD000000030CFD9C010F34D0F60CFD9BF90000000A0000000A000000000F350CF6000000000CFD9BF9000000060F34D0F80000000600000001120700FE050001060000000A135D80FD000000030CFD9C010000000A0F350CF6000000000000000A0000000400000002120700F808A912FB12073CFA000000020000000A120700FA08A912FF12073CFE00000004050001060000000A000000060000000A00000002000000011151E8FF08A91301120700F608A912F912073CF80000000108A912FB12073CFA0000000205000106135D44FD050000FE0000000A135D44FF000000050000000400000003135D80FD00000003050000FE135D80FF0000000404548A01000000051386ACF6000000000000000A135D44FF04548A01000000050000000600000004120700FA05000106135D44FD050000FE0000000A135D44FF000000060000000400000003135D80FD00000003050000FE135D80FF0000000404548A01138670F60CFD9BF90000000A000000080000000000000006135D44FF000000060000000400000002120700F808A912FB12073CFA0000000205000106135D44FD050000FE135D80FF0000000404548A01000000081386ACF600000000045489F90000000600000006135D44FF000000060000000400000003135D80FD00000003050000FE135D80FF0000000404548A01138670F6045489F900000008000000080000000000000006135D44FF0000000600000004120700FA05000106000000060000000600000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000205000106135D44FD0000000A00000003135D80FD00000003050000FE135D80FF000000040000000A00000006120700FA0000000600000002120700F808A912FB0000000600000006000000010000000400000003"
theorem small_2567138_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567138_left_root small_2567138_left_fuel small_2567138_left_count small_2567138_left_encoded = true := by
  decide +kernel
theorem small_2567138_left_covered : CoveredBy scale carrier boxes small_2567138_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567138_left_root small_2567138_left_fuel small_2567138_left_count small_2567138_left_encoded small_2567138_left_checked

theorem cover_2567138 : CoveredBy scale carrier boxes root_2567138 := by
  apply coveredBy_split_literal root_2567138 small_2567138_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567668 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2567138_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567668
#print axioms cover_2567138

def root_2567132 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567132_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567132_left_fuel : Nat := 1
def small_2567132_left_count : Nat := 1
def small_2567132_left_encoded : String := "00000002"
theorem small_2567132_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567132_left_root small_2567132_left_fuel small_2567132_left_count small_2567132_left_encoded = true := by
  decide +kernel
theorem small_2567132_left_covered : CoveredBy scale carrier boxes small_2567132_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567132_left_root small_2567132_left_fuel small_2567132_left_count small_2567132_left_encoded small_2567132_left_checked

theorem cover_2567132 : CoveredBy scale carrier boxes root_2567132 := by
  apply coveredBy_split_literal root_2567132 small_2567132_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567138 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2567132_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567138
#print axioms cover_2567132

def root_2567131 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567131 : CoveredBy scale carrier boxes root_2567131 := by
  apply coveredBy_split_literal root_2567131 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567132 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0984.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567132
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0984.covered
#print axioms cover_2567131

def root_2567125 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567125_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567125_left_fuel : Nat := 1
def small_2567125_left_count : Nat := 1
def small_2567125_left_encoded : String := "00000001"
theorem small_2567125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567125_left_root small_2567125_left_fuel small_2567125_left_count small_2567125_left_encoded = true := by
  decide +kernel
theorem small_2567125_left_covered : CoveredBy scale carrier boxes small_2567125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567125_left_root small_2567125_left_fuel small_2567125_left_count small_2567125_left_encoded small_2567125_left_checked

theorem cover_2567125 : CoveredBy scale carrier boxes root_2567125 := by
  apply coveredBy_split_literal root_2567125 small_2567125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567131 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2567125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567131
#print axioms cover_2567125

def root_2576221 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2576221 : CoveredBy scale carrier boxes root_2576221 := by
  apply coveredBy_split_literal root_2576221 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0985.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0986.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0985.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0986.covered
#print axioms cover_2576221

def root_2576215 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2576215_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2576215_left_fuel : Nat := 1
def small_2576215_left_count : Nat := 1
def small_2576215_left_encoded : String := "00000004"
theorem small_2576215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2576215_left_root small_2576215_left_fuel small_2576215_left_count small_2576215_left_encoded = true := by
  decide +kernel
theorem small_2576215_left_covered : CoveredBy scale carrier boxes small_2576215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2576215_left_root small_2576215_left_fuel small_2576215_left_count small_2576215_left_encoded small_2576215_left_checked

theorem cover_2576215 : CoveredBy scale carrier boxes root_2576215 := by
  apply coveredBy_split_literal root_2576215 small_2576215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2576221 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2576215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2576221
#print axioms cover_2576215

def root_2576214 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2576214 : CoveredBy scale carrier boxes root_2576214 := by
  apply coveredBy_split_literal root_2576214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2576215 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0987.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2576215
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0987.covered
#print axioms cover_2576214

def root_2576208 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2576208_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2576208_left_fuel : Nat := 1
def small_2576208_left_count : Nat := 1
def small_2576208_left_encoded : String := "00000003"
theorem small_2576208_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2576208_left_root small_2576208_left_fuel small_2576208_left_count small_2576208_left_encoded = true := by
  decide +kernel
theorem small_2576208_left_covered : CoveredBy scale carrier boxes small_2576208_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2576208_left_root small_2576208_left_fuel small_2576208_left_count small_2576208_left_encoded small_2576208_left_checked

theorem cover_2576208 : CoveredBy scale carrier boxes root_2576208 := by
  apply coveredBy_split_literal root_2576208 small_2576208_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2576214 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2576208_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2576214
#print axioms cover_2576208

def root_2575300 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575300_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575300_left_fuel : Nat := 25
def small_2575300_left_count : Nat := 431
def small_2575300_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120700F608A912FB12073CFA000000020000000A120700FA08A912FF12073CFE00000004050000F8135D80F900000001050001060000000A135D80FD0000000304548A010000000A1386ACF6000000000000000A135D44F9050001060000000A135D80FD0000000304548A01138670F6045489FB0000000A138670FA0CFD9BFF000000050000000800000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFF0F350CFE000000040000000A00000008138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F800000008000000080F8750FF028000F80000000A13D7B0F9078001060000000A0000000800000001000000040F34D0FE000000080000000400000002000000010000000A000000020000000012073CF60000000008A912FB12073CFA0000000208A912FF12073CFE00000004050000F8135D80F900000001050001060000000A135D80FD000000030CFD9C010000000A0F350CF6000000000000000A135D44F905000106135D44FD0CFD9C010000000A0F350CF6000000000000000A00000003135D80FD000000030CFD9C010F34D0F60CFD9BFB0000000A0F34D0FA0000000A00000002000000000F350CF6000000000CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFF0F350CFE000000040C9A86F60000000900000009000000070000000200000001120700FE050000F80000000A0000000700000004120700FA08A912FF12073CFE00000004050000F8135D80F90000000105000106135D44FD0CFD9C010000000A0F350CF600000000045489FB0000000A138670FA0CFD9BFF000000060000000A0000000200000003135D80FD000000030CFD9C010F34D0F6045489FB0000000A138670FA0CFD9BFF0F350CFE00000004000000060000000A00000002000000000F350CF600000000045489FB1386ACFA000000020CFD9BFF000000060000000A138670FA0CFD9BFF000000060F34D0FE000000060000000400000002135D44F905000106135D44FD0CFD9C010F34D0F6045489FB0000000A138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A0000000A0000000A00000002000000000F350CF600000000045489FB1386ACFA000000020CFD9BFF0F350CFE000000040000000900000007138670FA0CFD9BFF0F350CFE000000040C9A86F60F878D010C9A86FE00000006000000060000000000000006000000070000000200000003135D80FD000000030CFD9C010F34D0F6045489FB1386ACFA000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F800000008000000080F8750FF028000F80000000613D7B0F9078001060000000A0000000600000001000000040000000A138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F813D7ECF90000000100000008000000080F8750FF028000F80000000613D7B0F90000000600000001000000040F34D0FE000000080000000400000002000000000F350CF600000000045489FB1386ACFA000000020CFD9BFF0F350CFE00000004000000060F34D0FE0000000700000004138670FA0CFD9BFF0F350CFE00000004000000060F34D0FE00000008000000040000000200000001120700FE050000F8135D80F900000001050001060000000A135D80FD000000030CFD9C010000000A0F350CF600000000045489FB00000007138670FA045489FF000000080000000700000002135D44F90500010600000007135D80FD000000030CFD9C0100000008000000070000000100000004000000021151E8FF08A91301120700F608A912FB00000005120700FA050000F8135D80F900000001050001060000000A135D80FD00000003050000FE0000000A135D44FF0000000600000004135D44F9050001060000000A135D80FD00000003050000FE135D80FF0000000404548A01000000051386ACF600000000045489FB00000005138670FA028000F80000000613D7B0F9078001060000000A000000060000000100000002135D44FF04548A0100000005000000060000000400000001000000020000000012073CF60000000008A912FB12073CFA00000002050000F8135D80F9000000010000000A00000009120700FA050000F8135D80F90000000105000106135D44FD000000060000000300000006135D44F905000106135D44FD050000FE135D80FF000000040CFD9C010F34D0F60000000900000000000000060000000600000003135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F6045489FB000000060000000600000000000000060000000600000001000000020000000400000003"
theorem small_2575300_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2575300_left_root small_2575300_left_fuel small_2575300_left_count small_2575300_left_encoded = true := by
  decide +kernel
theorem small_2575300_left_covered : CoveredBy scale carrier boxes small_2575300_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2575300_left_root small_2575300_left_fuel small_2575300_left_count small_2575300_left_encoded small_2575300_left_checked

theorem cover_2575300 : CoveredBy scale carrier boxes root_2575300 := by
  apply coveredBy_split_literal root_2575300 small_2575300_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2576208 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2575300_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2576208
#print axioms cover_2575300

def root_2575294 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575294_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575294_left_fuel : Nat := 1
def small_2575294_left_count : Nat := 1
def small_2575294_left_encoded : String := "00000002"
theorem small_2575294_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2575294_left_root small_2575294_left_fuel small_2575294_left_count small_2575294_left_encoded = true := by
  decide +kernel
theorem small_2575294_left_covered : CoveredBy scale carrier boxes small_2575294_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2575294_left_root small_2575294_left_fuel small_2575294_left_count small_2575294_left_encoded small_2575294_left_checked

theorem cover_2575294 : CoveredBy scale carrier boxes root_2575294 := by
  apply coveredBy_split_literal root_2575294 small_2575294_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2575300 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2575294_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2575300
#print axioms cover_2575294

def root_2575293 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575293_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575293_right_fuel : Nat := 27
def small_2575293_right_count : Nat := 331
def small_2575293_right_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A913010000000A12073CF6000000000000000A0000000A00000003115224FD000000030A0000FE115224FF0000000408A91301120700F608A912FD12073D060000000A00000003120701060000000308A912FF12073CFE00000004050000F8135D80F900000001050000FA135D80FB000000020000000A0000000A135D44F9050000FA135D80FB0000000204548A010000000A0000000A0000000A000000010000000A0000000012073CF60000000008A912FD12073D0608A912FF12073CFE00000004050000F8135D80F900000001050000FA135D80FB000000020CFD9C010000000A0F350CF6000000000000000A0000000A135D44F9050000FA135D80FB000000020CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE00000004000000090000000A135D44FB0CFD9C010000000A0F350CF600000000000000090000000200000001120700FE050000F80000000A135D44F9050000FA0000000A0000000A000000010000000400000003120701060000000308A912FF12073CFE00000004050000F8135D80F900000001050000FA135D80FB000000020CFD9C010000000A0F350CF6000000000000000A0000000A135D44F9050000FA135D80FB000000020CFD9C010F34D0F6045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040000000A0000000A000000000F350CF600000000045489FD1386AD060CFD9BFF0F350CFE000000040C9A86F60000000A0000000A0000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A86F6000000080000000A00000005135D44FB0CFD9C010000000A0F350CF6000000000000000A0000000200000001120700FE050000F80000000A135D44F9050000FA0000000A0000000A00000001000000041151E8FF08A91301120700F608A912FD000000051207010600000003050000F8135D80F900000001050000FA135D80FB00000002050000FE135D80FF0000000404548A01138670F6045489FD000000051386710600000003078000F8128A7CF900000001078000FA128A7CFB000000020000000A0000000A128A40F9078000FA128A7CFB000000020000000A0000000A00000001000000001386ACF600000000045489FD0000000A1386710600000003078000F800000006128A40F90000000A00000001135D44FF04548A01000000050000000600000004135D44FB050000FE0000000A0000000900000002135D44F9050000FA135D80FB00000002050000FE135D80FF0000000404548A01000000051386ACF600000000045489FD000000051386710600000003028000F813D7ECF900000001078000FA128A7CFB00000002078000FE0000000A000000060000000A13D7B0F9078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE810000000A00000006000000060000000A00000001135D44FF04548A01000000050000000900000004135D44FB050000FE0000000A0000000900000002000000010000000012073CF60000000008A912FD12073D06050000F80000000900000009000000031207010600000003050000F8135D80F900000001050000FA0000000600000009135D44F9050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D0F6045489FD000000061386710600000003028000F80000000613D7B0F9078000FA000000060000000900000001000000000000000600000006135D44FB0000000900000002000000010000000400000002"
theorem small_2575293_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2575293_right_root small_2575293_right_fuel small_2575293_right_count small_2575293_right_encoded = true := by
  decide +kernel
theorem small_2575293_right_covered : CoveredBy scale carrier boxes small_2575293_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2575293_right_root small_2575293_right_fuel small_2575293_right_count small_2575293_right_encoded small_2575293_right_checked

theorem cover_2575293 : CoveredBy scale carrier boxes root_2575293 := by
  apply coveredBy_split_literal root_2575293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2575294 small_2575293_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2575294
  · exact small_2575293_right_covered
#print axioms cover_2575293

def root_2575288 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575288_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2575288_right_fuel : Nat := 1
def small_2575288_right_count : Nat := 1
def small_2575288_right_encoded : String := "00000001"
theorem small_2575288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2575288_right_root small_2575288_right_fuel small_2575288_right_count small_2575288_right_encoded = true := by
  decide +kernel
theorem small_2575288_right_covered : CoveredBy scale carrier boxes small_2575288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2575288_right_root small_2575288_right_fuel small_2575288_right_count small_2575288_right_encoded small_2575288_right_checked

theorem cover_2575288 : CoveredBy scale carrier boxes root_2575288 := by
  apply coveredBy_split_literal root_2575288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2575293 small_2575288_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2575293
  · exact small_2575288_right_covered
#print axioms cover_2575288

def root_2567124 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567124 : CoveredBy scale carrier boxes root_2567124 := by
  apply coveredBy_split_literal root_2567124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2575288 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567125
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2575288
#print axioms cover_2567124

def root_2567119 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567119_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2567119_right_fuel : Nat := 1
def small_2567119_right_count : Nat := 1
def small_2567119_right_encoded : String := "00000000"
theorem small_2567119_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2567119_right_root small_2567119_right_fuel small_2567119_right_count small_2567119_right_encoded = true := by
  decide +kernel
theorem small_2567119_right_covered : CoveredBy scale carrier boxes small_2567119_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2567119_right_root small_2567119_right_fuel small_2567119_right_count small_2567119_right_encoded small_2567119_right_checked

theorem cover_2567119 : CoveredBy scale carrier boxes root_2567119 := by
  apply coveredBy_split_literal root_2567119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567124 small_2567119_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567124
  · exact small_2567119_right_covered
#print axioms cover_2567119

def root_2567118 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567118 : CoveredBy scale carrier boxes root_2567118 := by
  apply coveredBy_split_literal root_2567118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567119 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0988.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0988.covered
#print axioms cover_2567118

def root_2567117 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567117 : CoveredBy scale carrier boxes root_2567117 := by
  apply coveredBy_split_literal root_2567117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0989.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0989.covered
#print axioms cover_2567117

def root_2585826 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2585826 : CoveredBy scale carrier boxes root_2585826 := by
  apply coveredBy_split_literal root_2585826 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0990.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0991.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0990.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0991.covered
#print axioms cover_2585826

def root_2567116 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2567116 : CoveredBy scale carrier boxes root_2567116 := by
  apply coveredBy_split_literal root_2567116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2567117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2585826 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2567117
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2585826
#print axioms cover_2567116

def root_2589674 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589674_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589674_right_fuel : Nat := 27
def small_2589674_right_count : Nat := 207
def small_2589674_right_encoded : String := "1151E8FF08A91301120700F608A912F912073CF80000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000200000007000000070F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0000000600000007000000070000000700000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000200000007000000070F34D0F80CFD9BFB0F350CFA0000000204548A0700000006000000050000000700000001135D44FF04548A0100000007000000070000000412073D060000000700000003120700FA0000000700000002120700F808A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A01138670F6045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000060F8750FB078000FE128A7CFF00000004022A458113E1C4F6067ECE79000000060000000500000000000000050000000600000002000000050F34D0FA0000000700000002138670F80CFD9BFB0F350CFA0000000204548A07138671060000000300000005000000050000000500000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000050000000500000005135D44FF04548A01138670F6045489F9000000070000000500000000000000050000000412073D06050000FE135D80FF0000000404548A01138670F6045489F900000007138670F80CFD9BFB0F350CFA00000002000000050000000500000001000000001386ACF600000000000000070000000700000003120700FA0000000700000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9C010F34D0F60CFD9BF9000000070000000500000000000000050000000612073D060000000700000003120700FA0000000700000002120700F808A912FB12073CFA0000000208A9130712070106000000030000000500000005000000050000000100000004"
theorem small_2589674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589674_right_root small_2589674_right_fuel small_2589674_right_count small_2589674_right_encoded = true := by
  decide +kernel
theorem small_2589674_right_covered : CoveredBy scale carrier boxes small_2589674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589674_right_root small_2589674_right_fuel small_2589674_right_count small_2589674_right_encoded small_2589674_right_checked

theorem cover_2589674 : CoveredBy scale carrier boxes root_2589674 := by
  apply coveredBy_split_literal root_2589674 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0992.root small_2589674_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0992.covered
  · exact small_2589674_right_covered
#print axioms cover_2589674

def root_2589669 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589669_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589669_right_fuel : Nat := 1
def small_2589669_right_count : Nat := 1
def small_2589669_right_encoded : String := "00000003"
theorem small_2589669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589669_right_root small_2589669_right_fuel small_2589669_right_count small_2589669_right_encoded = true := by
  decide +kernel
theorem small_2589669_right_covered : CoveredBy scale carrier boxes small_2589669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589669_right_root small_2589669_right_fuel small_2589669_right_count small_2589669_right_encoded small_2589669_right_checked

theorem cover_2589669 : CoveredBy scale carrier boxes root_2589669 := by
  apply coveredBy_split_literal root_2589669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589674 small_2589669_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589674
  · exact small_2589669_right_covered
#print axioms cover_2589669

def root_2589425 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589425_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589425_left_fuel : Nat := 17
def small_2589425_left_count : Nat := 115
def small_2589425_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050001060000000700000007120700FE05000106135D45070000000304548A010000000600000008135D810704548A01138670F60CFD9BF9000000070000000600000000000000080000000300000004120700FA0000000700000002120700F808A912FB12073CFA0000000208A912FF12073CFE000000040500010600000007135D810704548A01000000070000000700000003120700FE0000000600000004120700FA0000000700000002000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF00000008120700FE0000000800000004120700FA08A912FF12073CFE00000004050001060000000800000007120700FE05000106135D45070000000300000008135D81070CFD9C010000000700000008000000030000000400000002120700F808A912FB12073CFA0000000208A912FF00000008120700FE0000000800000004120700FA0000000700000002000000011151E8FF08A913010000000712073CF60000000008A912F9000000080000000700000004"
theorem small_2589425_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589425_left_root small_2589425_left_fuel small_2589425_left_count small_2589425_left_encoded = true := by
  decide +kernel
theorem small_2589425_left_covered : CoveredBy scale carrier boxes small_2589425_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589425_left_root small_2589425_left_fuel small_2589425_left_count small_2589425_left_encoded small_2589425_left_checked

theorem cover_2589425 : CoveredBy scale carrier boxes root_2589425 := by
  apply coveredBy_split_literal root_2589425 small_2589425_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589669 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2589425_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589669
#print axioms cover_2589425

def root_2589419 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589419_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589419_left_fuel : Nat := 1
def small_2589419_left_count : Nat := 1
def small_2589419_left_encoded : String := "00000002"
theorem small_2589419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589419_left_root small_2589419_left_fuel small_2589419_left_count small_2589419_left_encoded = true := by
  decide +kernel
theorem small_2589419_left_covered : CoveredBy scale carrier boxes small_2589419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589419_left_root small_2589419_left_fuel small_2589419_left_count small_2589419_left_encoded small_2589419_left_checked

theorem cover_2589419 : CoveredBy scale carrier boxes root_2589419 := by
  apply coveredBy_split_literal root_2589419 small_2589419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589425 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2589419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589425
#print axioms cover_2589419

def root_2589418 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2589418 : CoveredBy scale carrier boxes root_2589418 := by
  apply coveredBy_split_literal root_2589418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589419 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0993.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589419
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0993.covered
#print axioms cover_2589418

def root_2589412 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589412_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589412_left_fuel : Nat := 1
def small_2589412_left_count : Nat := 1
def small_2589412_left_encoded : String := "00000001"
theorem small_2589412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589412_left_root small_2589412_left_fuel small_2589412_left_count small_2589412_left_encoded = true := by
  decide +kernel
theorem small_2589412_left_covered : CoveredBy scale carrier boxes small_2589412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589412_left_root small_2589412_left_fuel small_2589412_left_count small_2589412_left_encoded small_2589412_left_checked

theorem cover_2589412 : CoveredBy scale carrier boxes root_2589412 := by
  apply coveredBy_split_literal root_2589412 small_2589412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589418 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2589412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589418
#print axioms cover_2589412

def root_2589411 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2589411 : CoveredBy scale carrier boxes root_2589411 := by
  apply coveredBy_split_literal root_2589411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0994.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589412
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0994.covered
#print axioms cover_2589411

def root_2589406 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589406_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589406_right_fuel : Nat := 1
def small_2589406_right_count : Nat := 1
def small_2589406_right_encoded : String := "00000000"
theorem small_2589406_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589406_right_root small_2589406_right_fuel small_2589406_right_count small_2589406_right_encoded = true := by
  decide +kernel
theorem small_2589406_right_covered : CoveredBy scale carrier boxes small_2589406_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589406_right_root small_2589406_right_fuel small_2589406_right_count small_2589406_right_encoded small_2589406_right_checked

theorem cover_2589406 : CoveredBy scale carrier boxes root_2589406 := by
  apply coveredBy_split_literal root_2589406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589411 small_2589406_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589411
  · exact small_2589406_right_covered
#print axioms cover_2589406

def root_2589405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589405_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2589405_right_fuel : Nat := 16
def small_2589405_right_count : Nat := 159
def small_2589405_right_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A912FF0000000800000008120700FA08A912FF00000008120700FE000000080000000400000002120700F808A912FB12073CFA0000000200000008120700FA08A912FF00000007120700FE000000070000000400000002000000011151E8FF0000000500000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A913071207010600000003000000050000000500000005120700F808A912FB12073CFA0000000200000005120700FA08A9130712070106000000030000000500000007000000020000000100000005000000031151E8FB0A0001061151E9070000000300000005115225070A0000FE115224FF00000004000000051151E8FF08A912F912073CF80000000108A9130712070106000000030000000600000005000000050000000400000003000000021151E8F90A0000FA115224FB000000020A0001061151E9070000000300000005115225070A0000FE115224FF00000004000000051151E8FF08A912FB12073CFA0000000208A91307120701060000000300000006000000050000000500000004000000031151E8FB0A0001061151E9070000000300000005115225070A0000FE115224FF0000000408A91307120701060000000308A912FF12073CFE00000004050000F6000000050000000800000005000000051151E8FF08A913071207010600000003050000F600000008135D450100000000000000080000000700000004000000030000000200000001"
theorem small_2589405_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2589405_right_root small_2589405_right_fuel small_2589405_right_count small_2589405_right_encoded = true := by
  decide +kernel
theorem small_2589405_right_covered : CoveredBy scale carrier boxes small_2589405_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2589405_right_root small_2589405_right_fuel small_2589405_right_count small_2589405_right_encoded small_2589405_right_checked

theorem cover_2589405 : CoveredBy scale carrier boxes root_2589405 := by
  apply coveredBy_split_literal root_2589405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589406 small_2589405_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589406
  · exact small_2589405_right_covered
#print axioms cover_2589405

def root_2599457 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2599457 : CoveredBy scale carrier boxes root_2599457 := by
  apply coveredBy_split_literal root_2599457 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0996.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0997.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0996.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0997.covered
#print axioms cover_2599457

def root_2599451 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2599451_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2599451_left_fuel : Nat := 1
def small_2599451_left_count : Nat := 1
def small_2599451_left_encoded : String := "00000000"
theorem small_2599451_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2599451_left_root small_2599451_left_fuel small_2599451_left_count small_2599451_left_encoded = true := by
  decide +kernel
theorem small_2599451_left_covered : CoveredBy scale carrier boxes small_2599451_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2599451_left_root small_2599451_left_fuel small_2599451_left_count small_2599451_left_encoded small_2599451_left_checked

theorem cover_2599451 : CoveredBy scale carrier boxes root_2599451 := by
  apply coveredBy_split_literal root_2599451 small_2599451_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2599457 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2599451_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2599457
#print axioms cover_2599451

def root_2598977 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2598977_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2598977_left_fuel : Nat := 23
def small_2598977_left_count : Nat := 225
def small_2598977_left_encoded : String := "120700F608A912F912073CF80000000108A912FB12073CFA0000000205000106135D450700000003050000FE135D810904548A01138670F60CFD9BF9000000090F34D0F80CFD9BFB0F350CFA00000002000000050000000900000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB00000005000000090F34D0F80CFD9BFB0F350CFA000000020C9A86FA0F878CFB000000020280010613D7B10700000003078000FE128A7D09067ECE810000000500000008000000040000000500000005000000050F34D0FA00000009000000020000000100000004135D45090000000404548A01138670F60CFD9BF9000000050F34D0F80CFD9BFB000000050000000900000001000000001386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFB000000050F34D0FA000000090000000200000001135D8107050000FE135D810904548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80000000900000001000000040000000500000003120700FA0000000900000002120700F808A912FB12073CFA0000000205000106135D450700000003050000FE135D810904548A01138670F6045489F91386ACF8000000010CFD9BFB000000070000000600000006000000001386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002028001060000000600000007000000070F34D0FA02800106000000060000000700000002138670F80CFD9BFB0F350CFA0000000200000007000000060000000100000004135D45090000000404548A01138670F60000000A000000001386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020C9A86FA0000000A000000050F34D0FA0280010613D7B107000000030000000A0000000900000002138670F80000000A00000001135D8107050000FE135D810904548A01000000071386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000700000007138670F8000000070000000100000004135D45090000000404548A01000000071386ACF600000000045489F91386ACF8000000010CFD9BFB0000000500000007138670F8000000070000000100000003120700FA05000106135D450700000003050000FE00000006135D45090000000404548A01000000061386ACF600000000045489F9000000090000000600000009000000020000000100000000"
theorem small_2598977_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2598977_left_root small_2598977_left_fuel small_2598977_left_count small_2598977_left_encoded = true := by
  decide +kernel
theorem small_2598977_left_covered : CoveredBy scale carrier boxes small_2598977_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2598977_left_root small_2598977_left_fuel small_2598977_left_count small_2598977_left_encoded small_2598977_left_checked

theorem cover_2598977 : CoveredBy scale carrier boxes root_2598977 := by
  apply coveredBy_split_literal root_2598977 small_2598977_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2599451 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2598977_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2599451
#print axioms cover_2598977

def root_2598971 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2598971_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2598971_left_fuel : Nat := 1
def small_2598971_left_count : Nat := 1
def small_2598971_left_encoded : String := "00000004"
theorem small_2598971_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2598971_left_root small_2598971_left_fuel small_2598971_left_count small_2598971_left_encoded = true := by
  decide +kernel
theorem small_2598971_left_covered : CoveredBy scale carrier boxes small_2598971_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2598971_left_root small_2598971_left_fuel small_2598971_left_count small_2598971_left_encoded small_2598971_left_checked

theorem cover_2598971 : CoveredBy scale carrier boxes root_2598971 := by
  apply coveredBy_split_literal root_2598971 small_2598971_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2598977 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2598971_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2598977
#print axioms cover_2598971

def root_2597501 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2597501 : CoveredBy scale carrier boxes root_2597501 := by
  apply coveredBy_split_literal root_2597501 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0995.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2598971 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0995.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2598971
#print axioms cover_2597501

def root_2597495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597495_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597495_left_fuel : Nat := 1
def small_2597495_left_count : Nat := 1
def small_2597495_left_encoded : String := "00000003"
theorem small_2597495_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2597495_left_root small_2597495_left_fuel small_2597495_left_count small_2597495_left_encoded = true := by
  decide +kernel
theorem small_2597495_left_covered : CoveredBy scale carrier boxes small_2597495_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2597495_left_root small_2597495_left_fuel small_2597495_left_count small_2597495_left_encoded small_2597495_left_checked

theorem cover_2597495 : CoveredBy scale carrier boxes root_2597495 := by
  apply coveredBy_split_literal root_2597495 small_2597495_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597501 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2597495_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597501
#print axioms cover_2597495

def root_2597494 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2597494 : CoveredBy scale carrier boxes root_2597494 := by
  apply coveredBy_split_literal root_2597494 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597495 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0998.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597495
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0998.covered
#print axioms cover_2597494

def root_2597488 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597488_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597488_left_fuel : Nat := 1
def small_2597488_left_count : Nat := 1
def small_2597488_left_encoded : String := "00000002"
theorem small_2597488_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2597488_left_root small_2597488_left_fuel small_2597488_left_count small_2597488_left_encoded = true := by
  decide +kernel
theorem small_2597488_left_covered : CoveredBy scale carrier boxes small_2597488_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2597488_left_root small_2597488_left_fuel small_2597488_left_count small_2597488_left_encoded small_2597488_left_checked

theorem cover_2597488 : CoveredBy scale carrier boxes root_2597488 := by
  apply coveredBy_split_literal root_2597488 small_2597488_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597494 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2597488_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597494
#print axioms cover_2597488

def root_2597487 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597487_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597487_right_fuel : Nat := 20
def small_2597487_right_count : Nat := 205
def small_2597487_right_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A91301120700F608A912F912073CF80000000108A91309120700FE000000080000000412073CFE00000004050000FA135D80FB0000000205000106135D45070000000304548A01000000051386ACF6000000000CFD9BF9000000050F34D0F800000008000000010000000500000005120700F808A91309120700FE000000080000000412073CFE00000004050000FA135D80FB0000000205000106135D45070000000304548A01138670F6045489F900000008000000060000000000000008135D810704548A01138670F6045489F900000005138670F80000000800000001000000000000000800000003135D44FB05000106000000080000000500000002000000010000000012073CF60000000008A912F912073CF80000000108A91309120700FE000000080000000412073CFE00000004050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D0F60000000800000000000000080000000500000005120700F808A91309000000080000000800000001000000041151E9090000000408A91301120700F608A912F900000005120700F8050000FA135D80FB0000000205000106135D450700000003050000FE135D810904548A01000000050000000700000004000000050000000500000005000000010000000012073CF60000000008A912F912073CF80000000100000005120700F8050000FA135D80FB0000000205000106135D450700000003050000FE00000008135D4509000000040CFD9C010000000500000008135D8107050000FE000000080000000500000003135D44FB05000106135D45070000000300000008000000050000000200000001115225070A0000FE1152250908A91301120700F608A912F912073CF80000000108A9130712070106000000030000000500000005120700F808A9130712070106000000030000000500000005000000010000000012073CF60000000008A912F900000005120700F808A913070000000512073D0608A913090000000512073CFE00000004050000FA135D80FB000000020CFD9C01000000050000000800000005000000030000000100000004000000050000000300000002"
theorem small_2597487_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2597487_right_root small_2597487_right_fuel small_2597487_right_count small_2597487_right_encoded = true := by
  decide +kernel
theorem small_2597487_right_covered : CoveredBy scale carrier boxes small_2597487_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2597487_right_root small_2597487_right_fuel small_2597487_right_count small_2597487_right_encoded small_2597487_right_checked

theorem cover_2597487 : CoveredBy scale carrier boxes root_2597487 := by
  apply coveredBy_split_literal root_2597487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597488 small_2597487_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597488
  · exact small_2597487_right_covered
#print axioms cover_2597487

def root_2597481 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597481_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597481_left_fuel : Nat := 1
def small_2597481_left_count : Nat := 1
def small_2597481_left_encoded : String := "00000001"
theorem small_2597481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2597481_left_root small_2597481_left_fuel small_2597481_left_count small_2597481_left_encoded = true := by
  decide +kernel
theorem small_2597481_left_covered : CoveredBy scale carrier boxes small_2597481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2597481_left_root small_2597481_left_fuel small_2597481_left_count small_2597481_left_encoded small_2597481_left_checked

theorem cover_2597481 : CoveredBy scale carrier boxes root_2597481 := by
  apply coveredBy_split_literal root_2597481 small_2597481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597487 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2597481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597487
#print axioms cover_2597481

def root_2597480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597480_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597480_right_fuel : Nat := 22
def small_2597480_right_count : Nat := 239
def small_2597480_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0001061151E907000000030A0000FE1152250908A91301120700F608A912FB12073CFA0000000208A91309120700FE050000F8135D80F90000000105000106135D45070000000304548A01138670F60CFD9BFB0000000900000006000000000000000800000005000000050000000412073CFE00000004050000F8135D80F90000000105000106135D45070000000304548A01000000051386ACF6000000000CFD9BFB000000050F34D0FA00000009000000020000000500000005120700FA08A91309120700FE000000090000000400000009000000020000000012073CF60000000008A912FB12073CFA0000000208A91309120700FE050000F8135D80F90000000105000106135D4507000000030000000800000005000000050000000412073CFE00000004050000F8135D80F90000000105000106135D4507000000030CFD9C010F34D0F60CFD9BFB000000050000000A000000000000000A0000000500000005120700FA08A91309120700FE050000F8135D80F9000000010500010600000006135D81070CFD9C01000000060F350CF6000000000000000A00000003135D44F9050001060000000600000005000000010000000412073CFE00000004050000F8135D80F90000000105000106135D4507000000030CFD9C010000000A0000000A135D81070CFD9C01000000090000000A00000003135D44F905000106135D4507000000030CFD9C010000000A0000000A135D81070CFD9C01000000050000000A000000030000000100000002000000041151E9090000000408A91301120700F608A912FB00000005000000090000000012073CF60000000008A912FB12073CFA0000000200000005120700FA050000F8135D80F90000000105000106135D450700000003050000FE0000000A135D4509000000040CFD9C01000000050000000A00000009135D44F905000106135D450700000003050000FE0000000A00000005000000050000000100000002115225070A0000FE1152250908A91301120700F608A912FB12073CFA0000000208A9130712070106000000030000000500000005000000090000000012073CF60000000008A912FB00000005120700FA08A913070000000512073D0608A91309000000050000000900000003000000020000000400000005000000031151E8FB0A0001061151E9070000000300000005115225070A0000FE1152250908A91301120700F608A91307120701060000000300000005000000050000000000000005000000041151E9090000000400000005000000030000000200000001"
theorem small_2597480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2597480_right_root small_2597480_right_fuel small_2597480_right_count small_2597480_right_encoded = true := by
  decide +kernel
theorem small_2597480_right_covered : CoveredBy scale carrier boxes small_2597480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2597480_right_root small_2597480_right_fuel small_2597480_right_count small_2597480_right_encoded small_2597480_right_checked

theorem cover_2597480 : CoveredBy scale carrier boxes root_2597480 := by
  apply coveredBy_split_literal root_2597480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597481 small_2597480_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597481
  · exact small_2597480_right_covered
#print axioms cover_2597480

def root_2597475 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597475_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2597475_right_fuel : Nat := 1
def small_2597475_right_count : Nat := 1
def small_2597475_right_encoded : String := "00000000"
theorem small_2597475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2597475_right_root small_2597475_right_fuel small_2597475_right_count small_2597475_right_encoded = true := by
  decide +kernel
theorem small_2597475_right_covered : CoveredBy scale carrier boxes small_2597475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2597475_right_root small_2597475_right_fuel small_2597475_right_count small_2597475_right_encoded small_2597475_right_checked

theorem cover_2597475 : CoveredBy scale carrier boxes root_2597475 := by
  apply coveredBy_split_literal root_2597475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597480 small_2597475_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597480
  · exact small_2597475_right_covered
#print axioms cover_2597475

def root_2597474 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2597474 : CoveredBy scale carrier boxes root_2597474 := by
  apply coveredBy_split_literal root_2597474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597475 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0999.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597475
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0999.covered
#print axioms cover_2597474

def root_2589404 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2589404 : CoveredBy scale carrier boxes root_2589404 := by
  apply coveredBy_split_literal root_2589404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2589405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2597474 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2589405
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2597474
#print axioms cover_2589404

def root_2618554 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2618554 : CoveredBy scale carrier boxes root_2618554 := by
  apply coveredBy_split_literal root_2618554 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1005.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1006.root coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1005.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1006.covered
#print axioms cover_2618554

def root_2618549 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2618549_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2618549_right_fuel : Nat := 1
def small_2618549_right_count : Nat := 1
def small_2618549_right_encoded : String := "00000001"
theorem small_2618549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2618549_right_root small_2618549_right_fuel small_2618549_right_count small_2618549_right_encoded = true := by
  decide +kernel
theorem small_2618549_right_covered : CoveredBy scale carrier boxes small_2618549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2618549_right_root small_2618549_right_fuel small_2618549_right_count small_2618549_right_encoded small_2618549_right_checked

theorem cover_2618549 : CoveredBy scale carrier boxes root_2618549 := by
  apply coveredBy_split_literal root_2618549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2618554 small_2618549_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2618554
  · exact small_2618549_right_covered
#print axioms cover_2618549

def root_2616375 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2616375 : CoveredBy scale carrier boxes root_2616375 := by
  apply coveredBy_split_literal root_2616375 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1004.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2618549 coord1 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1004.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2618549
#print axioms cover_2616375

def root_2616370 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2616370_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2616370_right_fuel : Nat := 1
def small_2616370_right_count : Nat := 1
def small_2616370_right_encoded : String := "00000004"
theorem small_2616370_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2616370_right_root small_2616370_right_fuel small_2616370_right_count small_2616370_right_encoded = true := by
  decide +kernel
theorem small_2616370_right_covered : CoveredBy scale carrier boxes small_2616370_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2616370_right_root small_2616370_right_fuel small_2616370_right_count small_2616370_right_encoded small_2616370_right_checked

theorem cover_2616370 : CoveredBy scale carrier boxes root_2616370 := by
  apply coveredBy_split_literal root_2616370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.root_2616375 small_2616370_right_root coord4 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061.cover_2616375
  · exact small_2616370_right_covered
#print axioms cover_2616370

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0061
