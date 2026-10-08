import TaoBundleAssembly0137
import TaoBundleAssembly0138
import TaoBundleChunkBatch0527
import TaoBundleChunkBatch0528
import TaoBundleChunkBatch0529
import TaoBundleChunkBatch0530
import TaoBundleChunkBatch0531
import TaoBundleChunkBatch0532
import TaoBundleChunkBatch0533
import TaoBundleChunkBatch0534
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139
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
  apply coveredBy_split_literal root_5622410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0138.root_5622411 small_5622410_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0138.cover_5622411
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
  apply coveredBy_split_literal root_5622404 small_5622404_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5622410 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5622404_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5622410
#print axioms cover_5622404

def root_5620520 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5620520 : CoveredBy scale carrier boxes root_5620520 := by
  apply coveredBy_split_literal root_5620520 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2106.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5622404 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2106.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5622404
#print axioms cover_5620520

def root_5580174 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580174 : CoveredBy scale carrier boxes root_5580174 := by
  apply coveredBy_split_literal root_5580174 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0138.root_5580175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5620520 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0138.cover_5580175
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5620520
#print axioms cover_5580174

def root_5580173 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580173 : CoveredBy scale carrier boxes root_5580173 := by
  apply coveredBy_split_literal root_5580173 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5580174 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2109.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5580174
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
  apply coveredBy_split_literal root_5631067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5631068 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2111.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5631068
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
  apply coveredBy_split_literal root_5643284 small_5643284_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5643290 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5643284_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5643290
#print axioms cover_5643284

def root_5641478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5641478 : CoveredBy scale carrier boxes root_5641478 := by
  apply coveredBy_split_literal root_5641478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2114.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5643284 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2114.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5643284
#print axioms cover_5641478

def root_5637142 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5637142 : CoveredBy scale carrier boxes root_5637142 := by
  apply coveredBy_split_literal root_5637142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5637143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5641478 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5637143
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5641478
#print axioms cover_5637142

def root_5631066 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5631066 : CoveredBy scale carrier boxes root_5631066 := by
  apply coveredBy_split_literal root_5631066 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5631067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5637142 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5631067
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5637142
#print axioms cover_5631066

def root_5580172 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580172 : CoveredBy scale carrier boxes root_5580172 := by
  apply coveredBy_split_literal root_5580172 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5580173 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5631066 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5580173
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5631066
#print axioms cover_5580172

def root_5561890 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561890 : CoveredBy scale carrier boxes root_5561890 := by
  apply coveredBy_split_literal root_5561890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.root_5561891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5580172 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0137.cover_5561891
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5580172
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
  apply coveredBy_split_literal root_5647566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5647567 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2119.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5647567
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
  apply coveredBy_split_literal root_5652758 small_5652758_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5652764 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5652758_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5652764
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
  apply coveredBy_split_literal root_5657944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5657949 small_5657944_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5657949
  · exact small_5657944_right_covered
#print axioms cover_5657944

def root_5657656 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657656_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657656_left_fuel : Nat := 15
def small_5657656_left_count : Nat := 135
def small_5657656_left_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05000000071386AD040CFD9BFD000000070F34D0FC0000000700000003000000020F34D0F804548A05000000071386AD040CFD9BFD000000070F34D0FC0000000700000003000000020000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A0513867104000000020CFD9BFD00000005000000091386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0000000900000003000000020F34D0F804548A0513867104000000020CFD9BFD000000070F34D0FC00000007000000031386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000090000000700000003000000020000000100000004120701080000000405000100135D44F70CFD9BF90F350CF800000001000000060000000700000000135D80F7000000000CFD9BF90F350CF80000000104548A05000000061386AD040CFD9BFD0000000700000006000000020F34D0F80000000A00000001120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF800000001000000090F34D0F804548A05000000091386AD04045489FD1386ACFC000000030CFD9BFF0000000900000007000000090000000200000001000000000000000900000004120701080000000405000100135D44F70CFD9BF9000000060000000A000000000000000A00000003"
theorem small_5657656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5657656_left_root small_5657656_left_fuel small_5657656_left_count small_5657656_left_encoded = true := by
  decide +kernel
theorem small_5657656_left_covered : CoveredBy scale carrier boxes small_5657656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5657656_left_root small_5657656_left_fuel small_5657656_left_count small_5657656_left_encoded small_5657656_left_checked

theorem cover_5657656 : CoveredBy scale carrier boxes root_5657656 := by
  apply coveredBy_split_literal root_5657656 small_5657656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5657944 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5657656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5657944
#print axioms cover_5657656

def root_5657650 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657650_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657650_left_fuel : Nat := 1
def small_5657650_left_count : Nat := 1
def small_5657650_left_encoded : String := "00000001"
theorem small_5657650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5657650_left_root small_5657650_left_fuel small_5657650_left_count small_5657650_left_encoded = true := by
  decide +kernel
theorem small_5657650_left_covered : CoveredBy scale carrier boxes small_5657650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5657650_left_root small_5657650_left_fuel small_5657650_left_count small_5657650_left_encoded small_5657650_left_checked

theorem cover_5657650 : CoveredBy scale carrier boxes root_5657650 := by
  apply coveredBy_split_literal root_5657650 small_5657650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5657656 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5657650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5657656
#print axioms cover_5657650

def root_5657649 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5657649 : CoveredBy scale carrier boxes root_5657649 := by
  apply coveredBy_split_literal root_5657649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5657650 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2123.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5657650
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2123.covered
#print axioms cover_5657649

def root_5657643 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657643_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5657643_left_fuel : Nat := 1
def small_5657643_left_count : Nat := 1
def small_5657643_left_encoded : String := "00000004"
theorem small_5657643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5657643_left_root small_5657643_left_fuel small_5657643_left_count small_5657643_left_encoded = true := by
  decide +kernel
theorem small_5657643_left_covered : CoveredBy scale carrier boxes small_5657643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5657643_left_root small_5657643_left_fuel small_5657643_left_count small_5657643_left_encoded small_5657643_left_checked

theorem cover_5657643 : CoveredBy scale carrier boxes root_5657643 := by
  apply coveredBy_split_literal root_5657643 small_5657643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5657649 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5657643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5657649
#print axioms cover_5657643

