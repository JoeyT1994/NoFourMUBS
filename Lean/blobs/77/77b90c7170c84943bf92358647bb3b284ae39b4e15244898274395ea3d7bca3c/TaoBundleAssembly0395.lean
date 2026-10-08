import TaoBundleAssembly0391
import TaoBundleAssembly0394
import TaoBundleChunkBatch0527
import TaoBundleChunkBatch0528
import TaoBundleChunkBatch0529
import TaoBundleChunkBatch0530
import TaoBundleChunkBatch0531
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395
def root_5624223 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5624223_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5624223_left_fuel : Nat := 26
def small_5624223_left_count : Nat := 361
def small_5624223_left_encoded : String := "1151E8FD0A0000FE1152250908A912F712073D0008A912F912073CF80000000108A912FB12073D0408A91309120700FE05000106135D44FD0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB000000050F34D104000000020000000A0F34D0F80000000A00000001000000000F34D100000000000CFD9BF90000000A0F34D0F80000000A0000000100000003135D80FD000000030CFD9BF70F350D000CFD9BF90F350CF800000001000000060F34D0F80CFD9BFB000000060F34D104000000020000000A00000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB000000060F34D10400000002000000060F34D0F80CFD9BFB0000000A0F34D104000000020000000A000000010000000412073CFE00000004050001060000000A135D80FD000000030CFD9BF70000000A0000000600000002120701040000000208A91309120700FE05000106135D44FD0CFD9BF70000000A0F34D100000000000000000700000003135D80FD000000030CFD9BF70F350D000CFD9BF90F350CF800000001045489FB0000000A000000070F34D0F8045489FB0000000A0000000700000001000000000F34D1000000000000000007000000040000000A120700F808A912FB12073D0408A91309120700FE05000106135D44FD0CFD9BF70000000A0F34D100000000000000000A00000003135D80FD000000030CFD9BF70F350D00045489F91386ACF8000000010CFD9BFB0F350D0404548A09138670FE0C9A8700000000060000000A0000000400000006000000020F34D104000000020000000A138670F80CFD9BFB0F350D0404548A09138670FE0C9A87000F8750F70C9A87040F8750FB0000000A000000020000000A000000000000000A000000040000000A000000020F34D104000000020000000A00000001000000000F34D10000000000045489F91386ACF8000000010CFD9BFB0000000A0F34D104000000020000000A138670F80CFD9BFB0000000A0F34D104000000020000000A00000001000000040000000A00000002120701040000000208A91309120700FE05000106135D44FD0000000A00000003135D80FD000000030CFD9BF70F350D00045489F91386ACF800000001045489FB0000000A13867104000000020000000A138670F8045489FB0000000A13867104000000020000000A00000001000000000F34D10000000000045489F90000000A138670F80000000A00000001000000040000000A0000000100000000120701000000000008A912F912073CF80000000108A912FB12073D0408A91309120700FE05000106135D44FD045489F70000000A13867100000000000000000A00000003135D80FD00000003045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB00000006000000070F34D0F80CFD9BFB0000000A00000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0000000A000000070F34D0F80CFD9BFB000000090000000700000001000000040000000A00000002120701040000000208A91309120700FE0500010600000007135D80FD0000000300000007000000040000000A120700F808A912FB12073D0408A91309120700FE05000106135D44FD0000000A00000003135D80FD00000003045489F71386AD00045489F91386ACF8000000010CFD9BFB0000000A0F34D1040000000200000007138670F80CFD9BFB000000080F34D104000000020000000900000001000000001386710000000000045489F91386ACF8000000010CFD9BFB000000080F34D104000000020000000700000009000000040000000A00000002120701040000000208A91309120700FE050001060000000A135D80FD00000003045489F70000000A138671000000000000000007000000040000000A00000001000000041151E9090000000408A912F712073D0008A912F90000000A120700F80000000A000000010000000012070100000000000000000A00000003"
theorem small_5624223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5624223_left_root small_5624223_left_fuel small_5624223_left_count small_5624223_left_encoded = true := by
  decide +kernel
theorem small_5624223_left_covered : CoveredBy scale carrier boxes small_5624223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5624223_left_root small_5624223_left_fuel small_5624223_left_count small_5624223_left_encoded small_5624223_left_checked

theorem cover_5624223 : CoveredBy scale carrier boxes root_5624223 := by
  apply coveredBy_split_literal root_5624223 small_5624223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2108.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5624223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2108.covered
