import TaoBundleAssembly0229
import TaoBundleAssembly0231
import TaoBundleAssembly0232
import TaoBundleChunkBatch0919
import TaoBundleChunkBatch0920
import TaoBundleChunkBatch0921
import TaoBundleChunkBatch0922
import TaoBundleChunkBatch0923
import TaoBundleChunkBatch0924
import TaoBundleChunkBatch0925
import TaoBundleChunkBatch0926
import TaoBundleChunkBatch0927
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233
def root_9813941 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9813941 : CoveredBy scale carrier boxes root_9813941 := by
  apply coveredBy_split_literal root_9813941 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3674.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3675.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3674.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3675.covered
#print axioms cover_9813941

def root_9818552 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9818552 : CoveredBy scale carrier boxes root_9818552 := by
  apply coveredBy_split_literal root_9818552 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3676.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3677.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3676.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3677.covered
#print axioms cover_9818552

def root_9813940 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9813940 : CoveredBy scale carrier boxes root_9813940 := by
  apply coveredBy_split_literal root_9813940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9813941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9818552 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9813941
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9818552
#print axioms cover_9813940

def root_9821911 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9821911_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9821911_left_fuel : Nat := 24
def small_9821911_left_count : Nat := 279
def small_9821911_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A9130712070106000000030000000712073D0608A912FF0000000700000006000000031151E8FF08A9130700000007000000080000000400000003115225050A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A9130512070104000000020000000612073D0408A9130712070106000000030000000700000006000000021151E8FF0000000700000004000000030000000200000001115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FF00000008120700FE0500010000000008135D810105000104135D45050000000205000106000000080000000600000007000000000000000400000001120701020000000108A912FF00000007120700FE00000007000000041151E8FF08A912F9000000060000000700000004115225070A0000FE115224FF0000000408A912F912073D0208A9130712070106000000030000000712073D0608A912FF00000007120700FE00000007000000040000000300000001120701020000000108A91307120701060000000308A912FF12073CFE0000000400000007120700FE0500010000000006000000070000000412073D0608A912FF00000007120700FE0000000700000004000000031151E8FF000000070000000400000003115225050A0001061151E907000000030A0000FE115224FF0000000408A912F900000008120701020000000108A9130512070104000000020000000812073D0408A912FF00000007120700FE0000000700000004000000021151E8FF0000000700000004115225070A0000FE115224FF0000000408A912F912073D0208A9130512070104000000020000000612073D0408A91307120701060000000308A912FF12073CFE00000004000000060000000612073D0608A912FF0000000700000006000000030000000200000001120701020000000108A91305120701040000000208A9130712070106000000030000000512073D0608A912FF00000006000000060000000312073D0408A91307120701060000000308A912FF12073CFE00000004050001000000000600000005120700FE0500010000000006000000050000000412073D0608A912FF12073CFE0000000405000100135D450100000000045489F90000000613867102000000010CFD9C05000000060000000700000007120700FE05000100135D450100000000045489F90000000613867102000000010CFD9C05000000060F350D040000000600000002135D8101045489F900000007138671020000000100000005000000000000000400000003000000021151E8FF08A912F912073D0208A913051207010400000002000000060000000700000001120701020000000108A9130512070104000000020000000512073D040000000700000002000000040000000300000002"
theorem small_9821911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9821911_left_root small_9821911_left_fuel small_9821911_left_count small_9821911_left_encoded = true := by
  decide +kernel
theorem small_9821911_left_covered : CoveredBy scale carrier boxes small_9821911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9821911_left_root small_9821911_left_fuel small_9821911_left_count small_9821911_left_encoded small_9821911_left_checked

theorem cover_9821911 : CoveredBy scale carrier boxes root_9821911 := by
  apply coveredBy_split_literal root_9821911 small_9821911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3678.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9821911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3678.covered
#print axioms cover_9821911

def root_9825568 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9825568 : CoveredBy scale carrier boxes root_9825568 := by
  apply coveredBy_split_literal root_9825568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3679.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3680.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3679.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3680.covered
#print axioms cover_9825568

def root_9821910 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9821910 : CoveredBy scale carrier boxes root_9821910 := by
  apply coveredBy_split_literal root_9821910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9821911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9825568 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9821911
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9825568
#print axioms cover_9821910

def root_9821909 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9821909 : CoveredBy scale carrier boxes root_9821909 := by
  apply coveredBy_split_literal root_9821909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9821910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3681.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9821910
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3681.covered
#print axioms cover_9821909

def root_9813939 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9813939 : CoveredBy scale carrier boxes root_9813939 := by
  apply coveredBy_split_literal root_9813939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9813940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9821909 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9813940
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9821909
#print axioms cover_9813939

def root_9726649 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726649 : CoveredBy scale carrier boxes root_9726649 := by
  apply coveredBy_split_literal root_9726649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.root_9726650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9813939 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0232.cover_9726650
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9813939
#print axioms cover_9726649

def root_9584499 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584499 : CoveredBy scale carrier boxes root_9584499 := by
  apply coveredBy_split_literal root_9584499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9584500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9726649 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9584500
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9726649
#print axioms cover_9584499

def root_9151627 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151627 : CoveredBy scale carrier boxes root_9151627 := by
  apply coveredBy_split_literal root_9151627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.root_9151628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9584499 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.cover_9151628
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9584499
#print axioms cover_9151627

def root_9833198 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833198_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833198_left_fuel : Nat := 26
def small_9833198_left_count : Nat := 351
def small_9833198_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF0000000800000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000405000102135D45030000000104548A0113867100000000000CFD9BFB0F350CFA00000002000000080000000600000008135D810304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000008000000080F34D0FA0CFD9BFD0000000600000005000000021386AD000CFD9BFB000000080F34D0FA00000005000000020000000000000001120700FC0000000800000003120700FA08A912FD00000006120700FC00000005000000030000000212073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000812070108000000040000000800000008120700FA08A912FD12073CFC0000000308A912FF0000000512070108000000040500010200000005135D81030000000500000001120700FC000000080000000300000002000000001151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FF00000006120701080000000405000102135D45030000000100000006135D8103050000FC135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA00000002045489FF0000000613867108000000040C9A86FA000000060F8750FB0000000600000002000000061386AD000CFD9BFB0F350CFA00000002045489FF0000000613867108000000040C9A86FA00000006000000080000000600000000135D44FD04548A0113867100000000000CFD9BFB00000006000000060000000600000003000000010000000612073D0008A912FB12073CFA0000000208A912FF12073D0805000102000000060000000800000004120701080000000405000102135D450300000001050000FC135D80FD000000030CFD9C010000000800000006135D44FD0000000600000003135D8103050000FC135D80FD000000030CFD9C010F34D100000000000000000800000008135D44FD0CFD9C010F34D100000000000CFD9BFB00000006000000060F350D0000000008000000000000000300000001120700FA08A912FF000000061207010800000004000000060000000200000000000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A913010000000812073D0008A912FD00000008120700FC00000005000000030000000000000004115224FF0000000408A91301120701000000000008A912FD12073CFC0000000308A912FF000000081207010800000004000000080000000812073D0008A912FD00000008120700FC0000000800000003000000001151E8FD0A0001081151E8FF0000000800000004115224FF0000000408A91301120701000000000008A912FF12073D0805000102000000080000000800000004120701080000000405000102135D450300000001050000FA135D80FB00000002050000FC135D80FD0000000304548A010000000800000006135D44FD04548A011386710000000000000000060000000600000003135D44FB050000FC00000008135D44FD04548A0100000008000000080000000300000002135D8103050000FA135D80FB00000002050000FC135D80FD0000000304548A010000000800000008135D44FD04548A011386710000000000000000051386AD00045489FF0000000613867108000000040780010200000008000000050000000000000003135D44FB050000FC0000000800000005000000020000000112073D0008A912FF000000081207010800000004050001020000000800000008000000000000000300000002"
theorem small_9833198_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9833198_left_root small_9833198_left_fuel small_9833198_left_count small_9833198_left_encoded = true := by
  decide +kernel
theorem small_9833198_left_covered : CoveredBy scale carrier boxes small_9833198_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9833198_left_root small_9833198_left_fuel small_9833198_left_count small_9833198_left_encoded small_9833198_left_checked

theorem cover_9833198 : CoveredBy scale carrier boxes root_9833198 := by
  apply coveredBy_split_literal root_9833198 small_9833198_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3683.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9833198_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3683.covered
#print axioms cover_9833198

def root_9833193 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833193_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833193_right_fuel : Nat := 1
def small_9833193_right_count : Nat := 1
def small_9833193_right_encoded : String := "00000000"
theorem small_9833193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9833193_right_root small_9833193_right_fuel small_9833193_right_count small_9833193_right_encoded = true := by
  decide +kernel
theorem small_9833193_right_covered : CoveredBy scale carrier boxes small_9833193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9833193_right_root small_9833193_right_fuel small_9833193_right_count small_9833193_right_encoded small_9833193_right_checked

theorem cover_9833193 : CoveredBy scale carrier boxes root_9833193 := by
  apply coveredBy_split_literal root_9833193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9833198 small_9833193_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9833198
  · exact small_9833193_right_covered
#print axioms cover_9833193