def root_5656965 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5656965_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5656965_left_fuel : Nat := 23
def small_5656965_left_count : Nat := 321
def small_5656965_left_encoded : String := "1151E8FF08A912F912073CF80000000108A91305120701040000000208A912FD12073CFC0000000305000100135D44F705000108135D44FF0000000900000004135D80FF000000040CFD9BF9000000050F34D0F804548A05000000051386AD040CFD9BFD0000000500000007000000020000000100000000135D80F700000000000000090000000912073D0408A912FD12073CFC0000000305000100135D44F705000108135D44FF0CFD9BF90F350CF8000000010CFD9C05000000070F350D0400000007000000020F34D0F80CFD9C050F34D104000000020CFD9BFD00000007000000090F350D040CFD9BFD000000060F34D0FC0000000600000003000000020000000100000004135D80FF000000040CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D040CFD9BFD000000070F34D0FC0000000800000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD000000070F34D0FC00000007000000030F350D040CFD9BFD000000070F34D0FC0000000800000003000000020000000100000000135D80F70000000005000108135D44FF0CFD9BF90F350CF8000000010CFD9C05000000090F350D0400000009000000020F34D0F80CFD9C0500000009000000060000000100000004135D80FF000000040CFD9BF90F350CF8000000010CFD9C05000000090F350D040CFD9BFD0F350CFC000000030C9A86F80F878CF9000000010C9A8704000000060F878D0500000007000000020000000700000009000000020F34D0F80CFD9C050F34D10400000002000000090F350D040CFD9BFD000000060F34D0FC00000006000000030000000200000001120700FC05000100135D44F70500010800000009135D80FF000000040CFD9BF9000000080000000900000000000000090000000300000002120700F808A91305120701040000000208A912FD12073CFC0000000305000100135D44F705000108135D44FF045489F9000000090000000900000004135D80FF00000004045489F91386ACF80000000104548A05000000091386AD040CFD9BFD0F350CFC000000030C9A86FC000000070F8750FD00000005000000030000000900000002138670F804548A05000000091386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000090F8750FD0280010013D7B0F707800108000000060000000700000000000000060000000300000009000000020000000100000000135D80F7000000000500010800000009000000090000000912073D0408A912FD12073CFC0000000305000100135D44F705000108135D44FF045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0000000600000009000000060000000600000004135D80FF00000004045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC000000070F8750FD00000007000000030F34D0FC00000007000000030F350D040CFD9BFD000000060F34D0FC000000060000000300000002138670F80CFD9C050F34D104000000020CFD9BFD000000060F34D0FC0000000600000003000000060000000100000000135D80F7000000000500010800000006135D80FF00000004045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD00000006000000090000000600000006120700FC05000100135D44F70500010800000009135D80FF00000004045489F90000000900000005000000000000000900000003000000020000000100000004"
theorem small_5656965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5656965_left_root small_5656965_left_fuel small_5656965_left_count small_5656965_left_encoded = true := by
  decide +kernel
theorem small_5656965_left_covered : CoveredBy scale carrier boxes small_5656965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5656965_left_root small_5656965_left_fuel small_5656965_left_count small_5656965_left_encoded small_5656965_left_checked

theorem cover_5656965 : CoveredBy scale carrier boxes root_5656965 := by
  apply coveredBy_split_literal root_5656965 small_5656965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5657643 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5656965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5657643
#print axioms cover_5656965

def root_5656959 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5656959_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5656959_left_fuel : Nat := 1
def small_5656959_left_count : Nat := 1
def small_5656959_left_encoded : String := "00000003"
theorem small_5656959_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5656959_left_root small_5656959_left_fuel small_5656959_left_count small_5656959_left_encoded = true := by
  decide +kernel
theorem small_5656959_left_covered : CoveredBy scale carrier boxes small_5656959_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5656959_left_root small_5656959_left_fuel small_5656959_left_count small_5656959_left_encoded small_5656959_left_checked

theorem cover_5656959 : CoveredBy scale carrier boxes root_5656959 := by
  apply coveredBy_split_literal root_5656959 small_5656959_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5656965 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5656959_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5656965
#print axioms cover_5656959

def root_5656958 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5656958 : CoveredBy scale carrier boxes root_5656958 := by
  apply coveredBy_split_literal root_5656958 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5656959 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2124.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5656959
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2124.covered
#print axioms cover_5656958

def root_5656953 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5656953_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5656953_right_fuel : Nat := 1
def small_5656953_right_count : Nat := 1
def small_5656953_right_encoded : String := "00000002"
theorem small_5656953_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5656953_right_root small_5656953_right_fuel small_5656953_right_count small_5656953_right_encoded = true := by
  decide +kernel
theorem small_5656953_right_covered : CoveredBy scale carrier boxes small_5656953_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5656953_right_root small_5656953_right_fuel small_5656953_right_count small_5656953_right_encoded small_5656953_right_checked

theorem cover_5656953 : CoveredBy scale carrier boxes root_5656953 := by
  apply coveredBy_split_literal root_5656953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5656958 small_5656953_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5656958
  · exact small_5656953_right_covered
#print axioms cover_5656953

def root_5652757 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652757 : CoveredBy scale carrier boxes root_5652757 := by
  apply coveredBy_split_literal root_5652757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5652758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5656953 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5652758
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5656953
#print axioms cover_5652757

def root_5652751 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5652751_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5652751_left_fuel : Nat := 1
def small_5652751_left_count : Nat := 1
def small_5652751_left_encoded : String := "00000001"
theorem small_5652751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5652751_left_root small_5652751_left_fuel small_5652751_left_count small_5652751_left_encoded = true := by
  decide +kernel
theorem small_5652751_left_covered : CoveredBy scale carrier boxes small_5652751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5652751_left_root small_5652751_left_fuel small_5652751_left_count small_5652751_left_encoded small_5652751_left_checked

theorem cover_5652751 : CoveredBy scale carrier boxes root_5652751 := by
  apply coveredBy_split_literal root_5652751 small_5652751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5652757 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5652751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5652757
#print axioms cover_5652751

def root_5652750 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652750 : CoveredBy scale carrier boxes root_5652750 := by
  apply coveredBy_split_literal root_5652750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5652751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2125.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5652751
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2125.covered
#print axioms cover_5652750

def root_5652745 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5652745_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5652745_right_fuel : Nat := 1
def small_5652745_right_count : Nat := 1
def small_5652745_right_encoded : String := "00000000"
theorem small_5652745_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5652745_right_root small_5652745_right_fuel small_5652745_right_count small_5652745_right_encoded = true := by
  decide +kernel
theorem small_5652745_right_covered : CoveredBy scale carrier boxes small_5652745_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5652745_right_root small_5652745_right_fuel small_5652745_right_count small_5652745_right_encoded small_5652745_right_checked

theorem cover_5652745 : CoveredBy scale carrier boxes root_5652745 := by
  apply coveredBy_split_literal root_5652745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5652750 small_5652745_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5652750
  · exact small_5652745_right_covered
#print axioms cover_5652745

def root_5673751 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5673751 : CoveredBy scale carrier boxes root_5673751 := by
  apply coveredBy_split_literal root_5673751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2129.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2130.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2129.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2130.covered
#print axioms cover_5673751

def root_5673745 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5673745_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5673745_left_fuel : Nat := 1
def small_5673745_left_count : Nat := 1
def small_5673745_left_encoded : String := "00000004"
theorem small_5673745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5673745_left_root small_5673745_left_fuel small_5673745_left_count small_5673745_left_encoded = true := by
  decide +kernel
theorem small_5673745_left_covered : CoveredBy scale carrier boxes small_5673745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5673745_left_root small_5673745_left_fuel small_5673745_left_count small_5673745_left_encoded small_5673745_left_checked

theorem cover_5673745 : CoveredBy scale carrier boxes root_5673745 := by
  apply coveredBy_split_literal root_5673745 small_5673745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5673751 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5673745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5673751
#print axioms cover_5673745

