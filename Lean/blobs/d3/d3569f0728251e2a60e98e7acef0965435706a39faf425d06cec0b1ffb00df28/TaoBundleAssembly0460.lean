import TaoBundleAssembly0450
import TaoBundleAssembly0452
import TaoBundleAssembly0457
import TaoBundleAssembly0459
import TaoBundleChunkBatch0619
import TaoBundleChunkBatch0626
import TaoBundleChunkBatch0627
import TaoBundleChunkBatch0628
import TaoBundleChunkBatch0629
import TaoBundleChunkBatch0630
import TaoBundleChunkBatch0631
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460
def root_6625542 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625542_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625542_left_fuel : Nat := 20
def small_6625542_left_count : Nat := 131
def small_6625542_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120700FA08A9130700000006000000050000000212073CFA0000000208A91307120700FC00000005000000030000000500000004000000031151E907000000030A000108000000051152250908A91305120700FA000000050000000212073CFA0000000208A913090000000612073D080500010000000005000000060000000400000004000000021151E905000000020A0000FC115225070A000108000000051152250908A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040500010000000005135D80F7000000000000000712073D080500010000000005135D80F7000000000500010200000005135D80F900000001050000FA00000005135D4505000000020CFD9C070F34D0FC0000000500000003000000070000000400000004000000031151E907000000030A0001081151E90900000004000000091152250908A9130912070108000000040000000612073D0805000100135D44F70500010200000009135D80F900000001050000FA00000009135D4505000000020000000900000000135D80F7000000000500010200000006135D80F900000001050000FA00000006135D450500000002050000FC135D81070CFD9C0900000006000000070000000300000006000000040000000400000001"
theorem small_6625542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6625542_left_root small_6625542_left_fuel small_6625542_left_count small_6625542_left_encoded = true := by
  decide +kernel
theorem small_6625542_left_covered : CoveredBy scale carrier boxes small_6625542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6625542_left_root small_6625542_left_fuel small_6625542_left_count small_6625542_left_encoded small_6625542_left_checked

theorem cover_6625542 : CoveredBy scale carrier boxes root_6625542 := by
  apply coveredBy_split_literal root_6625542 small_6625542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6625822 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6625542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6625822
#print axioms cover_6625542

def root_6625537 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625537_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625537_right_fuel : Nat := 1
def small_6625537_right_count : Nat := 1
def small_6625537_right_encoded : String := "00000000"
theorem small_6625537_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6625537_right_root small_6625537_right_fuel small_6625537_right_count small_6625537_right_encoded = true := by
  decide +kernel
theorem small_6625537_right_covered : CoveredBy scale carrier boxes small_6625537_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6625537_right_root small_6625537_right_fuel small_6625537_right_count small_6625537_right_encoded small_6625537_right_checked

theorem cover_6625537 : CoveredBy scale carrier boxes root_6625537 := by
  apply coveredBy_split_literal root_6625537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6625542 small_6625537_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6625542
  · exact small_6625537_right_covered
#print axioms cover_6625537

def root_6653922 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6653922 : CoveredBy scale carrier boxes root_6653922 := by
  apply coveredBy_split_literal root_6653922 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2503.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2504.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2503.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2504.covered
#print axioms cover_6653922

def root_6653916 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6653916_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6653916_left_fuel : Nat := 1
def small_6653916_left_count : Nat := 1
def small_6653916_left_encoded : String := "00000001"
theorem small_6653916_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6653916_left_root small_6653916_left_fuel small_6653916_left_count small_6653916_left_encoded = true := by
  decide +kernel
theorem small_6653916_left_covered : CoveredBy scale carrier boxes small_6653916_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6653916_left_root small_6653916_left_fuel small_6653916_left_count small_6653916_left_encoded small_6653916_left_checked

theorem cover_6653916 : CoveredBy scale carrier boxes root_6653916 := by
  apply coveredBy_split_literal root_6653916 small_6653916_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6653922 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6653916_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6653922
#print axioms cover_6653916

