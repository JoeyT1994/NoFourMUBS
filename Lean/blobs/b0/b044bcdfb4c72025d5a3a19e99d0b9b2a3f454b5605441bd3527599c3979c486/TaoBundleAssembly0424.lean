import TaoBundleAssembly0423
import TaoBundleChunkBatch0573
import TaoBundleChunkBatch0574
import TaoBundleChunkBatch0575
import TaoBundleChunkBatch0576
import TaoBundleChunkBatch0577
import TaoBundleChunkBatch0578
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424
def root_6094392 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6094392_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6094392_left_fuel : Nat := 21
def small_6094392_left_count : Nat := 297
def small_6094392_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0001061151E907000000030A0000FE1152250908A91303120700F808A91305120700FA08A91309000000070000000700000002000000090000000112073CF80000000108A91305120700FA000000070000000212073CFA0000000208A91309120700FE05000100135D44F705000106000000070000000900000000135D80F7000000000500010600000007000000090000000400000007000000041151E9090000000408A91303120700F8000000090000000112073CF80000000108A913050000000712073CFA000000020500010000000007135D80F70000000005000106135D450700000003050000FE00000007135D4509000000040000000700000007115225070A0000FE1152250908A91303120700F8000000090000000112073CF80000000108A91305120700FA08A913070000000512073D0608A913090000000500000007000000030000000212073CFA0000000208A9130712070106000000030000000512073D0608A91309120700FE00000009000000040000000900000003000000041151E909000000040000000900000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A91303120700F8000000090000000112073CF80000000108A91309120700FE05000100135D44F7050000FA00000009135D4505000000020000000900000000135D80F700000000050000FA135D810505000106135D4507000000030CFD9C0300000007000000060000000900000002135D4505000000020000000A0000000412073CFE000000040500010000000009135D80F700000000050000FA00000009135D45050000000200000009000000041151E9090000000400000009115225070A0000FE000000091151E909000000040000000900000003000000011151E903000000010A0000FA115225050A0001061151E907000000030A0000FE1152250908A91305120700FA000000070000000212073CFA0000000208A91309120700FE0500010000000007000000070000000400000007000000041151E9090000000400000007115225070A0000FE1152250908A91305120700FA08A913070000000512073D0608A913090000000500000007000000030000000212073CFA0000000208A91307120701060000000308A91309000000050000000912073D0608A91309120700FE05000100135D44F70000000500000000135D80F700000000050000F800000005135D4503000000010CFD9C0500000005000000090000000412073CFE0000000405000100000000090000000700000003000000041151E9090000000408A91305120700FA00000007000000020000000700000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A913090000000812073CFE00000004050001000000000800000007000000041151E9090000000400000005115225070A0000FE1152250908A9130712070106000000030000000912073D0608A91309120700FE0500010000000009135D80F700000000050000F800000009135D450300000001050000FA000000090000000A000000040000000900000003000000041151E90900000004000000090000000300000000"
theorem small_6094392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6094392_left_root small_6094392_left_fuel small_6094392_left_count small_6094392_left_encoded = true := by
  decide +kernel
theorem small_6094392_left_covered : CoveredBy scale carrier boxes small_6094392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6094392_left_root small_6094392_left_fuel small_6094392_left_count small_6094392_left_encoded small_6094392_left_checked

theorem cover_6094392 : CoveredBy scale carrier boxes root_6094392 := by
  apply coveredBy_split_literal root_6094392 small_6094392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0423.root_6095026 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6094392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0423.cover_6095026
#print axioms cover_6094392

def root_6092916 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6092916 : CoveredBy scale carrier boxes root_6092916 := by
  apply coveredBy_split_literal root_6092916 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2292.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6094392 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2292.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6094392
#print axioms cover_6092916

def root_6099204 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6099204 : CoveredBy scale carrier boxes root_6099204 := by
  apply coveredBy_split_literal root_6099204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2294.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2295.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2294.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2295.covered
#print axioms cover_6099204

def root_6099198 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6099198_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6099198_left_fuel : Nat := 1
def small_6099198_left_count : Nat := 1
def small_6099198_left_encoded : String := "00000000"
theorem small_6099198_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6099198_left_root small_6099198_left_fuel small_6099198_left_count small_6099198_left_encoded = true := by
  decide +kernel
theorem small_6099198_left_covered : CoveredBy scale carrier boxes small_6099198_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6099198_left_root small_6099198_left_fuel small_6099198_left_count small_6099198_left_encoded small_6099198_left_checked