def root_9832497 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9832497_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9832497_left_fuel : Nat := 23
def small_9832497_left_count : Nat := 327
def small_9832497_left_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB00000008120700FA08A912FD0000000500000008000000021151E8FD0A00010800000005115224FF0000000408A912FB00000008120700FA0000000500000002000000031151E8FB0A0000FC115224FD000000030A00010800000005115224FF0000000408A912FD00000008120700FC00000005000000031151E8FD0A0001081151E8FF0000000800000004000000080000000300000002115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A91303120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC0000000500000003120700FA000000050000000212073D02000000050000000100000004115224FF0000000408A91303120701020000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08000000070000000400000007120700FC08A912FF12073D0800000005000000040000000500000003120700FA08A912FD12073CFC0000000308A912FF12073D08000000050000000400000005120700FC00000005000000030000000212073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08050001000000000500000008000000041207010800000004050001000000000500000008120700FC08A912FF000000050000000800000003120700FA08A912FD12073CFC0000000308A912FF0000000512070108000000040500010000000005135D81010000000500000000120700FC08A912FF0000000512070108000000040500010000000005000000070000000300000002000000011151E8FD0A0001081151E8FF08A91303120701020000000108A912FB00000007120700FA00000007000000020000000800000004115224FF0000000408A91303120701020000000108A912FB00000007120700FA08A912FF12073D080500010000000007135D8101050000FC00000007135D44FD00000007000000030000000000000004000000070000000212073D0208A912FB12073CFA0000000208A912FF12073D08000000080000000400000007120700FA08A912FF12073D080500010000000005135D8101050000FC00000005135D44FD0CFD9C03000000060000000600000003000000000000000412070108000000040500010000000007135D8101050000FC00000007135D44FD0CFD9C03000000070F350D02045489FB00000005000000060000000100000003000000000000000200000001000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A91303120701020000000108A912FD00000007120700FC000000070000000312073D0208A912FD12073CFC0000000305000100135D4501000000000000000700000008120700FC00000005000000030000000100000004115224FF0000000408A91303120701020000000108A912FD00000007120700FC08A912FF12073D080500010000000007135D8101050000FA00000007000000090000000000000004000000070000000312073D0208A912FD12073CFC0000000308A912FF12073D0805000100135D45010000000000000008000000080000000400000007120700FC08A912FF12073D08050001000000000500000009000000040000000800000003000000011151E8FD0A0001081151E8FF0000000800000004115224FF0000000400000008000000030000000200000001"
theorem small_9832497_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9832497_left_root small_9832497_left_fuel small_9832497_left_count small_9832497_left_encoded = true := by
  decide +kernel
theorem small_9832497_left_covered : CoveredBy scale carrier boxes small_9832497_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9832497_left_root small_9832497_left_fuel small_9832497_left_count small_9832497_left_encoded small_9832497_left_checked

theorem cover_9832497 : CoveredBy scale carrier boxes root_9832497 := by
  apply coveredBy_split_literal root_9832497 small_9832497_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9833193 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9832497_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9833193
#print axioms cover_9832497

def root_9837450 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9837450 : CoveredBy scale carrier boxes root_9837450 := by
  apply coveredBy_split_literal root_9837450 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3684.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3685.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3684.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3685.covered
#print axioms cover_9837450

def root_9837444 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837444_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837444_left_fuel : Nat := 1
def small_9837444_left_count : Nat := 1
def small_9837444_left_encoded : String := "00000001"
theorem small_9837444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9837444_left_root small_9837444_left_fuel small_9837444_left_count small_9837444_left_encoded = true := by
  decide +kernel
theorem small_9837444_left_covered : CoveredBy scale carrier boxes small_9837444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9837444_left_root small_9837444_left_fuel small_9837444_left_count small_9837444_left_encoded small_9837444_left_checked

theorem cover_9837444 : CoveredBy scale carrier boxes root_9837444 := by
  apply coveredBy_split_literal root_9837444 small_9837444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9837450 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9837444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9837450
#print axioms cover_9837444

def root_9837443 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9837443 : CoveredBy scale carrier boxes root_9837443 := by
  apply coveredBy_split_literal root_9837443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9837444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3686.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9837444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3686.covered
#print axioms cover_9837443

def root_9837438 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837438_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837438_right_fuel : Nat := 1
def small_9837438_right_count : Nat := 1
def small_9837438_right_encoded : String := "00000000"
theorem small_9837438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9837438_right_root small_9837438_right_fuel small_9837438_right_count small_9837438_right_encoded = true := by
  decide +kernel
theorem small_9837438_right_covered : CoveredBy scale carrier boxes small_9837438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9837438_right_root small_9837438_right_fuel small_9837438_right_count small_9837438_right_encoded small_9837438_right_checked

theorem cover_9837438 : CoveredBy scale carrier boxes root_9837438 := by
  apply coveredBy_split_literal root_9837438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9837443 small_9837438_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9837443
  · exact small_9837438_right_covered
#print axioms cover_9837438

def root_9837094 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837094_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837094_left_fuel : Nat := 20
def small_9837094_left_count : Nat := 159
def small_9837094_left_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000800000007120700FC0000000800000003120700FA08A912FD12073CFC0000000308A9130912070108000000040500010000000005135D81010500010200000005000000070000000000000007120700FC000000080000000300000002000000041151E8FD0A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A9130912070108000000040500010000000007135D810105000102135D450300000001050000FC00000005135D44FD0000000700000003000000070000000000000007120700FA08A9130912070108000000040500010000000005135D810105000102000000050000000700000000000000070000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912FD12073CFC0000000308A913090000000800000007120700FC0000000800000003000000041151E8FD000000070000000300000002115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000071152250908A91303120701020000000108A912FB000000070000000712073D0208A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC00000007000000030000000200000001000000041151E8FD00000007000000031151E8FB0A0000FC000000071151E8FD00000007000000030000000200000001"
theorem small_9837094_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9837094_left_root small_9837094_left_fuel small_9837094_left_count small_9837094_left_encoded = true := by
  decide +kernel
theorem small_9837094_left_covered : CoveredBy scale carrier boxes small_9837094_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9837094_left_root small_9837094_left_fuel small_9837094_left_count small_9837094_left_encoded small_9837094_left_checked

theorem cover_9837094 : CoveredBy scale carrier boxes root_9837094 := by
  apply coveredBy_split_literal root_9837094 small_9837094_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9837438 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9837094_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9837438
#print axioms cover_9837094

def root_9832496 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9832496 : CoveredBy scale carrier boxes root_9832496 := by
  apply coveredBy_split_literal root_9832496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9832497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9837094 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9832497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9837094
#print axioms cover_9832496

def root_9831142 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831142 : CoveredBy scale carrier boxes root_9831142 := by
  apply coveredBy_split_literal root_9831142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3682.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9832496 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3682.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9832496
#print axioms cover_9831142

def root_9852724 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9852724 : CoveredBy scale carrier boxes root_9852724 := by
  apply coveredBy_split_literal root_9852724 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3691.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3692.root coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3691.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3692.covered
#print axioms cover_9852724

def root_9852719 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9852719_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9852719_right_fuel : Nat := 1
def small_9852719_right_count : Nat := 1
def small_9852719_right_encoded : String := "00000002"
theorem small_9852719_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9852719_right_root small_9852719_right_fuel small_9852719_right_count small_9852719_right_encoded = true := by
  decide +kernel
theorem small_9852719_right_covered : CoveredBy scale carrier boxes small_9852719_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9852719_right_root small_9852719_right_fuel small_9852719_right_count small_9852719_right_encoded small_9852719_right_checked

theorem cover_9852719 : CoveredBy scale carrier boxes root_9852719 := by
  apply coveredBy_split_literal root_9852719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9852724 small_9852719_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9852724
  · exact small_9852719_right_covered
#print axioms cover_9852719

def root_9850541 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9850541 : CoveredBy scale carrier boxes root_9850541 := by
  apply coveredBy_split_literal root_9850541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3690.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9852719 coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3690.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9852719
#print axioms cover_9850541

def root_9850536 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9850536_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9850536_right_fuel : Nat := 1
def small_9850536_right_count : Nat := 1
def small_9850536_right_encoded : String := "00000001"
theorem small_9850536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9850536_right_root small_9850536_right_fuel small_9850536_right_count small_9850536_right_encoded = true := by
  decide +kernel
theorem small_9850536_right_covered : CoveredBy scale carrier boxes small_9850536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9850536_right_root small_9850536_right_fuel small_9850536_right_count small_9850536_right_encoded small_9850536_right_checked

theorem cover_9850536 : CoveredBy scale carrier boxes root_9850536 := by
  apply coveredBy_split_literal root_9850536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9850541 small_9850536_right_root coord1 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9850541
  · exact small_9850536_right_covered
#print axioms cover_9850536