def root_6653590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6653590_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6653590_left_fuel : Nat := 18
def small_6653590_left_count : Nat := 145
def small_6653590_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E9090000000408A912F712073D0000000005000000001207010000000000000000071152250908A912F712073D0008A91305120700FA000000070000000212073CFA0000000208A91307120700FC0000000700000003000000070000000012070100000000000000000700000004000000031151E907000000030A0001081151E90900000004000000081152250908A912F712073D00000000060000000012070100000000000000000700000004000000021151E905000000020A0000FC115225070A0001081151E9090000000408A912F712073D0008A91307120700FC000000050000000312073CFC0000000305000102135D44F90000000700000001135D80F900000001050000FA00000007135D45050000000205000108135D4509000000040000000700000007000000001207010000000000000000071152250908A912F712073D0008A91307120700FC000000070000000312073CFC0000000308A91309120701080000000400000007000000070000000012070100000000000000000700000004000000031151E907000000030A0001081151E9090000000408A912F712073D00050001020000000800000008000000001207010000000000000000071152250908A912F712073D0008A9130912070108000000040000000612073D080500010200000006135D80F900000001050000FA00000006135D450500000002050000FC000000070000000600000004000000001207010000000000000000070000000400000001"
theorem small_6653590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6653590_left_root small_6653590_left_fuel small_6653590_left_count small_6653590_left_encoded = true := by
  decide +kernel
theorem small_6653590_left_covered : CoveredBy scale carrier boxes small_6653590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6653590_left_root small_6653590_left_fuel small_6653590_left_count small_6653590_left_encoded small_6653590_left_checked

theorem cover_6653590 : CoveredBy scale carrier boxes root_6653590 := by
  apply coveredBy_split_literal root_6653590 small_6653590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6653916 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6653590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6653916
#print axioms cover_6653590

def root_6653584 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6653584_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6653584_left_fuel : Nat := 1
def small_6653584_left_count : Nat := 1
def small_6653584_left_encoded : String := "00000000"
theorem small_6653584_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6653584_left_root small_6653584_left_fuel small_6653584_left_count small_6653584_left_encoded = true := by
  decide +kernel
theorem small_6653584_left_covered : CoveredBy scale carrier boxes small_6653584_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6653584_left_root small_6653584_left_fuel small_6653584_left_count small_6653584_left_encoded small_6653584_left_checked

theorem cover_6653584 : CoveredBy scale carrier boxes root_6653584 := by
  apply coveredBy_split_literal root_6653584 small_6653584_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6653590 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6653584_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6653590
#print axioms cover_6653584

def root_6625536 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6625536 : CoveredBy scale carrier boxes root_6625536 := by
  apply coveredBy_split_literal root_6625536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6625537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6653584 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6625537
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6653584
#print axioms cover_6625536

def root_6575980 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6575980 : CoveredBy scale carrier boxes root_6575980 := by
  apply coveredBy_split_literal root_6575980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6575981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6625536 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6575981
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6625536
#print axioms cover_6575980

def root_6572882 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6572882 : CoveredBy scale carrier boxes root_6572882 := by
  apply coveredBy_split_literal root_6572882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2476.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6575980 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2476.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6575980
#print axioms cover_6572882

def root_6542724 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6542724 : CoveredBy scale carrier boxes root_6542724 := by
  apply coveredBy_split_literal root_6542724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0452.root_6542725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6572882 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0452.cover_6542725
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6572882
#print axioms cover_6542724

def root_6658608 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6658608 : CoveredBy scale carrier boxes root_6658608 := by
  apply coveredBy_split_literal root_6658608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2505.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2506.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2505.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2506.covered
#print axioms cover_6658608

def root_6662523 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6662523 : CoveredBy scale carrier boxes root_6662523 := by
  apply coveredBy_split_literal root_6662523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2507.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2508.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2507.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2508.covered
#print axioms cover_6662523

def root_6662517 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6662517_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6662517_left_fuel : Nat := 1
def small_6662517_left_count : Nat := 1
def small_6662517_left_encoded : String := "00000001"
theorem small_6662517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6662517_left_root small_6662517_left_fuel small_6662517_left_count small_6662517_left_encoded = true := by
  decide +kernel