theorem cover_6099198 : CoveredBy scale carrier boxes root_6099198 := by
  apply coveredBy_split_literal root_6099198 small_6099198_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6099204 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6099198_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6099204
#print axioms cover_6099198

def root_6098320 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6098320_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6098320_left_fuel : Nat := 28
def small_6098320_left_count : Nat := 409
def small_6098320_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0001061151E907000000030A00010800000005115224FF0000000400000008115225070A0001081151E8FF08A91303120700F808A91305120700FA0000000500000002000000050000000112073CF80000000108A91305120700FA00000005000000020000000500000004115224FF0000000408A91303120700F808A91305120700FA08A91307120701060000000308A912FF0000000800000005000000050000000212073CFA0000000208A9130700000008000000080000000112073CF80000000108A91305120700FA08A91307120701060000000308A912FF12073D080500010000000005135D80F7000000000000000500000004000000050000000A0000000212073CFA0000000208A91307120701060000000308A912FF12073D080000000800000004120701080000000405000100135D44F70CFD9C03000000080F350CF8000000010000000A00000000135D80F7000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07000000080000000812073D0608A912FF000000081207010800000004000000080000000300000003000000021151E905000000020A0001061151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91303120700F808A912FF00000005000000080000000100000008115225070A0001081151E8FF08A91303120700F800000005000000010000000800000004115224FF0000000408A91303120700F8000000080000000112073CF80000000108A91307120701060000000308A912FF00000008000000080000000800000003000000011151E903000000010A0000FA115225050A0001061151E907000000030A0001081151E8FF00000005000000040000000A115225070A0001081151E8FF08A91305120700FA00000005000000020000000800000004115224FF0000000408A91305120700FA08A91307120701060000000308A912FF0000000A12070108000000040000000A0000000A0000000212073CFA0000000208A91307120701060000000308A912FF12073D0805000100135D44F7050000F8135D81030CFD9C05000000080F350CFA000000020000000800000001135D4503000000010000000A00000000135D80F700000000050000F8135D81030CFD9C050F34D0FA0000000A000000020F350CFA000000020000000800000001135D4503000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A0713867106000000030CFD9BFF000000080F34D108000000040000000A0000000800000004120701080000000405000100135D44F70000000A00000000135D80F700000000050000F8135D81030CFD9C050000000A0F350CFA0000000204548A071386710600000003045489FF1386AD080C9A86FA0000000A000000080000000413867108000000040C9A86FA000000070F875105000000020000000A0000000A00000001135D4503000000010CFD9C050000000A0F350CFA0000000204548A071386710600000003045489FF0000000A000000070000000A12073D0608A912FF12073D080500010000000008000000080000000412070108000000040000000A0000000300000003000000021151E905000000020A0001061151E907000000030A00010800000008115224FF0000000400000008115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120701060000000308A912FF12073D0805000100000000080000000800000004120701080000000405000100135D44F7050000F8135D8103050000FA135D810504548A0713867106000000030000000800000008000000020000000800000001135D450300000001050000FA135D810504548A0713867106000000030000000A0000000A00000002135D45050000000204548A071386710600000003045489FF00000008000000050000000800000000135D80F700000000050000F8135D8103050000FA135D810504548A0713867106000000030000000800000008000000020000000800000001135D450300000001050000FA135D810504548A071386710600000003045489FF1386AD0807800100000000080000000500000004000000051386AD060000000800000003000000020000000512073D0608A912FF000000081207010800000004050001000000000800000008000000030000000300000000"
theorem small_6098320_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6098320_left_root small_6098320_left_fuel small_6098320_left_count small_6098320_left_encoded = true := by
  decide +kernel
theorem small_6098320_left_covered : CoveredBy scale carrier boxes small_6098320_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6098320_left_root small_6098320_left_fuel small_6098320_left_count small_6098320_left_encoded small_6098320_left_checked

theorem cover_6098320 : CoveredBy scale carrier boxes root_6098320 := by
  apply coveredBy_split_literal root_6098320 small_6098320_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6099198 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6098320_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6099198
#print axioms cover_6098320

def root_6110563 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6110563 : CoveredBy scale carrier boxes root_6110563 := by
  apply coveredBy_split_literal root_6110563 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2299.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2300.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2299.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2300.covered
#print axioms cover_6110563