def root_9849828 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849828_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849828_left_fuel : Nat := 23
def small_9849828_left_count : Nat := 339
def small_9849828_left_encoded : String := "13D7B10300000001067ECE7B12EA94FA00000002067ECE7F12EA94FE000000040B4D43FC10804D0703C0010013A51101000000000140010213F5D903000000010793F0BB12825CFA000000020793F0BF0000000800000008128220FA0793F0BF12825CFE0000000400000009000000090000000213F615030793F0BB12825CFA000000020793F0BF00000005128220FE0BF3E57C10092907032001000000000900000008000000031008ED07000000030000000800000004128220FA0793F0BF12825CFE000000040BF3E57C10092907032001000000000900000006000000031008ED07000000030320010013C10901000000000000000913C1450101E00102000000060000000500000000128220FE0BF3E57C1009290700000009000000030000000900000004000000020000000113A54D010140010213F5D903000000010793F0BB12825CFA0000000200000008128220FA000000060000000213F615030793F0BB12825CFA0000000200000005128220FA0793F0BF00000006128220FE0BF3E57C1009290700000006000000031008ED0700000003046001001383DD010000000001E001020000000813E9950307095F9B000000050000000600000001000000060000000400000002000000010000000000000003108011070000000303C0010013A5110100000000014001020000000813F615030793F0BB12825CFA000000020793F0BF0000000500000008128220FA0793F0BF12825CFE0000000400000007128220FE0AA6A27C000000080000000800000004000000020000000113A54D01014001020000000813F615030793F0BB12825CFA0000000200000005128220FA0793F0BF00000007128220FE0AA6A27C00000008000000070000000400000002000000010000000012EA58FE0B4D43FC10804D0703C0010013A5110100000000014001020000000913F615030793F0BB12825CFA000000020569AC3F134110FE000000040BF3E57C1009290700000009000000030000000800000009000000090000000113A54D010140010213F5D903000000010793F0BB000000080000000913F615030793F0BB12825CFA000000020569AC3F134110FE000000040BF3E57C00000008000000081340D4FE0000000800000004128220FA0569AC3F134110FE000000040BF3E57C10092907046001000000000900000006000000031008ED07000000030460010000000009000000081340D4FE000000090000000400000002000000010000000000000003108011070000000303C0010013A5110100000000014001020000000813F615030793F0BB00000008000000090000000113A54D01014001020000000813F615030793F0BB00000008128220FA0569AC3F00000008000000080000000200000001000000000000000412EA58FA067ECE7F12EA94FE000000040B4D43FC10804D0703C0010013A5110100000000014001020000000913F615030569AC3B134110FA000000020793F0BF000000060000000900000006000000010000000600000003108011070000000303C0010013A5110100000000014001020000000713F615030569AC3B134110FA000000020793F0BF0000000700000009000000070000000113A54D01000000070000000012EA58FE0B4D43FC10804D0703C001000000000913A54D01014001020000000913F615030569AC3B134110FA000000020569AC3F000000060000000900000006000000010000000000000003108011070000000303C001000000000913A54D01014001020000000913F615030569AC3B134110FA000000020569AC3F134110FE000000040AA6A27C10EDAD07000000090000000300000009000000090000000900000001000000000000000400000002"
theorem small_9849828_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9849828_left_root small_9849828_left_fuel small_9849828_left_count small_9849828_left_encoded = true := by
  decide +kernel
theorem small_9849828_left_covered : CoveredBy scale carrier boxes small_9849828_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9849828_left_root small_9849828_left_fuel small_9849828_left_count small_9849828_left_encoded small_9849828_left_checked

theorem cover_9849828 : CoveredBy scale carrier boxes root_9849828 := by
  apply coveredBy_split_literal root_9849828 small_9849828_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9850536 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9849828_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9850536
#print axioms cover_9849828

def root_9849823 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849823_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849823_right_fuel : Nat := 1
def small_9849823_right_count : Nat := 1
def small_9849823_right_encoded : String := "00000000"
theorem small_9849823_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9849823_right_root small_9849823_right_fuel small_9849823_right_count small_9849823_right_encoded = true := by
  decide +kernel
theorem small_9849823_right_covered : CoveredBy scale carrier boxes small_9849823_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9849823_right_root small_9849823_right_fuel small_9849823_right_count small_9849823_right_encoded small_9849823_right_checked

theorem cover_9849823 : CoveredBy scale carrier boxes root_9849823 := by
  apply coveredBy_split_literal root_9849823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9849828 small_9849823_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9849828
  · exact small_9849823_right_covered
#print axioms cover_9849823

def root_9848933 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848933_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848933_left_fuel : Nat := 25
def small_9848933_left_count : Nat := 425
def small_9848933_left_encoded : String := "13D7B101000000000280010213D7B10300000001067ECE7B12EA94FA00000002067ECE7F12EA94FE000000040B4D43FC10804D07014001000000000913F61501014001020000000913F615030793F0BB12825CFA000000020793F0BF12825CFE000000040BF3E57C1009290701E001000000000900000005000000031008ED07000000030000000800000009128220FA0793F0BF12825CFE000000040000000900000009000000020000000100000000000000031080110700000003014001000000000913F61501014001020000000913F615030793F0BB12825CFA000000020793F0BF0000000800000008128220FA0793F0BF0000000A0000000900000002000000010000000012EA58FE0B4D43FC10804D070000000900000003000000090000000412EA58FA067ECE7F12EA94FE000000040B4D43FC10804D07000000090000000300000009000000090000000213D7ED03067ECE7B12EA94FA00000002067ECE7F12EA94FE000000040B4D43FC10804D070140010013F5D9010000000003C0010213A51103000000010793F0BB12825CFA000000020793F0BF0000000A00000009128220FA0793F0BF0000000A000000090000000213A54D030793F0BB12825CFA000000020793F0BF0000000500000006128220FA0793F0BF0000000A00000007000000020000000113F6150103C0010213A51103000000010793F0BB12825CFA000000020793F0BF00000005128220FE0BF3E57C1009290701E001000000000713E995010000000500000000000000031008ED070000000301E001000000000613E995010320010200000008000000050000000000000004128220FA0793F0BF12825CFE000000040BF3E57C1009290701E001000000000913E995010000000500000000000000031008ED07000000030000000A128220FE0BF3E57C10092907000000090000000300000009000000040000000213A54D030793F0BB12825CFA0000000200000005128220FA0793F0BF12825CFE0000000400000005128220FE0BF3E57C1009290700000007000000031008ED070000000301E001000000000A13E99501046001021383DD030000000107095F9B000000050000000A0000000700000000000000040000000200000001000000000000000310801107000000030140010013F5D9010000000003C0010213A51103000000010000000A0000000A13F6150103C0010213A51103000000010793F0BB12825CFA000000020793F0BF0000000500000006128220FA0793F0BF0000000A128220FE0AA6A27C0000000A0000000A000000040000000213A54D030793F0BB12825CFA0000000200000005128220FA0793F0BF0000000A128220FE0AA6A27C0000000A000000060000000400000002000000010000000012EA58FE0B4D43FC10804D070140010013F5D901000000000000000713F6150103C0010213A51103000000010793F0BB00000007000000090000000700000000000000031080110700000003014001000000000613F6150103C0010213A51103000000010793F0BB000000060000000913A54D030000000600000001000000000000000412EA58FA067ECE7F12EA94FE000000040B4D43FC10804D070140010013F5D9010000000003C001020000000913A54D030569AC3B0000000A000000090000000113F6150103C0010213A51103000000010569AC3B134110FA000000020793F0BF12825CFE000000040BF3E57C10092907000000090000000300000009000000090000000913A54D030569AC3B134110FA000000020793F0BF12825CFE000000040BF3E57C0000000A0000000A128220FE0BF3E57C1009290701E001000000000913E9950104600102000000090000000700000000000000031008ED070000000301E001000000000913E9950104600102000000090000000A00000000000000041340D4FA0793F0BF12825CFE000000040000000A128220FE00000009000000040000000200000001000000000000000310801107000000030140010013F5D901000000000000000A13F6150103C0010213A51103000000010569AC3B134110FA000000020793F0BF0000000A000000090000000913A54D030569AC3B0000000A0000000A000000010000000012EA58FE0B4D43FC10804D07014001000000000913F6150103C001020000000913A54D030569AC3B00000007000000090000000100000000000000031080110700000003014001000000000913F6150103C001020000000913A54D030569AC3B134110FA000000020569AC3F134110FE000000040AA6A27C10EDAD0700000009000000030000000900000009000000090000000100000000000000040000000200000001"
theorem small_9848933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9848933_left_root small_9848933_left_fuel small_9848933_left_count small_9848933_left_encoded = true := by
  decide +kernel
theorem small_9848933_left_covered : CoveredBy scale carrier boxes small_9848933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9848933_left_root small_9848933_left_fuel small_9848933_left_count small_9848933_left_encoded small_9848933_left_checked

theorem cover_9848933 : CoveredBy scale carrier boxes root_9848933 := by
  apply coveredBy_split_literal root_9848933 small_9848933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9849823 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9848933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9849823
#print axioms cover_9848933

def root_9848927 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848927_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848927_left_fuel : Nat := 1
def small_9848927_left_count : Nat := 1
def small_9848927_left_encoded : String := "00000003"
theorem small_9848927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9848927_left_root small_9848927_left_fuel small_9848927_left_count small_9848927_left_encoded = true := by
  decide +kernel
theorem small_9848927_left_covered : CoveredBy scale carrier boxes small_9848927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9848927_left_root small_9848927_left_fuel small_9848927_left_count small_9848927_left_encoded small_9848927_left_checked

theorem cover_9848927 : CoveredBy scale carrier boxes root_9848927 := by
  apply coveredBy_split_literal root_9848927 small_9848927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9848933 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9848927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9848933
#print axioms cover_9848927

def root_9847581 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9847581 : CoveredBy scale carrier boxes root_9847581 := by
  apply coveredBy_split_literal root_9847581 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3689.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9848927 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3689.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9848927
#print axioms cover_9847581

def root_9847575 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847575_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847575_left_fuel : Nat := 1
def small_9847575_left_count : Nat := 1
def small_9847575_left_encoded : String := "00000004"
theorem small_9847575_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847575_left_root small_9847575_left_fuel small_9847575_left_count small_9847575_left_encoded = true := by
  decide +kernel
theorem small_9847575_left_covered : CoveredBy scale carrier boxes small_9847575_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847575_left_root small_9847575_left_fuel small_9847575_left_count small_9847575_left_encoded small_9847575_left_checked

theorem cover_9847575 : CoveredBy scale carrier boxes root_9847575 := by
  apply coveredBy_split_literal root_9847575 small_9847575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847581 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9847575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847581
#print axioms cover_9847575