theorem small_6662517_left_covered : CoveredBy scale carrier boxes small_6662517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6662517_left_root small_6662517_left_fuel small_6662517_left_count small_6662517_left_encoded small_6662517_left_checked

theorem cover_6662517 : CoveredBy scale carrier boxes root_6662517 := by
  apply coveredBy_split_literal root_6662517 small_6662517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6662523 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6662517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6662523
#print axioms cover_6662517

def root_6662217 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6662217_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6662217_left_fuel : Nat := 18
def small_6662217_left_count : Nat := 143
def small_6662217_left_encoded : String := "1151E8F90A0000FA115225050A0001061151E8FD0A0000FE1152250908A912F712073D0008A91305120700FA08A9130900000008000000090000000212073CFA0000000208A91309120700FE00000008000000040000000900000000120701000000000008A91305120700FA08A913090000000812073CFE000000040500010200000005135D80F9000000010500010600000005000000090000000200000008000000041151E9090000000408A912F712073D0008A91305120700FA00000009000000020000000900000000120701000000000008A91305120700FA0500010200000005135D80F9000000010500010600000005000000090000000212073CFA000000020500010200000008135D80F90000000105000106135D44FD050000FE00000005135D45090000000400000009000000030000000900000003115224FD000000030A0000FE1152250908A912F712073D0008A91305000000090000000900000000120701000000000008A91305120700FA08A912FD12073D0608A91309000000090000000900000003000000090000000212073CFA0000000208A912FD12073D0608A9130900000008000000090000000300000009000000041151E9090000000400000009000000021151E905000000020A0001061151E8FD0A0000FE1152250908A912F712073D0008A91309120700FE0000000800000004000000090000000000000008000000041151E909000000040000000900000003115224FD000000030A0000FE000000091151E909000000040000000900000001"
theorem small_6662217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6662217_left_root small_6662217_left_fuel small_6662217_left_count small_6662217_left_encoded = true := by
  decide +kernel
theorem small_6662217_left_covered : CoveredBy scale carrier boxes small_6662217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6662217_left_root small_6662217_left_fuel small_6662217_left_count small_6662217_left_encoded small_6662217_left_checked

theorem cover_6662217 : CoveredBy scale carrier boxes root_6662217 := by
  apply coveredBy_split_literal root_6662217 small_6662217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6662517 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6662217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6662517
#print axioms cover_6662217

def root_6662211 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6662211_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6662211_left_fuel : Nat := 1
def small_6662211_left_count : Nat := 1
def small_6662211_left_encoded : String := "00000000"
theorem small_6662211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6662211_left_root small_6662211_left_fuel small_6662211_left_count small_6662211_left_encoded = true := by
  decide +kernel
theorem small_6662211_left_covered : CoveredBy scale carrier boxes small_6662211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6662211_left_root small_6662211_left_fuel small_6662211_left_count small_6662211_left_encoded small_6662211_left_checked

theorem cover_6662211 : CoveredBy scale carrier boxes root_6662211 := by
  apply coveredBy_split_literal root_6662211 small_6662211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6662217 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6662211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6662217
#print axioms cover_6662211

def root_6661863 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6661863_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6661863_left_fuel : Nat := 19
def small_6661863_left_count : Nat := 163
def small_6661863_left_encoded : String := "1151E8F70A0001021151E8F90A0000FA115225050A0001061151E8FD0A0000FE000000091151E90900000004000000090000000300000009000000021151E905000000020000000900000001115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE1152250908A912F912073D0208A91305120700FA0000000A0000000212073CFA0000000208A91309120700FE00000009000000040000000900000001120701020000000108A913050000000A12073CFA0000000208A91309120700FE0500010000000005135D80F700000000050001060000000500000009000000040000000A000000041151E9090000000408A912F912073D0208A91305120700FA000000090000000200000009000000010000000A00000003115224FD000000030A0000FE1152250908A912F912073D0208A91305000000090000000900000001120701020000000108A91305120700FA08A912FD12073D0608A91309000000090000000900000003000000090000000212073CFA0000000208A912FD12073D0608A91309120700FE0000000900000004000000090000000300000009000000041151E9090000000400000009000000021151E905000000020A0001061151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE00000009000000040000000900000001120701020000000108A91309120700FE0500010000000005135D80F700000000050000FA00000005135D4505000000020500010600000005000000090000000412073CFE000000040500010000000009135D80F700000000050000FA00000009135D45050000000200000009000000041151E909000000040000000900000003115224FD000000030A0000FE000000091151E909000000040000000900000000"
theorem small_6661863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6661863_left_root small_6661863_left_fuel small_6661863_left_count small_6661863_left_encoded = true := by
  decide +kernel