#print axioms cover_5624223

def root_5624217 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5624217_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5624217_left_fuel : Nat := 1
def small_5624217_left_count : Nat := 1
def small_5624217_left_encoded : String := "00000002"
theorem small_5624217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5624217_left_root small_5624217_left_fuel small_5624217_left_count small_5624217_left_encoded = true := by
  decide +kernel
theorem small_5624217_left_covered : CoveredBy scale carrier boxes small_5624217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5624217_left_root small_5624217_left_fuel small_5624217_left_count small_5624217_left_encoded small_5624217_left_checked

theorem cover_5624217 : CoveredBy scale carrier boxes root_5624217 := by
  apply coveredBy_split_literal root_5624217 small_5624217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5624223 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5624217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5624223
#print axioms cover_5624217

def root_5622417 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5622417 : CoveredBy scale carrier boxes root_5622417 := by
  apply coveredBy_split_literal root_5622417 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2107.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5624217 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2107.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5624217
#print axioms cover_5622417

def root_5622411 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5622411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5622411_left_fuel : Nat := 1
def small_5622411_left_count : Nat := 1
def small_5622411_left_encoded : String := "00000001"
theorem small_5622411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5622411_left_root small_5622411_left_fuel small_5622411_left_count small_5622411_left_encoded = true := by
  decide +kernel
theorem small_5622411_left_covered : CoveredBy scale carrier boxes small_5622411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5622411_left_root small_5622411_left_fuel small_5622411_left_count small_5622411_left_encoded small_5622411_left_checked

theorem cover_5622411 : CoveredBy scale carrier boxes root_5622411 := by
  apply coveredBy_split_literal root_5622411 small_5622411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5622417 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5622411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5622417
#print axioms cover_5622411

def root_5622410 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5622410_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5622410_right_fuel : Nat := 22
def small_5622410_right_count : Nat := 295
def small_5622410_right_encoded : String := "1151E8F90A0001041151E8FB0A0001061151E8FD0A0000FE1152250908A912F712073D0008A91309000000050000000600000000120701000000000008A91309120700FE050000F8135D80F90000000105000104135D44FB0500010600000006135D80FD00000003000000060000000200000006000000060000000400000006000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912F712073D0008A912FD12073D0600000006000000030000000600000000120701000000000008A912FD12073D0608A91309120700FE050000F8135D80F90000000105000104135D44FB045489F70000000613867100000000000CFD9BFD0F350D06000000060000000300000006000000020000000600000006000000040000000600000003120701060000000300000006000000041151E9090000000408A912F712073D0008A912FD000000061207010600000003050000F8000000060000000600000000120701000000000008A912FD12073D0600000006000000031207010600000003050000F8135D80F900000001000000060000000600000002115224FB000000020A0001061151E8FD0A0000FE1152250908A912F712073D0008A912FB12073D0408A91309120700FE050000F8135D80F90000000105000106135D44FD0CFD9BF700000005000000060000000300000006135D44F905000106135D44FD000000050000000300000005000000010000000412073CFE00000004050000F8000000060000000600000002120701040000000208A91309120700FE050000F8135D80F90000000105000106135D44FD0000000A00000003135D80FD000000030CFD9BF70F350D00045489FB0000000500000007000000000F34D1000000000000000007135D44F905000106135D44FD0CFD9BF7000000080000000A00000003135D80FD000000030CFD9BF70000000500000006000000010000000412073CFE00000004050000F80000000A135D44F90500010600000008000000060000000100000000120701000000000008A912FB12073D0408A91309120700FE050000F8135D80F90000000105000106135D44FD00000006000000030000000600000006000000040000000600000002120701040000000208A91309120700FE050000F8000000070000000A000000040000000A000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912F712073D0008A912FB12073D0408A912FD000000060000000600000002120701040000000208A912FD12073D0608A91309120700FE050000F8135D80F9000000010CFD9BF70F350D00000000060000000000000006135D44F900000006000000010000000412073CFE00000004000000060000000312070106000000030000000600000000120701000000000008A912FB12073D0408A912FD12073D0608A91309120700FE000000060000000400000006000000030000000600000002120701040000000208A912FD12073D0608A9130900000006000000060000000300000006000000041151E9090000000408A912F712073D0008A912FB12073D040000000600000002000000060000000012070100000000000000000600000001"
theorem small_5622410_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5622410_right_root small_5622410_right_fuel small_5622410_right_count small_5622410_right_encoded = true := by
  decide +kernel