def root_5672811 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672811_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672811_left_fuel : Nat := 24
def small_5672811_left_count : Nat := 441
def small_5672811_left_encoded : String := "13E201080DE7CA000E5FD8F70B4D43F810804CF9000000010B4D43FC10804CFD000000030640010412FF710500000002033F67BF0000000613BBF508000000040D4128800EFA10F70BF3E578000000051008ECF90000000800000001000000000000000612FFAD05033F67BF13BC31080D4128800EFA10F70BF3E578100928F9000000010000000600000008000000000EFA4CF700000000000000060000000413BBF508000000040D4128800EFA10F70BF3E578100928F9000000010BF3E57C100928FD00000003000000051008ECFD06E0010412C7E505000000020000000612C8210502B4D69F000000060000000A00000002000000031008ECF90BF3E57C000000081008ECFD000000080000000300000001000000000EFA4CF7000000000BF3E578100928F9000000010BF3E57C000000061008ECFD00000006000000031008ECF90BF3E57C000000091008ECFD06E001040000000900000009000000030000000100000002108010FD0640010412FF710500000002033F67BF0000000613BBF508000000040D4128800EFA10F70BF3E578000000061008ECF90AA6A27C10EDACFD0000000305A001040000000613317105000000060000000210ED70FD000000060000000300000001000000000000000612FFAD05033F67BF13BC31080D4128800EFA10F70BF3E578100928F900000001000000061008ECF90AA6A27C00000008000000070000000100000000000000060000000413BBF508000000040D4128800EFA10F70BF3E578100928F9000000010AA6A27C10EDACFD0000000306E001040000000600000007000000071008ECF90AA6A27C10EDACFD0000000306E0010412C7E5050000000202B4D69F0000000700000007000000070000000700000001000000000EFA4CF7000000000BF3E578100928F900000001000000061008ECF90AA6A27C10EDACFD0000000306E0010412C7E505000000020000000612C8210502B4D69F0000000613D0D108000000040D947940000000070EAEE8F700000000000000070000000210ED70FD06E00104000000060000000700000003000000010000000200000003108010F90B4D43FC10804CFD000000030640010412FF710500000002033F67BF0000000813BBF508000000040D412880000000080EFA4CF7000000000000000912FFAD05033F67BF0000000813BBF508000000040D412880000000080EFA4CF7000000000000000900000002108010FD0640010412FF710500000002033F67BF13BC31080D412880000000080EFA4CF7000000000AA6A27800000006000000080000000413BBF508000000040D4128800EFA10F70AA6A27810EDACF9000000010AA6A27C0000000810ED70FD000000080000000300000008000000000EFA4CF7000000000AA6A27810EDACF9000000010AA6A27C10EDACFD0000000305A00104000000061331710502B4D69F0000000613D0D108000000040D94794000000008000000060000000210ED70FD000000060000000310ED70F90AA6A27C0000000810ED70FD00000008000000030000000112FFAD05033F67BF13BC31080D4128800EFA10F700000008000000000EFA4CF7000000000AA6A27810EDACF9000000010AA6A27C0000000810ED70FD0000000500000003000000090000000413BBF508000000040D4128800EFA10F70AA6A27810EDACF9000000010AA6A27C0000000810ED70FD000000070000000300000008000000000EFA4CF7000000000AA6A27810EDACF9000000010AA6A27C10EDACFD0000000306E001040000000912C82105000000090000000210ED70FD06E0010412C7E5050000000202B4D69F0000000600000007000000070000000310ED70F90AA6A27C0000000810ED70FD000000050000000300000001000000020000000300000001000000000E6014F7000000000B4D43F810804CF9000000010B4D43FC10804CFD00000003064001040000000612FFAD05033F67BF0000000613BBF508000000040DAED8770E9661000BF3E5780000000600000009000000000000000900000002108010FD064001040000000612FFAD05033F67BF0000000613BBF508000000040DAED8770E9661000BF3E578000000061008ECF90AA6A27C00000006000000060000000100000000000000060000000200000003108010F90B4D43FC10804CFD00000003064001040000000900000009108010FD0640010412FF710500000002033F67BF0000000613BBF508000000040DAED8770E9661000AA6A2780000000610ED70F90000000900000001000000000E962500000000000000000612FFAD05033F67BF0000000913BBF508000000040DAED8770E9661000AA6A27810EDACF9000000010AA6A27C0000000910ED70FD06E0010400000006000000050000000300000009000000000E962500000000000000000900000002000000030000000100000004"
theorem small_5672811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672811_left_root small_5672811_left_fuel small_5672811_left_count small_5672811_left_encoded = true := by
  decide +kernel
theorem small_5672811_left_covered : CoveredBy scale carrier boxes small_5672811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672811_left_root small_5672811_left_fuel small_5672811_left_count small_5672811_left_encoded small_5672811_left_checked

theorem cover_5672811 : CoveredBy scale carrier boxes root_5672811 := by
  apply coveredBy_split_literal root_5672811 small_5672811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5673745 coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_5672811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5673745
#print axioms cover_5672811

def root_5672805 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672805_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672805_left_fuel : Nat := 1
def small_5672805_left_count : Nat := 1
def small_5672805_left_encoded : String := "00000002"
theorem small_5672805_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672805_left_root small_5672805_left_fuel small_5672805_left_count small_5672805_left_encoded = true := by
  decide +kernel
theorem small_5672805_left_covered : CoveredBy scale carrier boxes small_5672805_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672805_left_root small_5672805_left_fuel small_5672805_left_count small_5672805_left_encoded small_5672805_left_checked

theorem cover_5672805 : CoveredBy scale carrier boxes root_5672805 := by
  apply coveredBy_split_literal root_5672805 small_5672805_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5672811 coord2 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_5672805_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5672811
#print axioms cover_5672805