def root_9847574 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847574_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847574_right_fuel : Nat := 31
def small_9847574_right_count : Nat := 267
def small_9847574_right_encoded : String := "138670FE0C9A86FC0F878D070280010013D7B1010000000002800102000000090000000713D7ED010280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040DE7C9FC0E60150700000007000000030E5FD9070000000303C001000000000913A54D0101400102000000090000000700000000000000070000000913D7ED03067ECE7B0000000712EA58FA022A457F13E200FE000000040DE7C9FC000000070E5FD907000000030000000700000007000000020000000100000000000000030F875107000000030280010013D7B10100000000028001020000000913D7ED03067ECE7B00000007000000090000000113D7ED010280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D0703C001000000000913A54D01014001020000000913F615030793F0BB12825CFA000000020000000900000009000000010000000000000003108011070000000303C001000000000913A54D01014001020000000813F61503000000080000000100000000000000090000000913D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D0703C001000000000713A54D0103C0010213A51103000000010793F0BB00000007128220FA0000000700000002000000070000000000000003108011070000000303C0010013A511010000000003C0010213A51103000000010793F0BB00000006000000090000000713A54D0103C0010213A51103000000010793F0BB12825CFA00000002033F67BF0000000800000006128220FA033F67BF13BC30FE000000040AA6A27C10EDAD07046001000000000913841901032001020000000800000007000000000000000310ED71070000000300000008000000090000000213A54D030793F0BB00000007128220FA000000070000000200000001000000000000000712EA58FA022A457F13E200FE000000040B4D43FC10804D0703C0010013A511010000000003C00102000000050000000713A54D0103C0010213A51103000000010569AC3B134110FA00000002000000090000000513A54D030569AC3B000000071340D4FA0000000700000002000000010000000000000003108011070000000303C0010013A511010000000003C001020000000513A54D030569AC3B00000007000000050000000113A54D0103C0010213A51103000000010569AC3B134110FA00000002000000090000000513A54D030569AC3B134110FA00000002033F67BF13BC30FE000000040AA6A27C10EDAD07000000070000000310ED710700000003046001001383DD010000000004600102000000050000000713841901046001021383DD030000000105F43D5B1317F8FA0000000203C9F8DF000000AE00000005000000050000000700000000000000050000000500000001000000000000000500000002000000010000000000000004"
theorem small_9847574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847574_right_root small_9847574_right_fuel small_9847574_right_count small_9847574_right_encoded = true := by
  decide +kernel
theorem small_9847574_right_covered : CoveredBy scale carrier boxes small_9847574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847574_right_root small_9847574_right_fuel small_9847574_right_count small_9847574_right_encoded small_9847574_right_checked

theorem cover_9847574 : CoveredBy scale carrier boxes root_9847574 := by
  apply coveredBy_split_literal root_9847574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847575 small_9847574_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847575
  · exact small_9847574_right_covered
#print axioms cover_9847574

def root_9847568 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847568_left_fuel : Nat := 1
def small_9847568_left_count : Nat := 1
def small_9847568_left_encoded : String := "00000003"
theorem small_9847568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847568_left_root small_9847568_left_fuel small_9847568_left_count small_9847568_left_encoded = true := by
  decide +kernel
theorem small_9847568_left_covered : CoveredBy scale carrier boxes small_9847568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847568_left_root small_9847568_left_fuel small_9847568_left_count small_9847568_left_encoded small_9847568_left_checked

theorem cover_9847568 : CoveredBy scale carrier boxes root_9847568 := by
  apply coveredBy_split_literal root_9847568 small_9847568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847574 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9847568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847574
#print axioms cover_9847568

def root_9847468 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847468_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847468_left_fuel : Nat := 15
def small_9847468_left_count : Nat := 47
def small_9847468_left_encoded : String := "0F34D0FC045489FF1386ACFE000000040280010013D7B101000000000280010213D7B10300000001067ECE7B12EA94FA000000020AD357870000000710D13CFC00000003067ECE7F12EA94FE000000040140010000000007000000060000000712EA58FA0AD357870000000610D13CFC0000000300000009000000020000000713D7ED010280010213D7B103000000010000000613D7ED03067ECE7B00000007000000060000000100000000138670FE000000070000000400000003"
theorem small_9847468_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847468_left_root small_9847468_left_fuel small_9847468_left_count small_9847468_left_encoded = true := by
  decide +kernel
theorem small_9847468_left_covered : CoveredBy scale carrier boxes small_9847468_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847468_left_root small_9847468_left_fuel small_9847468_left_count small_9847468_left_encoded small_9847468_left_checked

theorem cover_9847468 : CoveredBy scale carrier boxes root_9847468 := by
  apply coveredBy_split_literal root_9847468 small_9847468_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847568 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9847468_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847568
#print axioms cover_9847468

def root_9847462 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847462_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847462_left_fuel : Nat := 1
def small_9847462_left_count : Nat := 1
def small_9847462_left_encoded : String := "00000002"
theorem small_9847462_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847462_left_root small_9847462_left_fuel small_9847462_left_count small_9847462_left_encoded = true := by
  decide +kernel
theorem small_9847462_left_covered : CoveredBy scale carrier boxes small_9847462_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847462_left_root small_9847462_left_fuel small_9847462_left_count small_9847462_left_encoded small_9847462_left_checked

theorem cover_9847462 : CoveredBy scale carrier boxes root_9847462 := by
  apply coveredBy_split_literal root_9847462 small_9847462_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847468 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9847462_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847468
#print axioms cover_9847462

def root_9847461 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847461_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847461_right_fuel : Nat := 33
def small_9847461_right_count : Nat := 321
def small_9847461_right_encoded : String := "138670FA0CFD9C070F34D0FC045489FF0000000600000009000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D070280010013D7B10100000000028001020000000913D7ED03022A457B13E200FA00000002067ECE7F12EA94FE000000040DE7C9FC0E60150700000006000000030E5FD9070000000301400100000000090000000600000009000000090000000113D7ED01028001020000000613D7ED03022A457B13E200FA00000002067ECE7F0000000612EA58FE0DE7C9FC000000060E5FD907000000030000000600000004000000060000000100000000000000030F875107000000030280010013D7B10100000000028001020000000913D7ED03022A457B13E200FA00000002067ECE7F12EA94FE000000040B4D43FC10804D07014001000000000913F6150103C001020000000913A54D03033F67BB13BC30FA000000020793F0BF0000000A00000009000000090000000100000000000000031080110700000003014001000000000913F6150103C00102000000090000000A0000000000000009000000090000000113D7ED010280010213D7B10300000001022A457B13E200FA00000002067ECE7F00000006000000090000000613D7ED03022A457B13E200FA00000002067ECE7F12EA94FE000000040B4D43FC10804D0703C0010013A511010000000003C001020000000613A54D03033F67BB13BC30FA000000020793F0BF00000006128220FE000000060000000400000006000000010000000600000003108011070000000303C0010013A511010000000003C0010213A5110300000001033F67BB13BC30FA000000020793F0BF00000006000000090000000613A54D03033F67BB13BC30FA000000020793F0BF0000000A128220FE0AA6A27C10EDAD070320010000000009000000060000000310ED7107000000030000000A0000000413BBF4FA0793F0BF0000000600000009000000020000000113A54D0103C001020000000613A54D03033F67BB13BC30FA000000020793F0BF00000006128220FE000000060000000400000006000000010000000012EA58FE0B4D43FC10804D0703C0010013A511010000000003C001020000000513A54D03033F67BB13BC30FA0000000200000009000000050000000113A54D0103C001020000000613A54D03033F67BB13BC30FA000000020569AC3F000000061340D4FE000000060000000400000006000000010000000000000003108011070000000303C0010013A511010000000003C001020000000513A54D03033F67BB13BC30FA000000020569AC3F134110FE000000040000000900000005000000050000000113A54D0103C0010213A5110300000001033F67BB13BC30FA000000020569AC3F00000006000000050000000513A54D03033F67BB13BC30FA000000020569AC3F134110FE000000040AA6A27C10EDAD07000000060000000310ED710700000003046001001383DD010000000004600102000000051384190303C9F8DB000000AE000000050000000100000006000000050000000500000001000000000000000413E1C4FA067ECE7F0000000612EA58FE0000000500000004000000020000000100000000138670FE0C9A86FC0F878D07028001000000000513D7ED01028001020000000513D7ED03022A457B13E200FA00000002022A457F13E200FE000000040DE7C9FC0E60150700000006000000030000000900000005000000050000000100000000000000030F87510700000003000000050000000400000002"
theorem small_9847461_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847461_right_root small_9847461_right_fuel small_9847461_right_count small_9847461_right_encoded = true := by
  decide +kernel
theorem small_9847461_right_covered : CoveredBy scale carrier boxes small_9847461_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847461_right_root small_9847461_right_fuel small_9847461_right_count small_9847461_right_encoded small_9847461_right_checked

theorem cover_9847461 : CoveredBy scale carrier boxes root_9847461 := by
  apply coveredBy_split_literal root_9847461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847462 small_9847461_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847462
  · exact small_9847461_right_covered
#print axioms cover_9847461

def root_9847455 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847455_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847455_left_fuel : Nat := 1
def small_9847455_left_count : Nat := 1
def small_9847455_left_encoded : String := "00000001"
theorem small_9847455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847455_left_root small_9847455_left_fuel small_9847455_left_count small_9847455_left_encoded = true := by
  decide +kernel
theorem small_9847455_left_covered : CoveredBy scale carrier boxes small_9847455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847455_left_root small_9847455_left_fuel small_9847455_left_count small_9847455_left_encoded small_9847455_left_checked