theorem small_6661863_left_covered : CoveredBy scale carrier boxes small_6661863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6661863_left_root small_6661863_left_fuel small_6661863_left_count small_6661863_left_encoded small_6661863_left_checked

theorem cover_6661863 : CoveredBy scale carrier boxes root_6661863 := by
  apply coveredBy_split_literal root_6661863 small_6661863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6662211 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6661863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6662211
#print axioms cover_6661863

def root_6658607 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6658607 : CoveredBy scale carrier boxes root_6658607 := by
  apply coveredBy_split_literal root_6658607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6658608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6661863 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6658608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6661863
#print axioms cover_6658607

def root_6670354 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6670354_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6670354_left_fuel : Nat := 22
def small_6670354_left_count : Nat := 237
def small_6670354_left_encoded : String := "1151E8F70A0001021151E8F90A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000091152250908A91305120700FA08A913090000000A12073D080500010000000009135D80F70000000005000102000000090000000A000000040000000212073CFA0000000208A913090000000A000000090000000400000003115224FD000000030A000108000000091152250908A91305120700FA00000009000000020000000900000004000000021151E905000000020A0001061151E8FD0A000108000000091152250908A913090000000A0000000600000004000000030000000900000001115224F9000000010A0000FA115225050A0001061151E8FD0A0001081151E9090000000408A912F912073D0208A9130500000006000000090000000112070102000000010000000A1152250908A912F912073D0208A91305120700FA08A913090000000A12073D080000000A00000004000000020000000A00000001120701020000000108A91305120700FA08A913091207010800000004050001000000000600000008000000060000000212073CFA000000020000000A0000000400000003115224FD000000030A0001081151E9090000000408A912F900000009120701020000000108A9130500000006000000091152250908A912F912073D0208A91305120700FA08A912FD12073D0608A91309120701080000000405000100135D44F70CFD9BF9000000060000000600000000135D80F7000000000CFD9BF90000000A0F34D102000000010000000512073D08000000060000000400000003120701060000000308A9130900000006000000060000000212073CFA0000000208A912FD12073D0608A91309120701080000000405000100135D44F70CFD9BF90000000600000006000000000000000A0000000A0000000312070106000000030000000600000001120701020000000108A91305120700FA08A912FD12073D0608A9130912070108000000040500010000000006000000050000000600000003000000060000000212073CFA0000000208A912FD12073D0608A913091207010800000004050001000000000600000005000000060000000312070106000000030000000600000004000000021151E905000000020A0001061151E8FD0A0001081151E9090000000408A912F9000000090000000A0000000A00000003115224FD000000030A0001081151E90900000004000000091152250908A912F912073D020000000A00000001120701020000000108A912FD0000000A1207010600000003000000050000000400000000"
theorem small_6670354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6670354_left_root small_6670354_left_fuel small_6670354_left_count small_6670354_left_encoded = true := by
  decide +kernel
theorem small_6670354_left_covered : CoveredBy scale carrier boxes small_6670354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6670354_left_root small_6670354_left_fuel small_6670354_left_count small_6670354_left_encoded small_6670354_left_checked

theorem cover_6670354 : CoveredBy scale carrier boxes root_6670354 := by
  apply coveredBy_split_literal root_6670354 small_6670354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2510.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6670354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2510.covered
#print axioms cover_6670354

def root_6667874 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6667874 : CoveredBy scale carrier boxes root_6667874 := by
  apply coveredBy_split_literal root_6667874 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2509.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6670354 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2509.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6670354
#print axioms cover_6667874