def root_5672804 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672804_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672804_right_fuel : Nat := 21
def small_5672804_right_count : Nat := 493
def small_5672804_right_encoded : String := "128A7D05022A457F13E201080DE7CA000E5FD8F70B4D43F810804CF9000000010B4D43FC10804CFD0000000308C0010411FBE90500000002033F67BF13BC31080D4128800EFA10F70BF3E578100928F9000000010BF3E57C000000091008ECFD00000007000000030000000900000000000000090000000413BBF508000000040D4128800EFA10F70BF3E578100928F9000000010BF3E57C0000000A1008ECFD00000007000000031008ECF90BF3E57C000000081008ECFD0820010400000007000000070000000300000001000000000EFA4CF7000000000BF3E578100928F9000000010000000A1008ECF9000000090000000111FC2505033F67BF13BC31080D4128800EFA10F70BF3E5780000000A000000070000000000000009000000040000000A00000002108010FD08C0010411FBE90500000002033F67BF13BC31080D412880000000070EFA4CF7000000000BF3E578100928F900000001000000071008ECF90AA6A27C0000000700000005000000010000000413BBF508000000040D4128800EFA10F700000007000000000EFA4CF7000000000BF3E578100928F9000000010AA6A27C00000007000000071008ECF90AA6A27C00000007000000070000000111FC2505033F67BF00000007000000070000000200000003108010F90B4D43FC10804CFD0000000308C0010411FBE90500000002033F67BF0000000913BBF508000000040D4128800EFA10F700000008000000000000000911FC2505033F67BF0000000913BBF508000000040D4128800EFA10F70AA6A2780000000A00000005000000000000000900000002108010FD08C0010411FBE90500000002033F67BF0000000513BBF508000000040D4128800EFA10F700000007000000000EFA4CF7000000000AA6A27810EDACF9000000010AA6A27C000000070000000500000005000000050000000300000001000000000E6014F7000000000B4D43F810804CF9000000010B4D43FC10804CFD0000000308C0010411FBE90500000002033F67BF0000000913BBF508000000040DAED877000000090000000911FC25050000000900000002108010FD08C0010411FBE90500000002033F67BF13BC31080DAED8770E9661000BF3E5780000000600000009000000000E96250000000000000000060000000413BBF508000000040DAED8770E9661000BF3E578100928F9000000010AA6A27C10EDACFD0000000308200104000000060000000A10ED70FD00000007000000031008ECF90AA6A27C10EDACFD000000030000000910ED70FD000000050000000300000001000000000E962500000000000BF3E578100928F900000001000000060000000911FC2505033F67BF13BC31080DAED87700000005000000090000000413BBF508000000040DAED8770E9661000BF3E5780000000A00000005000000000E962500000000000000000A0000000200000003108010F90B4D43FC10804CFD0000000300000009108010FD08C0010411FBE90500000002033F67BF0000000513BBF508000000040DAED877000000050E96250000000000000000050000000500000003000000010000000413E1C508000000040DE7CA000E5FD8F70B4D43F810804CF9000000010B4D43FC10804CFD0000000308C0010411FBE905000000020115233F13F895080D4128800EFA10F70000000A000000000000000A000000040000000A0000000A108010FD08C0010411FBE905000000020115233F13F895080D4128800EFA10F700000007000000000EFA4CF7000000000BF3E5780000000A1008ECF90AA6A27C0000000A0000000700000001000000040000000A0000000A00000003108010F90B4D43FC10804CFD0000000308C0010411FBE905000000020115233F13F895080D4128800EFA10F70AA6A2780000000A00000008000000000EFA4CF7000000000AA6A2780000000A10ED70F90000000900000001000000040000000A0000000A108010FD08C0010411FBE905000000020115233F13F895080D4128800EFA10F700000007000000000EFA4CF7000000000AA6A27810EDACF9000000010AA6A27C0000000A0000000710ED70F900000005000000010000000413F85908000000040D412880000000060EFA4CF7000000000AA6A2780000000A10ED70F9000000060000000111FC25050115233F0000000500000006000000020000000300000001000000000E6014F7000000000B4D43F810804CF9000000010B4D43FC10804CFD0000000308C001040000000A0000000A108010FD08C0010411FBE905000000020115233F13F895080DAED8770E9661000BF3E5780000000A1008ECF90AA6A27C0000000A10ED70FD0000000A0000000300000001000000000E962500000000000BF3E5780000000A1008ECF90000000A00000001000000040000000A0000000A00000003108010F90B4D43FC10804CFD0000000308C0010411FBE905000000020115233F13F895080DAED8770000000900000009000000040000000A0000000A108010FD08C0010411FBE905000000020115233F13F895080DAED8770E9661000AA6A27810EDACF9000000010AA6A27C0000000A0000000500000005000000000E962500000000000AA6A27810EDACF9000000010AA6A27C0000000900000005000000050000000413F85908000000040DAED8770000000A0E962500000000000000000A11FC25050115233F000000050000000A00000002000000030000000100000002"
theorem small_5672804_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672804_right_root small_5672804_right_fuel small_5672804_right_count small_5672804_right_encoded = true := by
  decide +kernel
theorem small_5672804_right_covered : CoveredBy scale carrier boxes small_5672804_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672804_right_root small_5672804_right_fuel small_5672804_right_count small_5672804_right_encoded small_5672804_right_checked

theorem cover_5672804 : CoveredBy scale carrier boxes root_5672804 := by
  apply coveredBy_split_literal root_5672804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5672805 small_5672804_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5672805
  · exact small_5672804_right_covered
#print axioms cover_5672804

def root_5672799 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672799_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672799_right_fuel : Nat := 1
def small_5672799_right_count : Nat := 1
def small_5672799_right_encoded : String := "00000003"
theorem small_5672799_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672799_right_root small_5672799_right_fuel small_5672799_right_count small_5672799_right_encoded = true := by
  decide +kernel
theorem small_5672799_right_covered : CoveredBy scale carrier boxes small_5672799_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672799_right_root small_5672799_right_fuel small_5672799_right_count small_5672799_right_encoded small_5672799_right_checked

theorem cover_5672799 : CoveredBy scale carrier boxes root_5672799 := by
  apply coveredBy_split_literal root_5672799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5672804 small_5672799_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5672804
  · exact small_5672799_right_covered
#print axioms cover_5672799

def root_5672385 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672385_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672385_left_fuel : Nat := 18
def small_5672385_left_count : Nat := 193
def small_5672385_left_encoded : String := "0F878CFD0000000307800104128A410500000002022A457F13E201080DE7CA000E5FD8F70B4D43F810804CF9000000010DE7C9FC0E6014FD00000003000000050E5FD8FD0640010412FF7105000000020000000512FFAD05033F67BF0000000913BBF508000000040D41288000000005000000090000000200000003108010F90DE7C9FC000000080E5FD8FD000000080000000300000001000000000E6014F7000000000B4D43F810804CF90000000100000009000000090000000413E1C508000000040DE7CA000E5FD8F70B4D43F810804CF90000000100000005108010F90DE7C9FC0E6014FD00000003000000050E5FD8FD0640010412FF7105000000020115233F000000080000000512FFAD050115233F13F895080D41288000000008000000090000000413F85908000000040D4128800EFA10F700000008000000000000000A000000020000000300000001000000000E6014F7000000000B4D43F810804CF9000000010DE7C9FC000000050E5FD8FD064001040000000512FFAD050115233F00000009000000050000000200000003108010F90DE7C9FC000000090E5FD8FD064001040000000912FFAD0500000009000000020000000300000001128A7D05022A457F13E201080DE7CA000E5FD8F70B4D43F810804CF9000000010DE7C9FC000000090E5FD8FD08C0010411FBE90500000002033F67BF0000000913BBF508000000040D4128800EFA10F700000009000000000000000911FC2505000000090000000200000003108010F90000000900000001000000000E6014F700000000000000090000000413E1C508000000040DE7CA000E5FD8F70B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0000000A00000003108010F90DE7C9FC0000000A0E5FD8FD08C0010411FBE905000000020115233F13F895080D4128800000000800000009000000040000000A0000000A0000000300000001000000000E6014F7000000000B4D43F810804CF9000000010000000A108010F90DE7C9FC000000090E5FD8FD08C001040000000900000009000000030000000100000002"
theorem small_5672385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672385_left_root small_5672385_left_fuel small_5672385_left_count small_5672385_left_encoded = true := by
  decide +kernel
theorem small_5672385_left_covered : CoveredBy scale carrier boxes small_5672385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672385_left_root small_5672385_left_fuel small_5672385_left_count small_5672385_left_encoded small_5672385_left_checked

theorem cover_5672385 : CoveredBy scale carrier boxes root_5672385 := by
  apply coveredBy_split_literal root_5672385 small_5672385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5672799 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5672385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5672799