def root_6110557 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110557_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110557_left_fuel : Nat := 1
def small_6110557_left_count : Nat := 1
def small_6110557_left_encoded : String := "00000002"
theorem small_6110557_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6110557_left_root small_6110557_left_fuel small_6110557_left_count small_6110557_left_encoded = true := by
  decide +kernel
theorem small_6110557_left_covered : CoveredBy scale carrier boxes small_6110557_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6110557_left_root small_6110557_left_fuel small_6110557_left_count small_6110557_left_encoded small_6110557_left_checked

theorem cover_6110557 : CoveredBy scale carrier boxes root_6110557 := by
  apply coveredBy_split_literal root_6110557 small_6110557_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6110563 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6110557_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6110563
#print axioms cover_6110557

def root_6110043 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110043_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110043_left_fuel : Nat := 23
def small_6110043_left_count : Nat := 241
def small_6110043_left_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040CFD9BF70F350D000CFD9C030F34D0F804548A05000000051386ACFA0000000204548A07000000050000000A000000010000000A000000000F34D100000000000CFD9C030F34D0F804548A05138670FA04548A07000000050000000A000000021386ACFA0000000204548A07138671060000000304548A09138671080000000400000006000000071386AD0604548A0913867108000000040AD357770000000A10D10100000000000AD3578310D100F800000005000000010000000A1386AD080AD357770000000A10D10100000000000AD3578310D100F8067ECE850000000712EA94FA00000002067ECE87000000070000000A000000010000000A0000000400000003000000010F350CF80000000104548A05000000071386ACFA0000000204548A07000000071386AD0604548A0913867108000000040000000A000000070000000312073D080CFD9BF70F350D000CFD9C030F34D0F804548A0500000007000000090000000100000007000000000F34D100000000000CFD9C030F34D0F804548A05000000071386ACFA0000000204548A07000000071386AD060CFD9C090F34D108000000040AD357770000000700000007000000070000000300000001000000070000000412073D0608A9130912070108000000040000000A12073D080CFD9BF70F350D000CFD9C030F34D0F804548A050000000A1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040000000A000000090000000A000000010000000A000000000F34D100000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D0800000007000000040000000A000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040AD357770000000A10D10100000000000AD3578310D100F80000000A000000010000000A0F350D080C9A8708000000070F878D090AD3577710D13D00000000070000000010D10100000000000AD3578310D100F800000009000000010000000700000004000000040F350D060CFD9C090F34D108000000040000000A0F350D080C9A87060000000A0F878D070C9A87080F87510900000004000000060000000A000000030000000400000003000000010F350CF80000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D0800000007000000040F350D060000000A00000003000000040000000300000002"
theorem small_6110043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6110043_left_root small_6110043_left_fuel small_6110043_left_count small_6110043_left_encoded = true := by
  decide +kernel
theorem small_6110043_left_covered : CoveredBy scale carrier boxes small_6110043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6110043_left_root small_6110043_left_fuel small_6110043_left_count small_6110043_left_encoded small_6110043_left_checked

theorem cover_6110043 : CoveredBy scale carrier boxes root_6110043 := by
  apply coveredBy_split_literal root_6110043 small_6110043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6110557 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6110043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6110557
#print axioms cover_6110043

def root_6110037 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110037_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110037_left_fuel : Nat := 1
def small_6110037_left_count : Nat := 1
def small_6110037_left_encoded : String := "00000001"
theorem small_6110037_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6110037_left_root small_6110037_left_fuel small_6110037_left_count small_6110037_left_encoded = true := by
  decide +kernel
theorem small_6110037_left_covered : CoveredBy scale carrier boxes small_6110037_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6110037_left_root small_6110037_left_fuel small_6110037_left_count small_6110037_left_encoded small_6110037_left_checked

theorem cover_6110037 : CoveredBy scale carrier boxes root_6110037 := by
  apply coveredBy_split_literal root_6110037 small_6110037_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6110043 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6110037_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6110043
#print axioms cover_6110037