def root_6658606 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6658606 : CoveredBy scale carrier boxes root_6658606 := by
  apply coveredBy_split_literal root_6658606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6658607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6667874 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6658607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6667874
#print axioms cover_6658606

def root_6678634 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6678634 : CoveredBy scale carrier boxes root_6678634 := by
  apply coveredBy_split_literal root_6678634 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2513.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2514.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2513.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2514.covered
#print axioms cover_6678634

def root_6678628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6678628_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6678628_left_fuel : Nat := 1
def small_6678628_left_count : Nat := 1
def small_6678628_left_encoded : String := "00000000"
theorem small_6678628_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6678628_left_root small_6678628_left_fuel small_6678628_left_count small_6678628_left_encoded = true := by
  decide +kernel
theorem small_6678628_left_covered : CoveredBy scale carrier boxes small_6678628_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6678628_left_root small_6678628_left_fuel small_6678628_left_count small_6678628_left_encoded small_6678628_left_checked

theorem cover_6678628 : CoveredBy scale carrier boxes root_6678628 := by
  apply coveredBy_split_literal root_6678628 small_6678628_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6678634 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6678628_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6678634
#print axioms cover_6678628

def root_6676588 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6676588 : CoveredBy scale carrier boxes root_6676588 := by
  apply coveredBy_split_literal root_6676588 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2512.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6678628 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2512.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6678628
#print axioms cover_6676588

def root_6676587 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6676587 : CoveredBy scale carrier boxes root_6676587 := by
  apply coveredBy_split_literal root_6676587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6676588 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2515.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6676588
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2515.covered
#print axioms cover_6676587

def root_6673777 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6673777 : CoveredBy scale carrier boxes root_6673777 := by
  apply coveredBy_split_literal root_6673777 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2511.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6676587 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2511.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6676587
#print axioms cover_6673777

def root_6658605 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6658605 : CoveredBy scale carrier boxes root_6658605 := by
  apply coveredBy_split_literal root_6658605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6658606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6673777 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6658606
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6673777
#print axioms cover_6658605

def root_6542723 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6542723 : CoveredBy scale carrier boxes root_6542723 := by
  apply coveredBy_split_literal root_6542723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6542724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6658605 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6542724
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6658605
#print axioms cover_6542723

def root_6455931 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455931 : CoveredBy scale carrier boxes root_6455931 := by
  apply coveredBy_split_literal root_6455931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6455932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6542723 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6455932
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6542723
#print axioms cover_6455931

def root_6686463 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6686463 : CoveredBy scale carrier boxes root_6686463 := by
  apply coveredBy_split_literal root_6686463 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2517.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2518.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2517.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2518.covered
#print axioms cover_6686463

def root_6686458 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6686458_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6686458_right_fuel : Nat := 1
def small_6686458_right_count : Nat := 1
def small_6686458_right_encoded : String := "00000001"
theorem small_6686458_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6686458_right_root small_6686458_right_fuel small_6686458_right_count small_6686458_right_encoded = true := by
  decide +kernel
theorem small_6686458_right_covered : CoveredBy scale carrier boxes small_6686458_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6686458_right_root small_6686458_right_fuel small_6686458_right_count small_6686458_right_encoded small_6686458_right_checked

theorem cover_6686458 : CoveredBy scale carrier boxes root_6686458 := by
  apply coveredBy_split_literal root_6686458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6686463 small_6686458_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6686463
  · exact small_6686458_right_covered
#print axioms cover_6686458

def root_6704305 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6704305 : CoveredBy scale carrier boxes root_6704305 := by
  apply coveredBy_split_literal root_6704305 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2523.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2524.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2523.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2524.covered
#print axioms cover_6704305

def root_6704300 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6704300_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6704300_right_fuel : Nat := 1
def small_6704300_right_count : Nat := 1
def small_6704300_right_encoded : String := "00000004"
theorem small_6704300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6704300_right_root small_6704300_right_fuel small_6704300_right_count small_6704300_right_encoded = true := by
  decide +kernel
theorem small_6704300_right_covered : CoveredBy scale carrier boxes small_6704300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6704300_right_root small_6704300_right_fuel small_6704300_right_count small_6704300_right_encoded small_6704300_right_checked