theorem small_5622410_right_covered : CoveredBy scale carrier boxes small_5622410_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5622410_right_root small_5622410_right_fuel small_5622410_right_count small_5622410_right_encoded small_5622410_right_checked

theorem cover_5622410 : CoveredBy scale carrier boxes root_5622410 := by
  apply coveredBy_split_literal root_5622410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5622411 small_5622410_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5622411
  · exact small_5622410_right_covered
#print axioms cover_5622410

def root_5622404 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5622404_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5622404_left_fuel : Nat := 1
def small_5622404_left_count : Nat := 1
def small_5622404_left_encoded : String := "00000000"
theorem small_5622404_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5622404_left_root small_5622404_left_fuel small_5622404_left_count small_5622404_left_encoded = true := by
  decide +kernel
theorem small_5622404_left_covered : CoveredBy scale carrier boxes small_5622404_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5622404_left_root small_5622404_left_fuel small_5622404_left_count small_5622404_left_encoded small_5622404_left_checked

theorem cover_5622404 : CoveredBy scale carrier boxes root_5622404 := by
  apply coveredBy_split_literal root_5622404 small_5622404_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5622410 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5622404_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5622410
#print axioms cover_5622404

def root_5620520 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5620520 : CoveredBy scale carrier boxes root_5620520 := by
  apply coveredBy_split_literal root_5620520 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2106.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5622404 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2106.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5622404
#print axioms cover_5620520

def root_5580174 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580174 : CoveredBy scale carrier boxes root_5580174 := by
  apply coveredBy_split_literal root_5580174 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0394.root_5580175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5620520 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0394.cover_5580175
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5620520
#print axioms cover_5580174

def root_5580173 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580173 : CoveredBy scale carrier boxes root_5580173 := by
  apply coveredBy_split_literal root_5580173 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5580174 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2109.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5580174
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2109.covered
#print axioms cover_5580173

def root_5631068 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5631068_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5631068_left_fuel : Nat := 26
def small_5631068_left_count : Nat := 497
def small_5631068_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A912F900000006120700F8000000060000000100000006115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000600000006120700F808A91307120701060000000308A912FF12073CFE000000040500010000000006135D80F70000000005000104135D44FB045489F9000000060000000600000002000000060000000600000006000000011151E8FF08A912F912073CF80000000108A913070000000500000006120700F808A91307120701060000000305000100135D44F705000104135D44FB050000FE0000000600000005000000020000000600000000135D80F70000000005000104135D44FB050000FE135D80FF00000004045489F900000005138670F804548A07000000050000000600000001135D44FF000000050000000400000002135D80FB00000002050000FE000000060000000512073D060500010000000006135D80F70000000005000104135D44FB0000000600000002000000060000000300000001000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FF12073CFE0000000400000006120700FE05000100135D44F705000106135D45070000000300000005135D8107000000060000000300000000135D80F70000000005000106135D45070000000300000008000000060000000400000002120701040000000208A912FF00000008120700FE05000100000000050000000800000004120700F808A912FB12073D0408A912FF12073CFE000000040500010000000006135D80F70000000005000106135D45070000000300000008000000060000000500000002120701040000000208A912FF12073CFE0000000405000100000000050000000800000005000000011151E8FF08A912F900000006120700F808A912FB000000061207010400000002000000080000000100000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A9130712070106000000030000000612073D06000000060000000300000002120701040000000208A91307120701060000000308A912FF000000060000000612073D0608A912FF12073CFE000000040500010000000006135D80F70000000000000006120700FE0500010000000006135D80F7000000000CFD9BF9000000060F34D0F800000006000000010000000400000003120700F808A912FB12073D0408A9130712070106000000030000000612073D0608A912FF12073CFE0000000400000006000000060000000300000002120701040000000208A91307120701060000000308A912FF12073CFE000000040500010000000006135D80F7000000000000000A0000000612073D0608A912FF12073CFE0000000405000100135D44F7045489F900000006138670F8045489FB000000061386710400000002000000060000000100000000135D80F700000000045489F91386ACF80000000100000006138670F8045489FB0000000613867104000000020CFD9C070F34D10600000003000000060F350D06000000050000000300000001120700FE0500010000000005135D80F700000000000000050000000400000003000000011151E8FF08A912F912073CF80000000108A912FB12073D0408A913071207010600000003000000060000000600000002120701040000000200000006120700F808A912FB12073D0408A9130712070106000000030500010000000006135D80F700000000050000FE135D80FF0000000400000006135D44FF045489F90000000500000006000000040000000600000002120701040000000208A91307120701060000000300000006000000060000000100000004000000031151E8F90A0001041151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A912FF00000006000000071151E8FF0000000500000004115225070A0000FE115224FF00000004000000061151E8FF00000005000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912FB12073D0408A912FF12073CFE0000000405000100135D44F7050000F800000006135D44F9000000080000000100000000135D80F700000000050000F800000006135D44F905000106000000060000000600000001120700FE05000100135D44F7050000F8135D80F9000000010500010600000007000000080000000700000000000000070000000400000002120701040000000208A912FF00000008120700FE00000008000000041151E8FF0000000600000004115225070A0000FE115224FF0000000408A912FB12073D0408A9130712070106000000030000000612073D0608A912FF00000006120700FE05000100135D44F7050000F8135D80F900000001000000060000000A00000000135D80F700000000050000F800000006135D44F90CFD9BFB000000060000000600000001000000040000000300000002120701040000000208A9130712070106000000030000000612073D0608A912FF0000000A120700FE050001000000000A135D80F700000000050000F8000000060000000A00000004000000031151E8FF0000000600000004000000030000000100000000"
theorem small_5631068_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5631068_left_root small_5631068_left_fuel small_5631068_left_count small_5631068_left_encoded = true := by
  decide +kernel