#print axioms cover_5672385

def root_5672380 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672380_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672380_right_fuel : Nat := 1
def small_5672380_right_count : Nat := 1
def small_5672380_right_encoded : String := "00000001"
theorem small_5672380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672380_right_root small_5672380_right_fuel small_5672380_right_count small_5672380_right_encoded = true := by
  decide +kernel
theorem small_5672380_right_covered : CoveredBy scale carrier boxes small_5672380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672380_right_root small_5672380_right_fuel small_5672380_right_count small_5672380_right_encoded small_5672380_right_checked

theorem cover_5672380 : CoveredBy scale carrier boxes root_5672380 := by
  apply coveredBy_split_literal root_5672380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5672385 small_5672380_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5672385
  · exact small_5672380_right_covered
#print axioms cover_5672380

def root_5671538 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671538_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671538_left_fuel : Nat := 25
def small_5671538_left_count : Nat := 397
def small_5671538_left_encoded : String := "0F878CF9000000010C9A86FC0F878CFD0000000307800104128A410500000002022A457F13E201080DE7CA00000000050E6014F700000000000000050000000400000005128A7D05022A457F13E201080DE7CA000E5FD8F70DE7C9F80E6014F9000000010DE7C9FC000000050E5FD8FD08C00104000000050000000A000000030E5FD8F90DE7C9FC0E6014FD0000000308C0010400000005000000090E5FD8FD08C0010411FBE90500000002033F67BF13BC310800000009000000040000000A0000000A0000000300000001000000000E6014F7000000000DE7C9F80E6014F9000000010DE7C9FC000000050E5FD8FD00000006000000030E5FD8F90DE7C9FC000000090E5FD8FD08C00104000000090000000A00000003000000010000000413E1C508000000040DE7CA000E5FD8F70000000A000000000000000A000000020F8750FD07800104128A410500000002022A457F13E201080DE7CA000E5FD8F70DE7C9F80E6014F900000001000000060E5FD8F90B4D43FC10804CFD00000003064001040000000612FFAD05033F67BF0000000613BBF508000000040D412880000000050000000600000002108010FD00000006000000030000000100000000000000060000000413E1C508000000040DE7CA000E5FD8F70DE7C9F80E6014F900000001000000050E5FD8F90B4D43FC10804CFD0000000300000005108010FD0640010412FF7105000000020115233F000000060000000512FFAD050115233F13F895080D4128800EFA10F70D4128780EFA4CF900000001000000050EFA10F90AA6A27C10EDACFD0000000306E0010400000005000000070000000700000001000000000EFA4CF7000000000D412878000000060EFA10F90AA6A27C0000000610ED70FD0000000600000003000000010000000413F85908000000040D4128800EFA10F70000000A000000000000000A000000020000000300000001000000000E6014F7000000000DE7C9F80E6014F900000001000000050E5FD8F90B4D43FC10804CFD00000003064001040000000512FFAD050115233F000000060000000500000002108010FD064001040000000612FFAD050115233F0000000600000008000000020000000300000001128A7D05022A457F13E201080DE7CA000E5FD8F70DE7C9F80E6014F9000000010B4D43FC10804CFD0000000308C0010411FBE90500000002000000060000000A108010FD08C001040000000611FC2505033F67BF000000060000000700000002000000030E5FD8F90B4D43FC10804CFD0000000308C0010411FBE90500000002033F67BF13BC31080D4128800EFA10F70D412878000000060EFA10F90BF3E57C000000061008ECFD00000006000000030000000100000000000000060000000413BBF508000000040D4128800EFA10F70000000A000000000000000A11FC2505033F67BF13BC31080D4128800EFA10F70000000A000000000000000A000000040000000A00000002108010FD08C0010411FBE90500000002033F67BF13BC31080D41288000000007000000060000000413BBF508000000040D412880000000070EFA4CF7000000000D4128780EFA4CF900000001000000060EFA10F90AA6A27C00000007000000070000000111FC2505033F67BF0000000700000007000000020000000300000001000000000E6014F7000000000DE7C9F80E6014F9000000010B4D43FC00000006108010FD00000006000000030E5FD8F90B4D43FC10804CFD0000000308C0010411FBE905000000020000000611FC2505033F67BF13BC310800000009000000040000000A00000002108010FD08C0010411FBE905000000020000000611FC2505033F67BF000000060000000A0000000200000003000000010000000413E1C508000000040DE7CA000E5FD8F70DE7C9F80E6014F9000000010B4D43FC0000000A108010FD0000000A000000030E5FD8F90B4D43FC0000000A108010FD08C0010411FBE905000000020115233F13F895080D412880000000070000000A000000040000000A0000000A0000000300000001000000000E6014F7000000000DE7C9F80E6014F9000000010000000A0E5FD8F90B4D43FC0000000A108010FD08C0010411FBE905000000020115233F13F895080DAED8770000000A0E962500000000000000000600000004000000080000000A00000003000000010000000200000003"
theorem small_5671538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5671538_left_root small_5671538_left_fuel small_5671538_left_count small_5671538_left_encoded = true := by
  decide +kernel
theorem small_5671538_left_covered : CoveredBy scale carrier boxes small_5671538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5671538_left_root small_5671538_left_fuel small_5671538_left_count small_5671538_left_encoded small_5671538_left_checked

theorem cover_5671538 : CoveredBy scale carrier boxes root_5671538 := by
  apply coveredBy_split_literal root_5671538 small_5671538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5672380 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5671538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5672380
#print axioms cover_5671538

def root_5671532 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671532_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671532_left_fuel : Nat := 1
def small_5671532_left_count : Nat := 1
def small_5671532_left_encoded : String := "00000000"
theorem small_5671532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5671532_left_root small_5671532_left_fuel small_5671532_left_count small_5671532_left_encoded = true := by
  decide +kernel
theorem small_5671532_left_covered : CoveredBy scale carrier boxes small_5671532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5671532_left_root small_5671532_left_fuel small_5671532_left_count small_5671532_left_encoded small_5671532_left_checked

theorem cover_5671532 : CoveredBy scale carrier boxes root_5671532 := by
  apply coveredBy_split_literal root_5671532 small_5671532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5671538 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_5671532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5671538
#print axioms cover_5671532

def root_5669432 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5669432 : CoveredBy scale carrier boxes root_5669432 := by
  apply coveredBy_split_literal root_5669432 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2128.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5671532 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2128.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5671532
#print axioms cover_5669432

def root_5669426 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5669426_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5669426_left_fuel : Nat := 1
def small_5669426_left_count : Nat := 1
def small_5669426_left_encoded : String := "00000004"
theorem small_5669426_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5669426_left_root small_5669426_left_fuel small_5669426_left_count small_5669426_left_encoded = true := by
  decide +kernel
theorem small_5669426_left_covered : CoveredBy scale carrier boxes small_5669426_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5669426_left_root small_5669426_left_fuel small_5669426_left_count small_5669426_left_encoded small_5669426_left_checked

theorem cover_5669426 : CoveredBy scale carrier boxes root_5669426 := by
  apply coveredBy_split_literal root_5669426 small_5669426_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5669432 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5669426_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5669432
#print axioms cover_5669426