def root_6109139 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109139_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109139_left_fuel : Nat := 27
def small_6109139_left_count : Nat := 425
def small_6109139_left_encoded : String := "120700F808A91305120700FA08A91307120701060000000308A9130912070108000000040CFD9BF7000000050F34D1000000000004548A03000000051386ACF80000000104548A05000000051386ACFA0000000204548A07000000051386AD06000000050000000312073D080CFD9BF7000000090F34D1000000000004548A03000000091386ACF80000000104548A05138670FA04548A07000000051386AD06000000050000000300000002000000090000000412073D0608A9130912070108000000040CFD9BF70000000A0F34D1000000000004548A03138670F804548A05000000051386ACFA000000020CFD9C070000000500000008000000010000000A12073D080CFD9BF70F350D0004548A03138670F800000005000000011386ACF80000000104548A050000000A1386ACFA000000020CFD9C070F34D10600000003000000090000000A000000000F34D1000000000004548A03138670F804548A05138670FA0CFD9C07000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C09000000050000000900000003000000011386ACF80000000104548A05138670FA0CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040000000A000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040AD3577710D13D00067ECE83000000050000000A0000000010D1010000000000067ECE8312EA58F8067ECE8500000005000000090000000112EA94F800000001067ECE850000000A12EA94FA000000020AD3578710D1010600000003000000090000000A000000090F350D060CFD9C090F34D108000000040000000A0F350D080C9A87060F875107000000030000000600000009000000040000000300000004000000030000000212073CFA0000000208A91307120701060000000308A9130912070108000000040CFD9BF70F350D0004548A03000000091386ACF8000000010CFD9C050F34D0FA04548A07000000051386AD0600000005000000030000000200000009000000000F34D1000000000004548A03138670F80CFD9C050F34D0FA04548A0700000005000000080000000200000008000000011386ACF8000000010CFD9C050F34D0FA04548A07138671060000000304548A091386710800000004000000061386AD080AD357770000000910D1010000000000067ECE830000000912EA94F8000000010AD357850000000600000006000000041386AD0604548A09000000081386AD080AD357770000000910D1010000000000067ECE830000000812EA94F8000000010AD3578510D100FA067ECE8712EA590600000003067ECE89000000050000000912EA9506000000080000000300000002000000090000000400000003000000020F350CFA0000000204548A07138671060000000304548A0900000008000000090000000812073D08000000090000000412073D0608A9130912070108000000040CFD9BF70F350D0004548A03000000081386ACF8000000010CFD9C050F34D0FA0000000A0000000200000008000000000F34D1000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000081386AD080AD3577700000008000000080000000400000008000000020000000812073D080CFD9BF70F350D0004548A03000000091386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040000000A00000009000000030000000200000009000000000F34D1000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040000000800000009000000030000000200000009000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D108000000040AD357770000000910D1010000000000067ECE830000000912EA94F8000000010AD3578510D100FA000000090000000200000009000000090F350D060CFD9C090F34D108000000040C9A8706000000080F878D070AD3577710D13D00000000080000000010D1010000000000067ECE830000000812EA94F8000000010AD357850000000A00000008000000030F350D080C9A87060F875107000000030C9A87080000000600000006000000090000000400000003000000020F350CFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C090F34D10800000004000000080F350D08000000090000000400000003000000040000000300000001"
theorem small_6109139_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6109139_left_root small_6109139_left_fuel small_6109139_left_count small_6109139_left_encoded = true := by
  decide +kernel
theorem small_6109139_left_covered : CoveredBy scale carrier boxes small_6109139_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6109139_left_root small_6109139_left_fuel small_6109139_left_count small_6109139_left_encoded small_6109139_left_checked

theorem cover_6109139 : CoveredBy scale carrier boxes root_6109139 := by
  apply coveredBy_split_literal root_6109139 small_6109139_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6110037 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6109139_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6110037
#print axioms cover_6109139

def root_6109134 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109134_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109134_right_fuel : Nat := 1
def small_6109134_right_count : Nat := 1
def small_6109134_right_encoded : String := "00000000"
theorem small_6109134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6109134_right_root small_6109134_right_fuel small_6109134_right_count small_6109134_right_encoded = true := by
  decide +kernel
theorem small_6109134_right_covered : CoveredBy scale carrier boxes small_6109134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6109134_right_root small_6109134_right_fuel small_6109134_right_count small_6109134_right_encoded small_6109134_right_checked

theorem cover_6109134 : CoveredBy scale carrier boxes root_6109134 := by
  apply coveredBy_split_literal root_6109134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6109139 small_6109134_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6109139
  · exact small_6109134_right_covered
#print axioms cover_6109134

def root_6123725 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6123725 : CoveredBy scale carrier boxes root_6123725 := by
  apply coveredBy_split_literal root_6123725 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2304.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2305.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2304.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2305.covered
#print axioms cover_6123725

def root_6123719 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123719_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123719_left_fuel : Nat := 1
def small_6123719_left_count : Nat := 1
def small_6123719_left_encoded : String := "00000004"
theorem small_6123719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6123719_left_root small_6123719_left_fuel small_6123719_left_count small_6123719_left_encoded = true := by
  decide +kernel