theorem cover_6704300 : CoveredBy scale carrier boxes root_6704300 := by
  apply coveredBy_split_literal root_6704300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6704305 small_6704300_right_root coord4 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6704305
  · exact small_6704300_right_covered
#print axioms cover_6704300

def root_6703770 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703770_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703770_left_fuel : Nat := 20
def small_6703770_left_count : Nat := 249
def small_6703770_left_encoded : String := "12EA94FE000000040DE7CA020E5FD8F90DE7CA040E5FD8FB0115233713F895000569AC3D000000051340D4FC0793F0BF00000005128220FE0D412882000000070EFA4CF9000000010D4128840EFA10FB00000005000000020000000500000004000000030000000013F85900000000000569AC3D134110FC000000030793F0BF00000005128220FE0D4128820EFA10F9000000050000000100000005000000041340D4FC0793F0BF12825CFE000000040D4128820000000700000005128220FE0D4128820EFA10F90D4128840EFA10FB00000006000000020EFA4CFB0000000200000007000000010EFA4CF9000000010D4128840EFA10FB00000009000000020EFA4CFB00000002008A92170000000713FDF9000000000004DF1B1D1365F0FC0000000300000005000000070000000400000003000000020E6014FB00000002011523370000000713F85900000000000569AC3D134110FC000000030793F0BF00000005128220FE0DAED87B0E9661040D412882000000070000000500000002000000070000000400000007000000010E6014F9000000010DE7CA040E5FD8FB0115233713F895000569AC3D000000051340D4FC0793F0BF00000005128220FE0DAED8790E9661020D4128840000000900000005000000010E962502000000010000000900000004000000030000000013F85900000000000569AC3D134110FC000000030793F0BF00000005128220FE0DAED8790E9661020D4128840EFA10FB000000050000000200000005000000010E962502000000010D4128840000000A00000005000000041340D4FC0793F0BF0000000A128220FE0DAED8790E9661020D412884000000090EFA4CFB00000002008A921713FE35000000000A000000000000000A000000010E96250200000001000000090000000400000003000000020E6014FB000000020115233713F895000569AC3D134110FC000000030793F0BF00000005128220FE0DAED879000000050E962502000000010000000500000004000000070000000013F85900000000000569AC3D134110FC000000030793F0BF12825CFE0000000400000005128220FE0DAED8790E9661020DAED87B000000050E9625040000000200000005000000010E962502000000010DAED87B000000050E96250400000002008A92170000000513FDF9000000000005F43D5D0000000500000007000000041340D4FC0793F0BF00000007128220FE0DAED8790E9661020DAED87B0E966104008A92170000000713FDF9000000000004DF1B1D1365F0FC0000000300000007000000070000000200000007000000010E962502000000010DAED87B0E9661040000000A000000020E96250400000002000000070000000400000003"
theorem small_6703770_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6703770_left_root small_6703770_left_fuel small_6703770_left_count small_6703770_left_encoded = true := by
  decide +kernel
theorem small_6703770_left_covered : CoveredBy scale carrier boxes small_6703770_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6703770_left_root small_6703770_left_fuel small_6703770_left_count small_6703770_left_encoded small_6703770_left_checked

theorem cover_6703770 : CoveredBy scale carrier boxes root_6703770 := by
  apply coveredBy_split_literal root_6703770 small_6703770_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6704300 coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_6703770_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6704300
#print axioms cover_6703770

def root_6703765 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703765_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703765_right_fuel : Nat := 1
def small_6703765_right_count : Nat := 1
def small_6703765_right_encoded : String := "00000003"
theorem small_6703765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6703765_right_root small_6703765_right_fuel small_6703765_right_count small_6703765_right_encoded = true := by
  decide +kernel
theorem small_6703765_right_covered : CoveredBy scale carrier boxes small_6703765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6703765_right_root small_6703765_right_fuel small_6703765_right_count small_6703765_right_encoded small_6703765_right_checked