def root_5667994 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5667994 : CoveredBy scale carrier boxes root_5667994 := by
  apply coveredBy_split_literal root_5667994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2127.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5669426 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2127.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5669426
#print axioms cover_5667994

def root_5667988 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667988_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667988_left_fuel : Nat := 1
def small_5667988_left_count : Nat := 1
def small_5667988_left_encoded : String := "00000003"
theorem small_5667988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667988_left_root small_5667988_left_fuel small_5667988_left_count small_5667988_left_encoded = true := by
  decide +kernel
theorem small_5667988_left_covered : CoveredBy scale carrier boxes small_5667988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667988_left_root small_5667988_left_fuel small_5667988_left_count small_5667988_left_encoded small_5667988_left_checked

theorem cover_5667988 : CoveredBy scale carrier boxes root_5667988 := by
  apply coveredBy_split_literal root_5667988 small_5667988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667994 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5667988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667994
#print axioms cover_5667988

def root_5667987 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667987_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667987_right_fuel : Nat := 16
def small_5667987_right_count : Nat := 103
def small_5667987_right_encoded : String := "0F34D0FC045489FF1386AD080C9A87000F8750F70C9A86F80F878CF9000000010780010400000005128A7D050AD3577D10D13CFC00000003067ECE7F0000000912EA5908000000040B4D4400000000050000000900000009000000020F8750F907800104000000090000000900000001000000000F878CF7000000000C9A86F80F878CF900000001078001040000000900000009000000090000000413867108000000040C9A87000F8750F70C9A86F80F878CF900000001000000050F8750F907800104128A41050000000200000005128A7D050AD3577D10D13CFC00000003022A457F0000000813E1C508000000040B4D4400000000050000000A10D100FC00000005000000030000000200000001000000000F878CF7000000000C9A86F80F878CF900000001000000050F8750F907800104128A4105000000020AD3577D10D13CFC00000003022A457F000000090000000500000005128A7D050AD3577D10D13CFC00000003022A457F0000000913E1C508000000040DE7CA000E5FD8F700000009000000000000000900000009000000020000000100000003"
theorem small_5667987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667987_right_root small_5667987_right_fuel small_5667987_right_count small_5667987_right_encoded = true := by
  decide +kernel
theorem small_5667987_right_covered : CoveredBy scale carrier boxes small_5667987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667987_right_root small_5667987_right_fuel small_5667987_right_count small_5667987_right_encoded small_5667987_right_checked

theorem cover_5667987 : CoveredBy scale carrier boxes root_5667987 := by
  apply coveredBy_split_literal root_5667987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667988 small_5667987_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667988
  · exact small_5667987_right_covered
#print axioms cover_5667987

def root_5667981 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667981_left_fuel : Nat := 1
def small_5667981_left_count : Nat := 1
def small_5667981_left_encoded : String := "00000001"
theorem small_5667981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667981_left_root small_5667981_left_fuel small_5667981_left_count small_5667981_left_encoded = true := by
  decide +kernel
theorem small_5667981_left_covered : CoveredBy scale carrier boxes small_5667981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667981_left_root small_5667981_left_fuel small_5667981_left_count small_5667981_left_encoded small_5667981_left_checked

theorem cover_5667981 : CoveredBy scale carrier boxes root_5667981 := by
  apply coveredBy_split_literal root_5667981 small_5667981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667987 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5667981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667987
#print axioms cover_5667981

def root_5667980 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667980_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667980_right_fuel : Nat := 21
def small_5667980_right_count : Nat := 137
def small_5667980_right_encoded : String := "0F34D0F80CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FC0F878CFD000000030780010400000005128A7D050AD3577910D13CF800000001067ECE7F0000000612EA5908000000040B4D4400000000050000000600000006000000020F8750FD0780010400000006128A7D050AD3577910D13CF800000001067ECE7F0000000612EA5908000000040B4D4400108010F70B4D43FC00000006108010FD0000000600000003000000000000000600000006000000020000000300000000000000060000000413867108000000040C9A87000F8750F70C9A86FC0F878CFD00000003000000050F8750FD07800104128A41050000000200000005128A7D050AD3577910D13CF800000001022A457F13E201080B4D4400108010F70B4D43FC10804CFD0000000300000005000000070000000010804CF7000000000B4D43FC10804CFD0000000300000005108010FD08C001040000000600000007000000030000000413E1C508000000040B4D4400000000050000000A10D100F800000005000000010000000200000003000000000F878CF7000000000C9A86FC0F878CFD00000003000000050F8750FD07800104128A41050000000200000006128A7D050AD3577910D13CF800000001022A457F0000000613E1C508000000040DE7CA000E5FD8F70000000A00000000000000080000000600000002000000030F34D0FC045489FF1386AD080000000500000004000000050000000300000001"
theorem small_5667980_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667980_right_root small_5667980_right_fuel small_5667980_right_count small_5667980_right_encoded = true := by
  decide +kernel
theorem small_5667980_right_covered : CoveredBy scale carrier boxes small_5667980_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667980_right_root small_5667980_right_fuel small_5667980_right_count small_5667980_right_encoded small_5667980_right_checked

theorem cover_5667980 : CoveredBy scale carrier boxes root_5667980 := by
  apply coveredBy_split_literal root_5667980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667981 small_5667980_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667981
  · exact small_5667980_right_covered
#print axioms cover_5667980

def root_5667975 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667975_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667975_right_fuel : Nat := 1
def small_5667975_right_count : Nat := 1
def small_5667975_right_encoded : String := "00000000"
theorem small_5667975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667975_right_root small_5667975_right_fuel small_5667975_right_count small_5667975_right_encoded = true := by
  decide +kernel
theorem small_5667975_right_covered : CoveredBy scale carrier boxes small_5667975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667975_right_root small_5667975_right_fuel small_5667975_right_count small_5667975_right_encoded small_5667975_right_checked

theorem cover_5667975 : CoveredBy scale carrier boxes root_5667975 := by
  apply coveredBy_split_literal root_5667975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667980 small_5667975_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667980
  · exact small_5667975_right_covered
#print axioms cover_5667975

def root_5667974 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5667974 : CoveredBy scale carrier boxes root_5667974 := by
  apply coveredBy_split_literal root_5667974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2131.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667975
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2131.covered
#print axioms cover_5667974

def root_5667969 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667969_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667969_right_fuel : Nat := 1
def small_5667969_right_count : Nat := 1
def small_5667969_right_encoded : String := "00000002"
theorem small_5667969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667969_right_root small_5667969_right_fuel small_5667969_right_count small_5667969_right_encoded = true := by
  decide +kernel
theorem small_5667969_right_covered : CoveredBy scale carrier boxes small_5667969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667969_right_root small_5667969_right_fuel small_5667969_right_count small_5667969_right_encoded small_5667969_right_checked

theorem cover_5667969 : CoveredBy scale carrier boxes root_5667969 := by
  apply coveredBy_split_literal root_5667969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667974 small_5667969_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667974
  · exact small_5667969_right_covered
#print axioms cover_5667969

def root_5666365 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5666365 : CoveredBy scale carrier boxes root_5666365 := by
  apply coveredBy_split_literal root_5666365 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2126.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5667969 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2126.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5667969
#print axioms cover_5666365