theorem small_6123719_left_covered : CoveredBy scale carrier boxes small_6123719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6123719_left_root small_6123719_left_fuel small_6123719_left_count small_6123719_left_encoded small_6123719_left_checked

theorem cover_6123719 : CoveredBy scale carrier boxes root_6123719 := by
  apply coveredBy_split_literal root_6123719 small_6123719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6123725 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6123719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6123725
#print axioms cover_6123719

def root_6123718 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6123718 : CoveredBy scale carrier boxes root_6123718 := by
  apply coveredBy_split_literal root_6123718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6123719 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2306.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6123719
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2306.covered
#print axioms cover_6123718

def root_6123712 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123712_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123712_left_fuel : Nat := 1
def small_6123712_left_count : Nat := 1
def small_6123712_left_encoded : String := "00000003"
theorem small_6123712_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6123712_left_root small_6123712_left_fuel small_6123712_left_count small_6123712_left_encoded = true := by
  decide +kernel
theorem small_6123712_left_covered : CoveredBy scale carrier boxes small_6123712_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6123712_left_root small_6123712_left_fuel small_6123712_left_count small_6123712_left_encoded small_6123712_left_checked

theorem cover_6123712 : CoveredBy scale carrier boxes root_6123712 := by
  apply coveredBy_split_literal root_6123712 small_6123712_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6123718 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6123712_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6123718
#print axioms cover_6123712

def root_6137809 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6137809 : CoveredBy scale carrier boxes root_6137809 := by
  apply coveredBy_split_literal root_6137809 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2309.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2310.root coord2 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2309.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2310.covered
#print axioms cover_6137809

def root_6137804 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137804_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137804_right_fuel : Nat := 1
def small_6137804_right_count : Nat := 1
def small_6137804_right_encoded : String := "00000001"
theorem small_6137804_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6137804_right_root small_6137804_right_fuel small_6137804_right_count small_6137804_right_encoded = true := by
  decide +kernel
theorem small_6137804_right_covered : CoveredBy scale carrier boxes small_6137804_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6137804_right_root small_6137804_right_fuel small_6137804_right_count small_6137804_right_encoded small_6137804_right_checked

theorem cover_6137804 : CoveredBy scale carrier boxes root_6137804 := by
  apply coveredBy_split_literal root_6137804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6137809 small_6137804_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6137809
  · exact small_6137804_right_covered
#print axioms cover_6137804

def root_6137803 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6137803 : CoveredBy scale carrier boxes root_6137803 := by
  apply coveredBy_split_literal root_6137803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6137804 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2311.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6137804
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2311.covered
#print axioms cover_6137803

def root_6137797 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137797_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137797_left_fuel : Nat := 1
def small_6137797_left_count : Nat := 1
def small_6137797_left_encoded : String := "00000000"
theorem small_6137797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6137797_left_root small_6137797_left_fuel small_6137797_left_count small_6137797_left_encoded = true := by
  decide +kernel
theorem small_6137797_left_covered : CoveredBy scale carrier boxes small_6137797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6137797_left_root small_6137797_left_fuel small_6137797_left_count small_6137797_left_encoded small_6137797_left_checked

theorem cover_6137797 : CoveredBy scale carrier boxes root_6137797 := by
  apply coveredBy_split_literal root_6137797 small_6137797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6137803 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6137797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6137803
#print axioms cover_6137797

def root_6136087 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6136087 : CoveredBy scale carrier boxes root_6136087 := by
  apply coveredBy_split_literal root_6136087 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2308.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6137797 coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2308.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6137797
#print axioms cover_6136087

def root_6136082 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6136082_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6136082_right_fuel : Nat := 1
def small_6136082_right_count : Nat := 1
def small_6136082_right_encoded : String := "00000004"
theorem small_6136082_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6136082_right_root small_6136082_right_fuel small_6136082_right_count small_6136082_right_encoded = true := by
  decide +kernel
theorem small_6136082_right_covered : CoveredBy scale carrier boxes small_6136082_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6136082_right_root small_6136082_right_fuel small_6136082_right_count small_6136082_right_encoded small_6136082_right_checked

theorem cover_6136082 : CoveredBy scale carrier boxes root_6136082 := by
  apply coveredBy_split_literal root_6136082 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6136087 small_6136082_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6136087
  · exact small_6136082_right_covered
#print axioms cover_6136082

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424