theorem cover_9847455 : CoveredBy scale carrier boxes root_9847455 := by
  apply coveredBy_split_literal root_9847455 small_9847455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847461 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9847455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847461
#print axioms cover_9847455

def root_9858177 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9858177 : CoveredBy scale carrier boxes root_9858177 := by
  apply coveredBy_split_literal root_9858177 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3693.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3694.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3693.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3694.covered
#print axioms cover_9858177

def root_9858172 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9858172_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9858172_right_fuel : Nat := 1
def small_9858172_right_count : Nat := 1
def small_9858172_right_encoded : String := "00000001"
theorem small_9858172_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9858172_right_root small_9858172_right_fuel small_9858172_right_count small_9858172_right_encoded = true := by
  decide +kernel
theorem small_9858172_right_covered : CoveredBy scale carrier boxes small_9858172_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9858172_right_root small_9858172_right_fuel small_9858172_right_count small_9858172_right_encoded small_9858172_right_checked

theorem cover_9858172 : CoveredBy scale carrier boxes root_9858172 := by
  apply coveredBy_split_literal root_9858172 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9858177 small_9858172_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9858177
  · exact small_9858172_right_covered
#print axioms cover_9858172

def root_9847454 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9847454 : CoveredBy scale carrier boxes root_9847454 := by
  apply coveredBy_split_literal root_9847454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9858172 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847455
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9858172
#print axioms cover_9847454

def root_9847448 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847448_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847448_left_fuel : Nat := 1
def small_9847448_left_count : Nat := 1
def small_9847448_left_encoded : String := "00000000"
theorem small_9847448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847448_left_root small_9847448_left_fuel small_9847448_left_count small_9847448_left_encoded = true := by
  decide +kernel
theorem small_9847448_left_covered : CoveredBy scale carrier boxes small_9847448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847448_left_root small_9847448_left_fuel small_9847448_left_count small_9847448_left_encoded small_9847448_left_checked

theorem cover_9847448 : CoveredBy scale carrier boxes root_9847448 := by
  apply coveredBy_split_literal root_9847448 small_9847448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847454 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9847448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847454
#print axioms cover_9847448

def root_9862158 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862158_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862158_right_fuel : Nat := 29
def small_9862158_right_count : Nat := 451
def small_9862158_right_encoded : String := "138670FE0C9A86FC0F878D0707800100128A4101000000000280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040DE7C9FC0000000A0000000A0000000A0000000A13D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040DE7C9FC000000070000000A0000000712EA58FA022A457F13E200FE000000040DE7C9FC0000000A0000000A000000070000000200000001128A7D01028001020000000A0000000A00000000000000030F8751070000000307800100128A4101000000000280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000001400102000000080000000A0000000A0000000310801107000000030640010012FF710100000000000000080000000813E1C4FE0B4D43FC0000000A10801107000000030640010000000008000000080000000412EA58FA022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000001400102000000090000000A000000060000000310801107000000030640010012FF710100000000014001020000000513F615030569AC3B134110FA00000002033F67BF13BC30FE000000040000000900000005000000050000000112FFAD01014001020000000A13F615030569AC3B0000000A0000000A000000010000000013E1C4FE00000005000000040000000213D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000003C0010213A51103000000010793F0BB0000000A0000000A000000070000000A0000000310801107000000030640010012FF71010000000003C0010213A51103000000010793F0BB12825CFA0000000200000008128220FA033F67BF13BC30FE000000040AA6A27C10EDAD070000000A0000000310ED710700000003000000080000000A0000000213A54D030793F0BB12825CFA00000002033F67BF13BC30FE000000040AA6A27C0000000710ED7107000000030000000800000007128220FA033F67BF13BC30FE000000040AA6A27C10EDAD070000000A0000000310ED71070000000305A0010013313501000000000460010200000008000000070000000A00000007000000020000000112FFAD0103C0010213A51103000000010793F0BB000000080000000A13A54D030793F0BB0000000A0000000A000000010000000013E1C4FE0B4D43FC10804D07000000070000000310801107000000030640010012FF71010000000003C001020000000A000000070000000A0000000412EA58FA022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000003C0010213A51103000000010569AC3B0000000A0000000A13A54D030569AC3B0000000A0000000A0000000112FFAD010000000A000000000000000310801107000000030640010012FF71010000000003C0010213A51103000000010569AC3B134110FA00000002033F67BF13BC30FE000000040AA6A27C10EDAD070000000A0000000310ED71070000000305A001001331350100000000032001020000000513C1450305F43D5B0000000800000005000000010000000A000000050000000513A54D030569AC3B134110FA00000002033F67BF13BC30FE000000040AA6A27C10EDAD0705A0010013313501000000000000000A0000000A0000000310ED71070000000305A001001331350100000000046001021383DD030000000105F43D5B0000000A0000000A1384190305F43D5B000000070000000A0000000113317101046001020000000A0000000A0000000013BBF4FE0000000A000000041340D4FA033F67BF13BC30FE000000040AA6A27C10EDAD0705A001001331350100000000000000050000000A0000000310ED71070000000305A00100000000051331710104600102000000050000000A0000000000000005000000020000000112FFAD0103C0010213A51103000000010569AC3B0000000A0000000A13A54D030569AC3B134110FA000000020000000A0000000A000000010000000013E1C4FE0B4D43FC10804D070000000A00000003108011070000000306400100000000050000000A000000040000000200000001128A7D010280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC0000000A0000000A0000000A12EA58FA022A457F13E200FE000000040B4D43FC000000060000000A0000000A0000000213D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D070000000A00000003108011070000000308C0010011FBE901000000000000000A0000000A0000000A12EA58FA022A457F13E200FE000000040B4D43FC10804D070000000A00000003108011070000000308C0010011FBE9010000000003C001020000000A0000000A0000000A0000000A00000002000000010000000000000004"
theorem small_9862158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862158_right_root small_9862158_right_fuel small_9862158_right_count small_9862158_right_encoded = true := by
  decide +kernel
theorem small_9862158_right_covered : CoveredBy scale carrier boxes small_9862158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862158_right_root small_9862158_right_fuel small_9862158_right_count small_9862158_right_encoded small_9862158_right_checked

theorem cover_9862158 : CoveredBy scale carrier boxes root_9862158 := by
  apply coveredBy_split_literal root_9862158 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3695.root small_9862158_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3695.covered
  · exact small_9862158_right_covered
#print axioms cover_9862158

def root_9862152 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862152_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862152_left_fuel : Nat := 1
def small_9862152_left_count : Nat := 1
def small_9862152_left_encoded : String := "00000003"
theorem small_9862152_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862152_left_root small_9862152_left_fuel small_9862152_left_count small_9862152_left_encoded = true := by
  decide +kernel
theorem small_9862152_left_covered : CoveredBy scale carrier boxes small_9862152_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862152_left_root small_9862152_left_fuel small_9862152_left_count small_9862152_left_encoded small_9862152_left_checked

theorem cover_9862152 : CoveredBy scale carrier boxes root_9862152 := by
  apply coveredBy_split_literal root_9862152 small_9862152_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862158 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9862152_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862158
#print axioms cover_9862152

def root_9862128 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862128_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862128_left_fuel : Nat := 6
def small_9862128_left_count : Nat := 11
def small_9862128_left_encoded : String := "0F34D0FC045489FF00000006138670FE07800100128A4101000000000000000A000000060000000400000003"
theorem small_9862128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862128_left_root small_9862128_left_fuel small_9862128_left_count small_9862128_left_encoded = true := by
  decide +kernel
theorem small_9862128_left_covered : CoveredBy scale carrier boxes small_9862128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862128_left_root small_9862128_left_fuel small_9862128_left_count small_9862128_left_encoded small_9862128_left_checked

theorem cover_9862128 : CoveredBy scale carrier boxes root_9862128 := by
  apply coveredBy_split_literal root_9862128 small_9862128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862152 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9862128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862152
#print axioms cover_9862128

def root_9862122 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862122_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862122_left_fuel : Nat := 1
def small_9862122_left_count : Nat := 1
def small_9862122_left_encoded : String := "00000002"
theorem small_9862122_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862122_left_root small_9862122_left_fuel small_9862122_left_count small_9862122_left_encoded = true := by
  decide +kernel
theorem small_9862122_left_covered : CoveredBy scale carrier boxes small_9862122_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862122_left_root small_9862122_left_fuel small_9862122_left_count small_9862122_left_encoded small_9862122_left_checked

theorem cover_9862122 : CoveredBy scale carrier boxes root_9862122 := by
  apply coveredBy_split_literal root_9862122 small_9862122_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862128 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9862122_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862128
#print axioms cover_9862122

def root_9862121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862121_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862121_right_fuel : Nat := 29
def small_9862121_right_count : Nat := 135
def small_9862121_right_encoded : String := "138670FA0CFD9C070F34D0FC00000006000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC000000060F8751070000000307800100128A410100000000028001020000000613D7ED03022A457B13E200FA00000002067ECE7F0000000612EA58FE0B4D43FC0000000610801107000000030640010012FF71010000000003C001020000000613A54D03033F67BB13BC30FA000000020569AC3F000000061340D4FE0AA6A27C0000000610ED71070000000305A0010000000005000000060000000400000006000000010000000600000004000000060000000100000006138670FE0C9A86FC0F878D0707800100128A410100000000028001020000000613D7ED03022A457B13E200FA00000002022A457F000000060000000A000000060000000100000006000000030F8751070000000307800100128A4101000000000280010213D7B103000000010000000513D7ED03022A457B13E200FA00000002022A457F13E200FE000000040B4D43FC10804D070640010012FF7101000000000000000500000006000000031080110700000003064001000000000512FFAD0103C001020000000513A54D03033F67BB13BC30FA000000020000000A000000050000000100000000000000050000000500000001128A7D010280010213D7B103000000010000000613D7ED03022A457B13E200FA00000002022A457F000000060000000A0000000600000001000000000000000400000002"
theorem small_9862121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862121_right_root small_9862121_right_fuel small_9862121_right_count small_9862121_right_encoded = true := by
  decide +kernel