theorem small_5631068_left_covered : CoveredBy scale carrier boxes small_5631068_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5631068_left_root small_5631068_left_fuel small_5631068_left_count small_5631068_left_encoded small_5631068_left_checked

theorem cover_5631068 : CoveredBy scale carrier boxes root_5631068 := by
  apply coveredBy_split_literal root_5631068 small_5631068_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2110.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5631068_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2110.covered
#print axioms cover_5631068

def root_5631067 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5631067 : CoveredBy scale carrier boxes root_5631067 := by
  apply coveredBy_split_literal root_5631067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5631068 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2111.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5631068
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2111.covered
#print axioms cover_5631067

def root_5637143 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5637143 : CoveredBy scale carrier boxes root_5637143 := by
  apply coveredBy_split_literal root_5637143 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2112.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2113.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2112.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2113.covered
#print axioms cover_5637143

def root_5643290 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5643290 : CoveredBy scale carrier boxes root_5643290 := by
  apply coveredBy_split_literal root_5643290 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2115.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2116.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2115.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2116.covered
#print axioms cover_5643290

def root_5643284 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5643284_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5643284_left_fuel : Nat := 1
def small_5643284_left_count : Nat := 1
def small_5643284_left_encoded : String := "00000000"
theorem small_5643284_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5643284_left_root small_5643284_left_fuel small_5643284_left_count small_5643284_left_encoded = true := by
  decide +kernel
theorem small_5643284_left_covered : CoveredBy scale carrier boxes small_5643284_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5643284_left_root small_5643284_left_fuel small_5643284_left_count small_5643284_left_encoded small_5643284_left_checked

theorem cover_5643284 : CoveredBy scale carrier boxes root_5643284 := by
  apply coveredBy_split_literal root_5643284 small_5643284_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5643290 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5643284_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5643290
#print axioms cover_5643284

def root_5641478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5641478 : CoveredBy scale carrier boxes root_5641478 := by
  apply coveredBy_split_literal root_5641478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2114.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5643284 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2114.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5643284
#print axioms cover_5641478

def root_5637142 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5637142 : CoveredBy scale carrier boxes root_5637142 := by
  apply coveredBy_split_literal root_5637142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5637143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5641478 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5637143
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5641478
#print axioms cover_5637142

def root_5631066 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5631066 : CoveredBy scale carrier boxes root_5631066 := by
  apply coveredBy_split_literal root_5631066 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5631067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5637142 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5631067
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5637142
#print axioms cover_5631066

def root_5580172 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580172 : CoveredBy scale carrier boxes root_5580172 := by
  apply coveredBy_split_literal root_5580172 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5580173 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5631066 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5580173
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5631066
#print axioms cover_5580172

def root_5561890 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561890 : CoveredBy scale carrier boxes root_5561890 := by
  apply coveredBy_split_literal root_5561890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5561891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5580172 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5561891
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5580172
#print axioms cover_5561890

def root_5647567 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5647567 : CoveredBy scale carrier boxes root_5647567 := by
  apply coveredBy_split_literal root_5647567 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2117.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2118.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2117.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2118.covered