theorem cover_6703765 : CoveredBy scale carrier boxes root_6703765 := by
  apply coveredBy_split_literal root_6703765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6703770 small_6703765_right_root coord3 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6703770
  · exact small_6703765_right_covered
#print axioms cover_6703765

def root_6703231 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703231_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703231_left_fuel : Nat := 21
def small_6703231_left_count : Nat := 253
def small_6703231_left_encoded : String := "12EA94FC00000003067ECE7F12EA94FE000000040DE7CA020E5FD8F90DE7CA040E5FD8FB000000050000000200000005000000010E6014F9000000010DE7CA040E5FD8FB00000005000000020000000512EA58FE0DE7CA020E5FD8F90DE7CA040E5FD8FB0115233713F895000793F0BD00000005128220FC0569AC3F000000051340D4FE0D4128820EFA10F900000005000000010000000800000004000000030000000013F85900000000000793F0BD12825CFC000000030569AC3F000000051340D4FE0D4128820EFA10F900000005000000010000000500000004128220FC0569AC3F134110FE000000040D4128820EFA10F90000000500000001000000051340D4FE0D4128820EFA10F90D4128840EFA10FB00000006000000020EFA4CFB000000020000000A000000010EFA4CF9000000010D412884000000080EFA4CFB00000002008A92170000000813FDF9000000000007095F9D00000008000000890000000400000003000000020E6014FB000000020115233713F895000793F0BD00000005128220FC0569AC3F000000051340D4FE0DAED87B0E9661040D4128820000000900000005000000020E962504000000020000000900000004000000030000000013F85900000000000793F0BD12825CFC000000030569AC3F0000000500000009128220FC0569AC3F134110FE000000040DAED87B0E9661040D4128820EFA10F9000000050000000100000005000000020E962504000000020D41288200000009000000051340D4FE0DAED87B0E9661040D412882000000090EFA4CF900000001008A921713FE3500000000090000000000000009000000020E96250400000002000000090000000400000003000000010E6014F9000000010DE7CA040E5FD8FB011523370000000813F85900000000000793F0BD00000008128220FC0569AC3F134110FE000000040DAED8790E9661020D412884000000080000000500000001000000080000000800000003000000020E6014FB000000020115233713F895000793F0BD00000008128220FC0569AC3F134110FE000000040DAED879000000050000000800000008000000030000000013F85900000000000793F0BD12825CFC000000030569AC3F0000000500000008128220FC0569AC3F134110FE000000040DAED8790E9661020DAED87B000000050E9625040000000200000005000000010E962502000000010DAED87B000000050E96250400000002008A92170000000513FDF9000000000007095F9D00000005000000891340D4FE0DAED8790E9661020DAED87B0E966104008A92170000000813FDF9000000000007095F9D0000000800000089000000020E9625040000000200000009000000010E9625020000000100000008000000040000000300000004"
theorem small_6703231_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6703231_left_root small_6703231_left_fuel small_6703231_left_count small_6703231_left_encoded = true := by
  decide +kernel
theorem small_6703231_left_covered : CoveredBy scale carrier boxes small_6703231_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6703231_left_root small_6703231_left_fuel small_6703231_left_count small_6703231_left_encoded small_6703231_left_checked

theorem cover_6703231 : CoveredBy scale carrier boxes root_6703231 := by
  apply coveredBy_split_literal root_6703231 small_6703231_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6703765 coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_6703231_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6703765
#print axioms cover_6703231

def root_6703225 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703225_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6703225_left_fuel : Nat := 1
def small_6703225_left_count : Nat := 1
def small_6703225_left_encoded : String := "00000000"
theorem small_6703225_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6703225_left_root small_6703225_left_fuel small_6703225_left_count small_6703225_left_encoded = true := by
  decide +kernel
theorem small_6703225_left_covered : CoveredBy scale carrier boxes small_6703225_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6703225_left_root small_6703225_left_fuel small_6703225_left_count small_6703225_left_encoded small_6703225_left_checked

theorem cover_6703225 : CoveredBy scale carrier boxes root_6703225 := by
  apply coveredBy_split_literal root_6703225 small_6703225_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6703231 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6703225_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6703231
#print axioms cover_6703225

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460