theorem small_9862121_right_covered : CoveredBy scale carrier boxes small_9862121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862121_right_root small_9862121_right_fuel small_9862121_right_count small_9862121_right_encoded small_9862121_right_checked

theorem cover_9862121 : CoveredBy scale carrier boxes root_9862121 := by
  apply coveredBy_split_literal root_9862121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862122 small_9862121_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862122
  · exact small_9862121_right_covered
#print axioms cover_9862121

def root_9862115 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862115_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862115_left_fuel : Nat := 1
def small_9862115_left_count : Nat := 1
def small_9862115_left_encoded : String := "00000001"
theorem small_9862115_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862115_left_root small_9862115_left_fuel small_9862115_left_count small_9862115_left_encoded = true := by
  decide +kernel
theorem small_9862115_left_covered : CoveredBy scale carrier boxes small_9862115_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862115_left_root small_9862115_left_fuel small_9862115_left_count small_9862115_left_encoded small_9862115_left_checked

theorem cover_9862115 : CoveredBy scale carrier boxes root_9862115 := by
  apply coveredBy_split_literal root_9862115 small_9862115_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862121 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9862115_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862121
#print axioms cover_9862115

def root_9862114 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9862114 : CoveredBy scale carrier boxes root_9862114 := by
  apply coveredBy_split_literal root_9862114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862115 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3696.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862115
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3696.covered
#print axioms cover_9862114

def root_9862109 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862109_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862109_right_fuel : Nat := 1
def small_9862109_right_count : Nat := 1
def small_9862109_right_encoded : String := "00000000"
theorem small_9862109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862109_right_root small_9862109_right_fuel small_9862109_right_count small_9862109_right_encoded = true := by
  decide +kernel
theorem small_9862109_right_covered : CoveredBy scale carrier boxes small_9862109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862109_right_root small_9862109_right_fuel small_9862109_right_count small_9862109_right_encoded small_9862109_right_checked

theorem cover_9862109 : CoveredBy scale carrier boxes root_9862109 := by
  apply coveredBy_split_literal root_9862109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862114 small_9862109_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862114
  · exact small_9862109_right_covered
#print axioms cover_9862109

def root_9847447 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9847447 : CoveredBy scale carrier boxes root_9847447 := by
  apply coveredBy_split_literal root_9847447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9862109 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847448
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9862109
#print axioms cover_9847447

def root_9847442 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847442_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847442_right_fuel : Nat := 1
def small_9847442_right_count : Nat := 1
def small_9847442_right_encoded : String := "00000004"
theorem small_9847442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847442_right_root small_9847442_right_fuel small_9847442_right_count small_9847442_right_encoded = true := by
  decide +kernel
theorem small_9847442_right_covered : CoveredBy scale carrier boxes small_9847442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847442_right_root small_9847442_right_fuel small_9847442_right_count small_9847442_right_encoded small_9847442_right_checked

theorem cover_9847442 : CoveredBy scale carrier boxes root_9847442 := by
  apply coveredBy_split_literal root_9847442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847447 small_9847442_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847447
  · exact small_9847442_right_covered
#print axioms cover_9847442

def root_9845284 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9845284 : CoveredBy scale carrier boxes root_9845284 := by
  apply coveredBy_split_literal root_9845284 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3688.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9847442 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3688.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9847442
#print axioms cover_9845284

def root_9845278 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845278_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845278_left_fuel : Nat := 1
def small_9845278_left_count : Nat := 1
def small_9845278_left_encoded : String := "00000003"
theorem small_9845278_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9845278_left_root small_9845278_left_fuel small_9845278_left_count small_9845278_left_encoded = true := by
  decide +kernel
theorem small_9845278_left_covered : CoveredBy scale carrier boxes small_9845278_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9845278_left_root small_9845278_left_fuel small_9845278_left_count small_9845278_left_encoded small_9845278_left_checked

theorem cover_9845278 : CoveredBy scale carrier boxes root_9845278 := by
  apply coveredBy_split_literal root_9845278 small_9845278_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9845284 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9845278_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9845284
#print axioms cover_9845278

def root_9845198 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845198_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845198_left_fuel : Nat := 9
def small_9845198_left_count : Nat := 39
def small_9845198_left_encoded : String := "120700FC08A912FF12073CFE0000000405000100135D45010000000005000102135D45030000000100000006135D8103045489FB00000005000000060000000100000006120700FE05000100135D45010000000005000102135D450300000001045489FB000000070000000600000007135D81010500010200000006135D8103045489FB000000070000000600000001000000000000000400000003"
theorem small_9845198_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9845198_left_root small_9845198_left_fuel small_9845198_left_count small_9845198_left_encoded = true := by
  decide +kernel
theorem small_9845198_left_covered : CoveredBy scale carrier boxes small_9845198_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9845198_left_root small_9845198_left_fuel small_9845198_left_count small_9845198_left_encoded small_9845198_left_checked

theorem cover_9845198 : CoveredBy scale carrier boxes root_9845198 := by
  apply coveredBy_split_literal root_9845198 small_9845198_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9845278 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9845198_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9845278
#print axioms cover_9845198

def root_9845193 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845193_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845193_right_fuel : Nat := 1
def small_9845193_right_count : Nat := 1
def small_9845193_right_encoded : String := "00000002"
theorem small_9845193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9845193_right_root small_9845193_right_fuel small_9845193_right_count small_9845193_right_encoded = true := by
  decide +kernel
theorem small_9845193_right_covered : CoveredBy scale carrier boxes small_9845193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9845193_right_root small_9845193_right_fuel small_9845193_right_count small_9845193_right_encoded small_9845193_right_checked

theorem cover_9845193 : CoveredBy scale carrier boxes root_9845193 := by
  apply coveredBy_split_literal root_9845193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9845198 small_9845193_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9845198
  · exact small_9845193_right_covered
#print axioms cover_9845193

def root_9842885 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842885 : CoveredBy scale carrier boxes root_9842885 := by
  apply coveredBy_split_literal root_9842885 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3687.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9845193 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3687.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9845193
#print axioms cover_9842885

def root_9842879 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842879_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842879_left_fuel : Nat := 1
def small_9842879_left_count : Nat := 1
def small_9842879_left_encoded : String := "00000004"
theorem small_9842879_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842879_left_root small_9842879_left_fuel small_9842879_left_count small_9842879_left_encoded = true := by
  decide +kernel
theorem small_9842879_left_covered : CoveredBy scale carrier boxes small_9842879_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842879_left_root small_9842879_left_fuel small_9842879_left_count small_9842879_left_encoded small_9842879_left_checked

theorem cover_9842879 : CoveredBy scale carrier boxes root_9842879 := by
  apply coveredBy_split_literal root_9842879 small_9842879_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9842885 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9842879_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9842885
#print axioms cover_9842879

def root_9842878 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842878_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842878_right_fuel : Nat := 6
def small_9842878_right_count : Nat := 11
def small_9842878_right_encoded : String := "1151E8FF08A912FB00000005120700FA08A913070000000512073CFC00000003000000050000000200000004"
theorem small_9842878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842878_right_root small_9842878_right_fuel small_9842878_right_count small_9842878_right_encoded = true := by
  decide +kernel
theorem small_9842878_right_covered : CoveredBy scale carrier boxes small_9842878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842878_right_root small_9842878_right_fuel small_9842878_right_count small_9842878_right_encoded small_9842878_right_checked

theorem cover_9842878 : CoveredBy scale carrier boxes root_9842878 := by
  apply coveredBy_split_literal root_9842878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9842879 small_9842878_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9842879
  · exact small_9842878_right_covered
#print axioms cover_9842878

def root_9842873 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842873_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842873_right_fuel : Nat := 1
def small_9842873_right_count : Nat := 1
def small_9842873_right_encoded : String := "00000003"
theorem small_9842873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842873_right_root small_9842873_right_fuel small_9842873_right_count small_9842873_right_encoded = true := by
  decide +kernel
theorem small_9842873_right_covered : CoveredBy scale carrier boxes small_9842873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842873_right_root small_9842873_right_fuel small_9842873_right_count small_9842873_right_encoded small_9842873_right_checked

theorem cover_9842873 : CoveredBy scale carrier boxes root_9842873 := by
  apply coveredBy_split_literal root_9842873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9842878 small_9842873_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9842878
  · exact small_9842873_right_covered
#print axioms cover_9842873

def root_9872597 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9872597 : CoveredBy scale carrier boxes root_9872597 := by
  apply coveredBy_split_literal root_9872597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3698.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3699.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3698.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3699.covered
#print axioms cover_9872597

def root_9872592 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872592_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872592_right_fuel : Nat := 1
def small_9872592_right_count : Nat := 1
def small_9872592_right_encoded : String := "00000003"
theorem small_9872592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9872592_right_root small_9872592_right_fuel small_9872592_right_count small_9872592_right_encoded = true := by
  decide +kernel
theorem small_9872592_right_covered : CoveredBy scale carrier boxes small_9872592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9872592_right_root small_9872592_right_fuel small_9872592_right_count small_9872592_right_encoded small_9872592_right_checked