def root_5666359 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666359_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666359_left_fuel : Nat := 1
def small_5666359_left_count : Nat := 1
def small_5666359_left_encoded : String := "00000004"
theorem small_5666359_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666359_left_root small_5666359_left_fuel small_5666359_left_count small_5666359_left_encoded = true := by
  decide +kernel
theorem small_5666359_left_covered : CoveredBy scale carrier boxes small_5666359_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666359_left_root small_5666359_left_fuel small_5666359_left_count small_5666359_left_encoded small_5666359_left_checked

theorem cover_5666359 : CoveredBy scale carrier boxes root_5666359 := by
  apply coveredBy_split_literal root_5666359 small_5666359_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666365 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5666359_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666365
#print axioms cover_5666359

def root_5666049 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666049_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666049_left_fuel : Nat := 25
def small_5666049_left_count : Nat := 145
def small_5666049_left_encoded : String := "12073D0805000104135D4505000000020CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040C9A87000F8750F70C9A86F8000000060000000900000000000000060000000300000006000000000F34D1000000000000000006135D81050CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010C9A86FC0F878CFD000000030780010400000006128A7D050AD3577F0000000610D10108000000040B4D4400108010F70DE7C9F800000006000000080000000000000006000000020F8750FD00000006000000030F8750F90C9A86FC0F878CFD000000030780010400000009000000090F8750FD07800104128A41050000000200000006128A7D050AD3577F0000000910D10108000000040B4D44000000000810804CF70000000000000009000000020000000300000001000000000F878CF7000000000C9A86F80F878CF900000001000000060F8750F90C9A86FC000000090F8750FD0000000600000003000000010F34D0FC0CFD9BFF000000090F34D108000000040C9A87000F8750F70C9A86F80F878CF90000000100000009000000090000000000000009000000030F34D0F80CFD9BFD000000060F34D0FC000000060000000300000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD000000060F34D0FC0000000900000003000000060000000200000004"
theorem small_5666049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666049_left_root small_5666049_left_fuel small_5666049_left_count small_5666049_left_encoded = true := by
  decide +kernel
theorem small_5666049_left_covered : CoveredBy scale carrier boxes small_5666049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666049_left_root small_5666049_left_fuel small_5666049_left_count small_5666049_left_encoded small_5666049_left_checked

theorem cover_5666049 : CoveredBy scale carrier boxes root_5666049 := by
  apply coveredBy_split_literal root_5666049 small_5666049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666359 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5666049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666359
#print axioms cover_5666049

def root_5666043 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666043_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666043_left_fuel : Nat := 1
def small_5666043_left_count : Nat := 1
def small_5666043_left_encoded : String := "00000003"
theorem small_5666043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666043_left_root small_5666043_left_fuel small_5666043_left_count small_5666043_left_encoded = true := by
  decide +kernel
theorem small_5666043_left_covered : CoveredBy scale carrier boxes small_5666043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666043_left_root small_5666043_left_fuel small_5666043_left_count small_5666043_left_encoded small_5666043_left_checked

theorem cover_5666043 : CoveredBy scale carrier boxes root_5666043 := by
  apply coveredBy_split_literal root_5666043 small_5666043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666049 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5666043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666049
#print axioms cover_5666043

def root_5666042 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666042_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666042_right_fuel : Nat := 15
def small_5666042_right_count : Nat := 65
def small_5666042_right_encoded : String := "120700FC08A912FF12073D0805000104135D4505000000020CFD9BF70F350D000CFD9BF90F350CF8000000010000000900000005000000000F34D1000000000000000009135D81050CFD9BF70F350D000CFD9BF90F350CF8000000010000000900000009000000000F34D10000000000000000090000000200000004120701080000000405000104135D45050000000200000005135D81050CFD9BF70F350D000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A8700000000050000000900000004000000050000000500000005000000000F34D100000000000CFD9BF90F350CF80000000100000009000000050000000200000003"
theorem small_5666042_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666042_right_root small_5666042_right_fuel small_5666042_right_count small_5666042_right_encoded = true := by
  decide +kernel
theorem small_5666042_right_covered : CoveredBy scale carrier boxes small_5666042_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666042_right_root small_5666042_right_fuel small_5666042_right_count small_5666042_right_encoded small_5666042_right_checked

theorem cover_5666042 : CoveredBy scale carrier boxes root_5666042 := by
  apply coveredBy_split_literal root_5666042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666043 small_5666042_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666043
  · exact small_5666042_right_covered
#print axioms cover_5666042

def root_5666036 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666036_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666036_left_fuel : Nat := 1
def small_5666036_left_count : Nat := 1
def small_5666036_left_encoded : String := "00000001"
theorem small_5666036_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666036_left_root small_5666036_left_fuel small_5666036_left_count small_5666036_left_encoded = true := by
  decide +kernel
theorem small_5666036_left_covered : CoveredBy scale carrier boxes small_5666036_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666036_left_root small_5666036_left_fuel small_5666036_left_count small_5666036_left_encoded small_5666036_left_checked

theorem cover_5666036 : CoveredBy scale carrier boxes root_5666036 := by
  apply coveredBy_split_literal root_5666036 small_5666036_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666042 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5666036_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666042
#print axioms cover_5666036

def root_5666035 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666035_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666035_right_fuel : Nat := 15
def small_5666035_right_count : Nat := 35
def small_5666035_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF00000006120701080000000405000104135D45050000000200000005135D81050CFD9BF70F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF00000006000000050000000500000005000000000F34D100000000000000000600000002120700FC000000050000000300000001"
theorem small_5666035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666035_right_root small_5666035_right_fuel small_5666035_right_count small_5666035_right_encoded = true := by
  decide +kernel
theorem small_5666035_right_covered : CoveredBy scale carrier boxes small_5666035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666035_right_root small_5666035_right_fuel small_5666035_right_count small_5666035_right_encoded small_5666035_right_checked

theorem cover_5666035 : CoveredBy scale carrier boxes root_5666035 := by
  apply coveredBy_split_literal root_5666035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666036 small_5666035_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666036
  · exact small_5666035_right_covered
#print axioms cover_5666035

def root_5666030 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666030_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666030_right_fuel : Nat := 1
def small_5666030_right_count : Nat := 1
def small_5666030_right_encoded : String := "00000000"
theorem small_5666030_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666030_right_root small_5666030_right_fuel small_5666030_right_count small_5666030_right_encoded = true := by
  decide +kernel
theorem small_5666030_right_covered : CoveredBy scale carrier boxes small_5666030_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666030_right_root small_5666030_right_fuel small_5666030_right_count small_5666030_right_encoded small_5666030_right_checked

theorem cover_5666030 : CoveredBy scale carrier boxes root_5666030 := by
  apply coveredBy_split_literal root_5666030 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666035 small_5666030_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666035
  · exact small_5666030_right_covered
#print axioms cover_5666030