#print axioms cover_5647567

def root_5647566 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5647566 : CoveredBy scale carrier boxes root_5647566 := by
  apply coveredBy_split_literal root_5647566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5647567 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2119.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5647567
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2119.covered
#print axioms cover_5647566

def root_5652764 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652764 : CoveredBy scale carrier boxes root_5652764 := by
  apply coveredBy_split_literal root_5652764 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2120.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2121.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2120.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2121.covered
#print axioms cover_5652764

def root_5652758 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5652758_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5652758_left_fuel : Nat := 1
def small_5652758_left_count : Nat := 1
def small_5652758_left_encoded : String := "00000002"
theorem small_5652758_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5652758_left_root small_5652758_left_fuel small_5652758_left_count small_5652758_left_encoded = true := by
  decide +kernel
theorem small_5652758_left_covered : CoveredBy scale carrier boxes small_5652758_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5652758_left_root small_5652758_left_fuel small_5652758_left_count small_5652758_left_encoded small_5652758_left_checked

theorem cover_5652758 : CoveredBy scale carrier boxes root_5652758 := by
  apply coveredBy_split_literal root_5652758 small_5652758_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5652764 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5652758_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5652764
#print axioms cover_5652758

def root_5657949 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657949_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657949_right_fuel : Nat := 19
def small_5657949_right_count : Nat := 203
def small_5657949_right_encoded : String := "120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD00000008000000080F350D04045489FD0000000800000008000000020F34D0F80CFD9C050F34D10400000002045489FD1386ACFC000000030CFD9BFF000000080F34D10800000004028001000000000813D7ECF7000000000AD357790000000800000009138670FC00000009000000030F350D04045489FD1386ACFC000000030CFD9BFF000000080000000500000005000000020000000100000000135D80F7000000000CFD9BF90F350CF8000000010CFD9C05000000090F350D04045489FD1386ACFC000000030CFD9BFF000000090F34D108000000040000000900000009000000020F34D0F80CFD9C050F34D10400000002000000090F350D04045489FD1386ACFC000000030CFD9BFF000000090F34D108000000040C9A87040F87510500000002000000050F878D050000000900000002138670FC0000000900000003000000020000000100000004120701080000000405000100135D44F70CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD00000006000000060F350D04045489FD1386ACFC00000003045489FF00000008138671080000000400000008138670FC0000000500000003000000020F34D0F80CFD9C050F34D104000000020000000A000000050000000100000000135D80F7000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC00000003045489FF1386AD080C9A86F80000000A00000009000000040000000A138670FC0000000A000000030F350D04045489FD1386ACFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A87040F87510500000002000000050F878D05078001000000000800000009000000020F8750F900000008000000010000000413867108000000040C9A86F80F878CF9000000010C9A8704000000050000000A0F8750F90C9A8704000000060000000600000001138670FC045489FF1386AD0800000009000000040000000500000003000000020F34D0F80CFD9C050F34D104000000020000000A0F350D0400000005000000020000000100000003"
theorem small_5657949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5657949_right_root small_5657949_right_fuel small_5657949_right_count small_5657949_right_encoded = true := by
  decide +kernel
theorem small_5657949_right_covered : CoveredBy scale carrier boxes small_5657949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5657949_right_root small_5657949_right_fuel small_5657949_right_count small_5657949_right_encoded small_5657949_right_checked

theorem cover_5657949 : CoveredBy scale carrier boxes root_5657949 := by
  apply coveredBy_split_literal root_5657949 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2122.root small_5657949_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2122.covered
  · exact small_5657949_right_covered
#print axioms cover_5657949

def root_5657944 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657944_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657944_right_fuel : Nat := 1
def small_5657944_right_count : Nat := 1
def small_5657944_right_encoded : String := "00000002"
theorem small_5657944_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5657944_right_root small_5657944_right_fuel small_5657944_right_count small_5657944_right_encoded = true := by
  decide +kernel
theorem small_5657944_right_covered : CoveredBy scale carrier boxes small_5657944_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5657944_right_root small_5657944_right_fuel small_5657944_right_count small_5657944_right_encoded small_5657944_right_checked

theorem cover_5657944 : CoveredBy scale carrier boxes root_5657944 := by
  apply coveredBy_split_literal root_5657944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5657949 small_5657944_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5657949
  · exact small_5657944_right_covered
#print axioms cover_5657944

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395