theorem cover_9872592 : CoveredBy scale carrier boxes root_9872592 := by
  apply coveredBy_split_literal root_9872592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9872597 small_9872592_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9872597
  · exact small_9872592_right_covered
#print axioms cover_9872592

def root_9872591 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872591_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872591_right_fuel : Nat := 17
def small_9872591_right_count : Nat := 69
def small_9872591_right_encoded : String := "135D450700000003045489FB1386ACFA00000002045489FF1386ACFE00000004028001000000000613D7ED010780010200000006000000060000000000000006138670FA045489FF1386ACFE000000040280010013D7B10100000000078001020000000A0000000A13D7ED0107800102128A410300000001028000FC13D7ED07022A457B13E200FA00000002067ECE7F0000000712EA58FE03C00100000000060000000700000004000000070000000300000007128A7D03028000FC13D7ED07022A457B0000000A0000000A000000030000000A0000000100000000138670FE028001000000000613D7ED0107800102128A41030000000100000005128A7D030000000600000001000000000000000400000002"
theorem small_9872591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9872591_right_root small_9872591_right_fuel small_9872591_right_count small_9872591_right_encoded = true := by
  decide +kernel
theorem small_9872591_right_covered : CoveredBy scale carrier boxes small_9872591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9872591_right_root small_9872591_right_fuel small_9872591_right_count small_9872591_right_encoded small_9872591_right_checked

theorem cover_9872591 : CoveredBy scale carrier boxes root_9872591 := by
  apply coveredBy_split_literal root_9872591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9872592 small_9872591_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9872592
  · exact small_9872591_right_covered
#print axioms cover_9872591

def root_9872586 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872586_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872586_right_fuel : Nat := 1
def small_9872586_right_count : Nat := 1
def small_9872586_right_encoded : String := "00000001"
theorem small_9872586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9872586_right_root small_9872586_right_fuel small_9872586_right_count small_9872586_right_encoded = true := by
  decide +kernel
theorem small_9872586_right_covered : CoveredBy scale carrier boxes small_9872586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9872586_right_root small_9872586_right_fuel small_9872586_right_count small_9872586_right_encoded small_9872586_right_checked

theorem cover_9872586 : CoveredBy scale carrier boxes root_9872586 := by
  apply coveredBy_split_literal root_9872586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9872591 small_9872586_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9872591
  · exact small_9872586_right_covered
#print axioms cover_9872586

def root_9870296 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9870296 : CoveredBy scale carrier boxes root_9870296 := by
  apply coveredBy_split_literal root_9870296 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3697.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9872586 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3697.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9872586
#print axioms cover_9870296

def root_9870290 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870290_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870290_left_fuel : Nat := 1
def small_9870290_left_count : Nat := 1
def small_9870290_left_encoded : String := "00000000"
theorem small_9870290_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9870290_left_root small_9870290_left_fuel small_9870290_left_count small_9870290_left_encoded = true := by
  decide +kernel
theorem small_9870290_left_covered : CoveredBy scale carrier boxes small_9870290_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9870290_left_root small_9870290_left_fuel small_9870290_left_count small_9870290_left_encoded small_9870290_left_checked

theorem cover_9870290 : CoveredBy scale carrier boxes root_9870290 := by
  apply coveredBy_split_literal root_9870290 small_9870290_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9870296 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9870290_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9870296
#print axioms cover_9870290

def root_9876544 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9876544 : CoveredBy scale carrier boxes root_9876544 := by
  apply coveredBy_split_literal root_9876544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3700.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3701.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3700.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3701.covered
#print axioms cover_9876544

def root_9876538 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876538_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876538_left_fuel : Nat := 1
def small_9876538_left_count : Nat := 1
def small_9876538_left_encoded : String := "00000002"
theorem small_9876538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876538_left_root small_9876538_left_fuel small_9876538_left_count small_9876538_left_encoded = true := by
  decide +kernel
theorem small_9876538_left_covered : CoveredBy scale carrier boxes small_9876538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876538_left_root small_9876538_left_fuel small_9876538_left_count small_9876538_left_encoded small_9876538_left_checked

theorem cover_9876538 : CoveredBy scale carrier boxes root_9876538 := by
  apply coveredBy_split_literal root_9876538 small_9876538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876544 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9876538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876544
#print axioms cover_9876538

def root_9876537 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876537_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876537_right_fuel : Nat := 30
def small_9876537_right_count : Nat := 249
def small_9876537_right_encoded : String := "138670FA045489FF1386ACFE0000000407800100128A410100000000028001020000000713D7ED03078000FC128A7D07022A457B13E200FA00000002067ECE7F0000000712EA58FE0640010012FF71010000000003C0010213A51103000000010000000713A54D0308C000FC11FC2507033F67BB13BC30FA000000020569AC3F000000071340D4FE05A0010013313501000000000000000513317101046001020000000713841903096000FC11AABD07000000060000000311AA8107000000030000000500000001000000000000000413BBF4FA0569AC3F0000000600000005000000020000000311FBE90700000003000000070000000112FFAD0103C001020000000713A54D0308C000FC11FC2507033F67BB13BC30FA000000020569AC3F000000061340D4FE06E0010012C7E50100000000046001020000000600000006000000060000000400000006000000030000000700000001000000000000000413E1C4FA067ECE7F0000000612EA58FE064001000000000700000006000000040000000200000003128A4107000000030000000700000001128A7D01028001020000000713D7ED03078000FC128A7D07022A457B13E200FA00000002067ECE7F0000000612EA58FE08C001000000000700000006000000040000000600000003000000070000000100000000138670FE07800100128A4101000000000280010213D7B103000000010000000513D7ED03078000FC128A7D07022A457B13E200FA00000002022A457F13E200FE00000004064001000000000512FFAD0103C001020000000513A54D0308C000FC0000000511FBE90700000003000000050000000100000000000000050000000500000003128A4107000000030000000500000001128A7D010280010213D7B10300000001078000FC128A7D07022A457B13E200FA00000002022A457F00000007000000050000000500000003128A4107000000030000000713D7ED03078000FC128A7D07022A457B13E200FA00000002022A457F13E200FE0000000408C0010011FBE9010000000003C0010213A511030000000108C000FC11FC250700000006000000030000000713A54D0308C000FC11FC2507033F67BB0000000A000000050000000311FBE90700000003033F67BB13BC30FA00000002033F67BF0000000700000005000000050000000111FC250103C001020000000613A54D0308C000FC0000000611FBE9070000000300000007000000010000000013E1C4FE08C00100000000050000000A0000000413E1C4FA022A457F00000006000000050000000200000003128A410700000003022A457B13E200FA00000002022A457F00000007000000050000000500000001000000000000000400000002"
theorem small_9876537_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876537_right_root small_9876537_right_fuel small_9876537_right_count small_9876537_right_encoded = true := by
  decide +kernel
theorem small_9876537_right_covered : CoveredBy scale carrier boxes small_9876537_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876537_right_root small_9876537_right_fuel small_9876537_right_count small_9876537_right_encoded small_9876537_right_checked

theorem cover_9876537 : CoveredBy scale carrier boxes root_9876537 := by
  apply coveredBy_split_literal root_9876537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876538 small_9876537_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876538
  · exact small_9876537_right_covered
#print axioms cover_9876537

def root_9876532 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876532_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876532_right_fuel : Nat := 1
def small_9876532_right_count : Nat := 1
def small_9876532_right_encoded : String := "00000003"
theorem small_9876532_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876532_right_root small_9876532_right_fuel small_9876532_right_count small_9876532_right_encoded = true := by
  decide +kernel
theorem small_9876532_right_covered : CoveredBy scale carrier boxes small_9876532_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876532_right_root small_9876532_right_fuel small_9876532_right_count small_9876532_right_encoded small_9876532_right_checked

theorem cover_9876532 : CoveredBy scale carrier boxes root_9876532 := by
  apply coveredBy_split_literal root_9876532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876537 small_9876532_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876537
  · exact small_9876532_right_covered
#print axioms cover_9876532

def root_9876531 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876531_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876531_right_fuel : Nat := 17
def small_9876531_right_count : Nat := 65
def small_9876531_right_encoded : String := "135D450700000003045489FB1386ACFA00000002045489FF1386ACFE00000004078001000000000700000007138670FE07800100128A410100000000028001020000000813D7ED03028000FC13D7ED07067ECE7B0000000612EA58FA022A457F13E200FE000000040640010000000006000000070000000500000002000000030000000600000001128A7D01028001020000000813D7ED03028000FC13D7ED07067ECE7B0000000812EA58FA022A457F0000000700000008000000020000000300000008000000010000000000000004138670FA045489FF00000007138670FE07800100128A41010000000000000005128A7D0100000007000000000000000400000002"
theorem small_9876531_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876531_right_root small_9876531_right_fuel small_9876531_right_count small_9876531_right_encoded = true := by
  decide +kernel
theorem small_9876531_right_covered : CoveredBy scale carrier boxes small_9876531_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876531_right_root small_9876531_right_fuel small_9876531_right_count small_9876531_right_encoded small_9876531_right_checked

theorem cover_9876531 : CoveredBy scale carrier boxes root_9876531 := by
  apply coveredBy_split_literal root_9876531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876532 small_9876531_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876532
  · exact small_9876531_right_covered
#print axioms cover_9876531

def root_9876525 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876525_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876525_left_fuel : Nat := 1
def small_9876525_left_count : Nat := 1
def small_9876525_left_encoded : String := "00000001"
theorem small_9876525_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876525_left_root small_9876525_left_fuel small_9876525_left_count small_9876525_left_encoded = true := by
  decide +kernel