def root_5666029 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666029_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666029_right_fuel : Nat := 28
def small_5666029_right_count : Nat := 181
def small_5666029_right_encoded : String := "120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000405000104135D450500000002045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F8000000060F8750F90C9A86FC000000060F8750FD0000000600000003000000010F34D0FC00000005000000030F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD000000060F34D0FC000000050000000300000006135D8105045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F800000006000000090000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030780010400000006128A7D05067ECE770000000900000009000000020F8750FD00000006000000030F8750F90C9A86FC0F878CFD00000003000000090F8750FD07800104128A41050000000200000006128A7D05067ECE7712EA9500022A457F0000000913E1C508000000040000000900000000000000090000000200000003000000010F34D0FC00000009000000030F34D0F80CFD9BFD000000060F34D0FC0000000500000003000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F80F878CF9000000010C9A86FC00000006000000060F8750F90C9A86FC000000090F8750FD07800104000000060000000900000003000000010F34D0FC00000009000000030F34D0F80CFD9BFD000000060F34D0FC00000005000000030000000100000002120700FC08A912FF0000000912070108000000040500010400000005135D8105045489F700000009000000050000000200000003120700F808A912FD00000006120700FC000000050000000300000001"
theorem small_5666029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666029_right_root small_5666029_right_fuel small_5666029_right_count small_5666029_right_encoded = true := by
  decide +kernel
theorem small_5666029_right_covered : CoveredBy scale carrier boxes small_5666029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666029_right_root small_5666029_right_fuel small_5666029_right_count small_5666029_right_encoded small_5666029_right_checked

theorem cover_5666029 : CoveredBy scale carrier boxes root_5666029 := by
  apply coveredBy_split_literal root_5666029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666030 small_5666029_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666030
  · exact small_5666029_right_covered
#print axioms cover_5666029

def root_5666023 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666023_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666023_left_fuel : Nat := 1
def small_5666023_left_count : Nat := 1
def small_5666023_left_encoded : String := "00000004"
theorem small_5666023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666023_left_root small_5666023_left_fuel small_5666023_left_count small_5666023_left_encoded = true := by
  decide +kernel
theorem small_5666023_left_covered : CoveredBy scale carrier boxes small_5666023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666023_left_root small_5666023_left_fuel small_5666023_left_count small_5666023_left_encoded small_5666023_left_checked

theorem cover_5666023 : CoveredBy scale carrier boxes root_5666023 := by
  apply coveredBy_split_literal root_5666023 small_5666023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666029 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5666023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666029
#print axioms cover_5666023

def root_5665985 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665985_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665985_left_fuel : Nat := 8
def small_5665985_left_count : Nat := 17
def small_5665985_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073CF80000000108A912FD00000006120700FC0000000600000003000000060000000012070100000000000000000600000004"
theorem small_5665985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665985_left_root small_5665985_left_fuel small_5665985_left_count small_5665985_left_encoded = true := by
  decide +kernel
theorem small_5665985_left_covered : CoveredBy scale carrier boxes small_5665985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665985_left_root small_5665985_left_fuel small_5665985_left_count small_5665985_left_encoded small_5665985_left_checked

theorem cover_5665985 : CoveredBy scale carrier boxes root_5665985 := by
  apply coveredBy_split_literal root_5665985 small_5665985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5666023 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5665985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5666023
#print axioms cover_5665985

def root_5665979 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665979_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665979_left_fuel : Nat := 1
def small_5665979_left_count : Nat := 1
def small_5665979_left_encoded : String := "00000003"
theorem small_5665979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665979_left_root small_5665979_left_fuel small_5665979_left_count small_5665979_left_encoded = true := by
  decide +kernel
theorem small_5665979_left_covered : CoveredBy scale carrier boxes small_5665979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665979_left_root small_5665979_left_fuel small_5665979_left_count small_5665979_left_encoded small_5665979_left_checked

theorem cover_5665979 : CoveredBy scale carrier boxes root_5665979 := by
  apply coveredBy_split_literal root_5665979 small_5665979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5665985 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5665979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5665985
#print axioms cover_5665979

def root_5683387 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683387_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683387_left_fuel : Nat := 19
def small_5683387_left_count : Nat := 223
def small_5683387_left_encoded : String := "1386AD080C9A87000F8750F70C9A86F80F878CF90000000107800104128A410500000002078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040B4D4400108010F70DE7C9F80E6014F90000000100000006000000070000000000000006128A40FD067ECE7F0000000612EA5908000000040B4D4400000000070000000600000003128A7D05078000FC128A7CFD00000003067ECE7F12EA95080B4D440000000007000000060000000412EA5908000000040B4D44000000000710804CF7000000000DE7C9F80E6014F9000000010000000700000007128A40FD067ECE7F000000070000000700000003000000020F8750F907800104128A410500000002078000FC128A7CFD00000003067ECE7F12EA95080B4D44000000000A10804CF7000000000000000A0000000412EA5908000000040B4D4400108010F70B4D43F810804CF90000000100000007000000070000000010804CF7000000000B4D43F810804CF9000000010640010412FF71050000000208C000FC000000060000000612FFAD050000000700000002108010F9064001040000000A0000000500000001128A40FD067ECE7F0000000512EA5908000000040B4D4400000000070000000500000003128A7D05078000FC128A7CFD00000003067ECE7F0000000512EA5908000000040B4D44000000000700000005000000050000000200000001000000000F878CF7000000000C9A86F80F878CF90000000107800104128A41050000000200000006128A7D05078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040DE7CA000E5FD8F70DE7C9F80E6014F900000001000000060E5FD8F908C001040000000600000007000000010000000000000006128A40FD067ECE7F0000000612EA5908000000040DE7CA000E5FD8F700000007000000000000000600000003000000020F8750F907800104128A410500000002078000FC128A7CFD00000003067ECE7F0000000612EA5908000000040DE7CA000E5FD8F70B4D43F810804CF90000000100000006108010F9064001040000000A00000005000000010000000000000006128A40FD067ECE7F0000000512EA5908000000040DE7CA000E5FD8F700000005000000000000000500000003128A7D05078000FC128A7CFD00000003067ECE7F0000000512EA5908000000040DE7CA000E5FD8F700000005000000000000000500000005000000020000000100000004"
theorem small_5683387_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683387_left_root small_5683387_left_fuel small_5683387_left_count small_5683387_left_encoded = true := by
  decide +kernel
theorem small_5683387_left_covered : CoveredBy scale carrier boxes small_5683387_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683387_left_root small_5683387_left_fuel small_5683387_left_count small_5683387_left_encoded small_5683387_left_checked

theorem cover_5683387 : CoveredBy scale carrier boxes root_5683387 := by
  apply coveredBy_split_literal root_5683387 small_5683387_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2133.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5683387_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2133.covered
#print axioms cover_5683387

def root_5683381 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683381_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5683381_left_fuel : Nat := 1
def small_5683381_left_count : Nat := 1
def small_5683381_left_encoded : String := "00000001"
theorem small_5683381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5683381_left_root small_5683381_left_fuel small_5683381_left_count small_5683381_left_encoded = true := by
  decide +kernel
theorem small_5683381_left_covered : CoveredBy scale carrier boxes small_5683381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5683381_left_root small_5683381_left_fuel small_5683381_left_count small_5683381_left_encoded small_5683381_left_checked

theorem cover_5683381 : CoveredBy scale carrier boxes root_5683381 := by
  apply coveredBy_split_literal root_5683381 small_5683381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5683387 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5683381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5683387
#print axioms cover_5683381

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139