theorem small_9876525_left_covered : CoveredBy scale carrier boxes small_9876525_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876525_left_root small_9876525_left_fuel small_9876525_left_count small_9876525_left_encoded small_9876525_left_checked

theorem cover_9876525 : CoveredBy scale carrier boxes root_9876525 := by
  apply coveredBy_split_literal root_9876525 small_9876525_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876531 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9876525_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876531
#print axioms cover_9876525

def root_9880364 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9880364 : CoveredBy scale carrier boxes root_9880364 := by
  apply coveredBy_split_literal root_9880364 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3702.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3703.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3702.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3703.covered
#print axioms cover_9880364

def root_9880358 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880358_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880358_left_fuel : Nat := 1
def small_9880358_left_count : Nat := 1
def small_9880358_left_encoded : String := "00000002"
theorem small_9880358_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880358_left_root small_9880358_left_fuel small_9880358_left_count small_9880358_left_encoded = true := by
  decide +kernel
theorem small_9880358_left_covered : CoveredBy scale carrier boxes small_9880358_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880358_left_root small_9880358_left_fuel small_9880358_left_count small_9880358_left_encoded small_9880358_left_checked

theorem cover_9880358 : CoveredBy scale carrier boxes root_9880358 := by
  apply coveredBy_split_literal root_9880358 small_9880358_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9880364 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9880358_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9880364
#print axioms cover_9880358

def root_9885534 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9885534 : CoveredBy scale carrier boxes root_9885534 := by
  apply coveredBy_split_literal root_9885534 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3704.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3705.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3704.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3705.covered
#print axioms cover_9885534

def root_9885529 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9885529_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9885529_right_fuel : Nat := 1
def small_9885529_right_count : Nat := 1
def small_9885529_right_encoded : String := "00000002"
theorem small_9885529_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9885529_right_root small_9885529_right_fuel small_9885529_right_count small_9885529_right_encoded = true := by
  decide +kernel
theorem small_9885529_right_covered : CoveredBy scale carrier boxes small_9885529_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9885529_right_root small_9885529_right_fuel small_9885529_right_count small_9885529_right_encoded small_9885529_right_checked

theorem cover_9885529 : CoveredBy scale carrier boxes root_9885529 := by
  apply coveredBy_split_literal root_9885529 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9885534 small_9885529_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9885534
  · exact small_9885529_right_covered
#print axioms cover_9885529

def root_9880357 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9880357 : CoveredBy scale carrier boxes root_9880357 := by
  apply coveredBy_split_literal root_9880357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9880358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9885529 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9880358
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9885529
#print axioms cover_9880357

def root_9880352 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880352_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880352_right_fuel : Nat := 1
def small_9880352_right_count : Nat := 1
def small_9880352_right_encoded : String := "00000003"
theorem small_9880352_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880352_right_root small_9880352_right_fuel small_9880352_right_count small_9880352_right_encoded = true := by
  decide +kernel
theorem small_9880352_right_covered : CoveredBy scale carrier boxes small_9880352_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880352_right_root small_9880352_right_fuel small_9880352_right_count small_9880352_right_encoded small_9880352_right_checked

theorem cover_9880352 : CoveredBy scale carrier boxes root_9880352 := by
  apply coveredBy_split_literal root_9880352 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9880357 small_9880352_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9880357
  · exact small_9880352_right_covered
#print axioms cover_9880352

def root_9880351 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880351_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880351_right_fuel : Nat := 23
def small_9880351_right_count : Nat := 315
def small_9880351_right_encoded : String := "135D450700000003045489FB1386ACFA00000002045489FF1386ACFE0000000407800100128A41010000000007800102128A410300000001028000FC13D7ED07067ECE7B12EA94FA00000002067ECE7F000000050000000612EA58FA067ECE7F0000000712EA58FE06400100000000060000000700000004000000020000000313D7B10700000003067ECE7B0000000600000007128A7D03028000FC13D7ED07067ECE7B0000000512EA58FA067ECE7F000000050000000600000002000000030000000600000001128A7D0107800102128A410300000001028000FC13D7ED07067ECE7B000000050000000700000003000000070000000900000000138670FE07800100128A410100000000078001020000000600000006128A7D0107800102128A410300000001028000FC13D7ED07067ECE7B12EA94FA000000020000000612EA58FA022A457F13E200FE0000000408C0010011FBE901000000000640010200000007000000060000000913E1C4FE08C001000000000611FC25010640010200000008000000060000000000000004000000020000000313D7B10700000003067ECE7B0000000612EA58FA022A457F000000060000000600000002128A7D03028000FC13D7ED07067ECE7B0000000612EA58FA00000009000000020000000300000006000000010000000000000004138670FA045489FF1386ACFE0000000407800100128A4101000000000780010200000007128A7D03028000FC13D7ED07022A457B13E200FA00000002067ECE7F0000000712EA58FE0640010000000006000000090000000413E1C4FA067ECE7F0000000712EA58FE0640010012FF71010000000008C00102000000070000000A0000000700000004000000020000000313D7B10700000003022A457B13E200FA00000002000000070000000700000001128A7D010780010200000007128A7D03028000FC13D7ED07022A457B000000090000000700000003000000070000000100000000138670FE07800100128A41010000000007800102128A410300000001028000FC13D7ED07022A457B13E200FA00000002022A457F13E200FE000000040640010012FF7101000000000000000612FFAD01064001020000000712FFAD0303C000FC13A54D07033F67BB00000006000000050000000300000006000000010000000000000005000000050000000313D7B10700000003022A457B0000000600000005128A7D03028000FC13D7ED07022A457B13E200FA00000002022A457F000000060000000613E1C4FA022A457F13E200FE00000004064001000000000512FFAD0108C001020000000511FC250300000009000000010000000000000005000000020000000313D7B10700000003022A457B000000060000000500000001128A7D0107800102128A410300000001028000FC13D7ED07022A457B13E200FA00000002022A457F0000000713E1C4FE08C001000000000511FC2501064001020000000512FFAD030000000900000001000000000000000413E1C4FA022A457F0000000700000005000000020000000313D7B10700000003022A457B0000000700000005128A7D03028000FC13D7ED07022A457B13E200FA00000002022A457F0000000913E1C4FE000000090000000413E1C4FA022A457F0000000900000005000000020000000313D7B10700000003022A457B0000000913E1C4FA022A457F00000007000000050000000200000001000000000000000400000002"
theorem small_9880351_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880351_right_root small_9880351_right_fuel small_9880351_right_count small_9880351_right_encoded = true := by
  decide +kernel
theorem small_9880351_right_covered : CoveredBy scale carrier boxes small_9880351_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880351_right_root small_9880351_right_fuel small_9880351_right_count small_9880351_right_encoded small_9880351_right_checked

theorem cover_9880351 : CoveredBy scale carrier boxes root_9880351 := by
  apply coveredBy_split_literal root_9880351 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9880352 small_9880351_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9880352
  · exact small_9880351_right_covered
#print axioms cover_9880351

def root_9880346 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880346_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9880346_right_fuel : Nat := 1
def small_9880346_right_count : Nat := 1
def small_9880346_right_encoded : String := "00000001"
theorem small_9880346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9880346_right_root small_9880346_right_fuel small_9880346_right_count small_9880346_right_encoded = true := by
  decide +kernel
theorem small_9880346_right_covered : CoveredBy scale carrier boxes small_9880346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9880346_right_root small_9880346_right_fuel small_9880346_right_count small_9880346_right_encoded small_9880346_right_checked

theorem cover_9880346 : CoveredBy scale carrier boxes root_9880346 := by
  apply coveredBy_split_literal root_9880346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9880351 small_9880346_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9880351
  · exact small_9880346_right_covered
#print axioms cover_9880346

def root_9876524 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9876524 : CoveredBy scale carrier boxes root_9876524 := by
  apply coveredBy_split_literal root_9876524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9880346 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876525
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9880346
#print axioms cover_9876524

def root_9876519 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876519_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876519_right_fuel : Nat := 1
def small_9876519_right_count : Nat := 1
def small_9876519_right_encoded : String := "00000000"
theorem small_9876519_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876519_right_root small_9876519_right_fuel small_9876519_right_count small_9876519_right_encoded = true := by
  decide +kernel
theorem small_9876519_right_covered : CoveredBy scale carrier boxes small_9876519_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876519_right_root small_9876519_right_fuel small_9876519_right_count small_9876519_right_encoded small_9876519_right_checked

theorem cover_9876519 : CoveredBy scale carrier boxes root_9876519 := by
  apply coveredBy_split_literal root_9876519 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876524 small_9876519_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876524
  · exact small_9876519_right_covered
#print axioms cover_9876519

def root_9870289 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9870289 : CoveredBy scale carrier boxes root_9870289 := by
  apply coveredBy_split_literal root_9870289 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9870290 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9876519 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9870290
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9876519
#print axioms cover_9870289

def root_9870284 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870284_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870284_right_fuel : Nat := 1
def small_9870284_right_count : Nat := 1
def small_9870284_right_encoded : String := "00000004"
theorem small_9870284_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9870284_right_root small_9870284_right_fuel small_9870284_right_count small_9870284_right_encoded = true := by
  decide +kernel
theorem small_9870284_right_covered : CoveredBy scale carrier boxes small_9870284_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9870284_right_root small_9870284_right_fuel small_9870284_right_count small_9870284_right_encoded small_9870284_right_checked

theorem cover_9870284 : CoveredBy scale carrier boxes root_9870284 := by
  apply coveredBy_split_literal root_9870284 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.root_9870289 small_9870284_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233.cover_9870289
  · exact small_9870284_right_covered
#print axioms cover_9870284

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0233
