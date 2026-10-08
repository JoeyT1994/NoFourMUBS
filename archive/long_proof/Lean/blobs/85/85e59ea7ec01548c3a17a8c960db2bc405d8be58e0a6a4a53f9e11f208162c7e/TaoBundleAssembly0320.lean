import TaoBundleAssembly0314
import TaoBundleAssembly0315
import TaoBundleAssembly0316
import TaoBundleAssembly0319
import TaoBundleChunkBatch0417
import TaoBundleChunkBatch0418
import TaoBundleChunkBatch0419
import TaoBundleChunkBatch0420
import TaoBundleChunkBatch0421
import TaoBundleChunkBatch0422
import TaoBundleChunkBatch0423
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320
def root_4452506 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4452506_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4452506_right_fuel : Nat := 22
def small_4452506_right_count : Nat := 345
def small_4452506_right_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A913091207010800000004050000F6135D8101050001020000000A135D80F90000000105000104135D4505000000020000000A00000005000000000000000A0000000A00000004115225070A0001081151E9090000000408A9130712070106000000030000000912073D06050000F6135D8101050001020000000A135D80F90000000105000104135D450500000002000000050000000500000000135D45010000000000000005000000031152250908A91307120701060000000308A913091207010800000004050000F6135D810105000102135D44F905000104135D45050000000204548A070000000700000005000000050000000100000005000000000000000512073D08050000F6135D810105000102135D44F905000104000000090000000900000001135D80F9000000010000000500000000135D450100000000000000050000000412073D0608A913091207010800000004050000F6135D810105000102135D44F905000104135D4505000000020CFD9C070000000A0F350D060000000A000000030000000A00000001135D80F9000000010000000500000000135D4501000000000000000512073D08050000F6135D8101050001020000000A135D80F90000000105000104135D450500000002000000050000000500000000135D450100000000050001020000000A0000000500000004000000030000000400000003115225050A0001061151E907000000030A0001081151E909000000040000000A0000000A115225070A0001081151E9090000000408A91305120701040000000208A913071207010600000003050000F60000000A000000050000000A12073D0408A913071207010600000003050000F6135D810105000102135D44F905000108000000090000000900000001135D80F9000000010000000500000000135D4501000000000000000512073D06050000F6135D8101050001020000000A135D80F9000000010000000A00000000135D450100000000050001020000000A0000000500000003000000021152250908A91305120701040000000208A913070000000A0000000A12073D0408A91307120701060000000308A913091207010800000004000000050000000512073D0608A9130912070108000000040000000512073D08050000F60000000A0000000500000004000000030000000200000004000000030000000200000001115224F9000000010A0001041151E905000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A912F912073D0208A9130912070108000000040000000500000005000000010000000500000004115225070A0001081151E9090000000408A912F912073D0208A913071207010600000003000000050000000500000001000000051152250908A912F912073D0208A9130712070106000000030000000512073D0608A913091207010800000004000000050000000500000003000000011207010200000001000000050000000400000003115225050A0001061151E907000000030A0001081151E9090000000408A912F912073D020000000A00000001000000051152250908A912F912073D0208A9130512070104000000020000000512073D0408A9130912070108000000040000000500000005000000020000000112070102000000010000000500000004115225070A0001081151E9090000000408A912F912073D0208A9130512070104000000020000000512073D0408A91307120701060000000300000005000000050000000200000001120701020000000100000005000000050000000300000002"
theorem small_4452506_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4452506_right_root small_4452506_right_fuel small_4452506_right_count small_4452506_right_encoded = true := by
  decide +kernel
theorem small_4452506_right_covered : CoveredBy scale carrier boxes small_4452506_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4452506_right_root small_4452506_right_fuel small_4452506_right_count small_4452506_right_encoded small_4452506_right_checked

theorem cover_4452506 : CoveredBy scale carrier boxes root_4452506 := by
  apply coveredBy_split_literal root_4452506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0319.root_4452507 small_4452506_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0319.cover_4452507
  · exact small_4452506_right_covered
#print axioms cover_4452506

def root_4450800 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4450800 : CoveredBy scale carrier boxes root_4450800 := by
  apply coveredBy_split_literal root_4450800 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1666.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4452506 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1666.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4452506
#print axioms cover_4450800

def root_4392256 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4392256 : CoveredBy scale carrier boxes root_4392256 := by
  apply coveredBy_split_literal root_4392256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0319.root_4392257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4450800 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0319.cover_4392257
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4450800
#print axioms cover_4392256

def root_4370824 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4370824 : CoveredBy scale carrier boxes root_4370824 := by
  apply coveredBy_split_literal root_4370824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4370825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4392256 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4370825
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4392256
#print axioms cover_4370824

def root_4354828 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4354828 : CoveredBy scale carrier boxes root_4354828 := by
  apply coveredBy_split_literal root_4354828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4354829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4370824 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4354829
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4370824
#print axioms cover_4354828

def root_4302206 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4302206 : CoveredBy scale carrier boxes root_4302206 := by
  apply coveredBy_split_literal root_4302206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4302207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4354828 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4302207
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4354828
#print axioms cover_4302206

def root_3880868 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880868 : CoveredBy scale carrier boxes root_3880868 := by
  apply coveredBy_split_literal root_3880868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.root_3880869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4302206 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0314.cover_3880869
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4302206
#print axioms cover_3880868

def root_4456821 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456821 : CoveredBy scale carrier boxes root_4456821 := by
  apply coveredBy_split_literal root_4456821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1668.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1669.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1668.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1669.covered
#print axioms cover_4456821

def root_4460378 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4460378 : CoveredBy scale carrier boxes root_4460378 := by
  apply coveredBy_split_literal root_4460378 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1670.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1671.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1670.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1671.covered
#print axioms cover_4460378

def root_4460373 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4460373_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4460373_right_fuel : Nat := 1
def small_4460373_right_count : Nat := 1
def small_4460373_right_encoded : String := "00000000"
theorem small_4460373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4460373_right_root small_4460373_right_fuel small_4460373_right_count small_4460373_right_encoded = true := by
  decide +kernel
theorem small_4460373_right_covered : CoveredBy scale carrier boxes small_4460373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4460373_right_root small_4460373_right_fuel small_4460373_right_count small_4460373_right_encoded small_4460373_right_checked

theorem cover_4460373 : CoveredBy scale carrier boxes root_4460373 := by
  apply coveredBy_split_literal root_4460373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4460378 small_4460373_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4460378
  · exact small_4460373_right_covered
#print axioms cover_4460373

def root_4463991 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4463991 : CoveredBy scale carrier boxes root_4463991 := by
  apply coveredBy_split_literal root_4463991 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1672.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1673.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1672.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1673.covered
#print axioms cover_4463991

def root_4463985 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463985_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463985_left_fuel : Nat := 1
def small_4463985_left_count : Nat := 1
def small_4463985_left_encoded : String := "00000004"
theorem small_4463985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463985_left_root small_4463985_left_fuel small_4463985_left_count small_4463985_left_encoded = true := by
  decide +kernel
theorem small_4463985_left_covered : CoveredBy scale carrier boxes small_4463985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463985_left_root small_4463985_left_fuel small_4463985_left_count small_4463985_left_encoded small_4463985_left_checked

theorem cover_4463985 : CoveredBy scale carrier boxes root_4463985 := by
  apply coveredBy_split_literal root_4463985 small_4463985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463991 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4463985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463991
#print axioms cover_4463985

def root_4463984 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463984_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463984_right_fuel : Nat := 14
def small_4463984_right_count : Nat := 55
def small_4463984_right_encoded : String := "1151E8FF08A912FB12073CFA0000000208A913070000000512073CFC0000000300000005120700FA08A91307120700FC050000F6135D810105000102135D450300000001050000FE135D80FF00000004045489FB00000005138670FA0000000600000002000000050000000500000000000000050000000312073CFC00000003050000F6135D8101050001020000000A0000000A00000000135D45010000000005000102135D450300000001050000FE135D80FF00000004045489FB00000005138670FA0000000A0000000200000005000000050000000200000004"
theorem small_4463984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463984_right_root small_4463984_right_fuel small_4463984_right_count small_4463984_right_encoded = true := by
  decide +kernel
theorem small_4463984_right_covered : CoveredBy scale carrier boxes small_4463984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463984_right_root small_4463984_right_fuel small_4463984_right_count small_4463984_right_encoded small_4463984_right_checked

theorem cover_4463984 : CoveredBy scale carrier boxes root_4463984 := by
  apply coveredBy_split_literal root_4463984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463985 small_4463984_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463985
  · exact small_4463984_right_covered
#print axioms cover_4463984

def root_4463979 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463979_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463979_right_fuel : Nat := 1
def small_4463979_right_count : Nat := 1
def small_4463979_right_encoded : String := "00000003"
theorem small_4463979_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463979_right_root small_4463979_right_fuel small_4463979_right_count small_4463979_right_encoded = true := by
  decide +kernel
theorem small_4463979_right_covered : CoveredBy scale carrier boxes small_4463979_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463979_right_root small_4463979_right_fuel small_4463979_right_count small_4463979_right_encoded small_4463979_right_checked

theorem cover_4463979 : CoveredBy scale carrier boxes root_4463979 := by
  apply coveredBy_split_literal root_4463979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463984 small_4463979_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463984
  · exact small_4463979_right_covered
#print axioms cover_4463979

def root_4463978 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463978_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463978_right_fuel : Nat := 26
def small_4463978_right_count : Nat := 311
def small_4463978_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FF12073CFE00000004050000F6135D810105000102135D450300000001050000FC135D81070CFD9BFB000000060F34D0FA0000000A0000000200000003135D4507000000030CFD9BFB0000000500000006135D8103050000FC00000006000000050000000100000000135D45010000000005000102135D450300000001050000FC135D81070CFD9BFB000000050F34D0FA0CFD9BFF000000050F34D0FE028000F60000000613D7B101000000000280010213D7B10300000001078000FC0000000A0000000A13D7ED030000000600000001000000040000000200000003135D4507000000030CFD9BFB000000050F34D0FA0000000A00000002135D8103050000FC135D810700000005000000030000000500000001120700FE050000F600000006135D45010000000005000102135D450300000001050000FC135D81070CFD9BFB000000060F34D0FA00000006000000020000000300000006135D8103000000060000000100000004120700FA08A912FF12073CFE00000004050000F6135D810105000102135D4503000000010000000A0000000A00000000135D45010000000005000102135D450300000001050000FC135D8107045489FB1386ACFA000000020CFD9BFF0000000A0F34D0FE028000F60000000A13D7B101000000000000000A00000004138670FA0000000A00000002000000030000000A135D8103050000FC135D8107045489FB0000000A0000000A000000030000000A00000001120700FE050000F6135D810105000102135D450300000001050000FC135D8107045489FB00000006000000090000000300000009135D8103050000FC135D8107045489FB00000006138670FA045489FF0000000A000000060000000200000003000000060000000100000000135D45010000000005000102135D450300000001050000FC135D8107045489FB1386ACFA00000002045489FF1386ACFE00000004028000F613D7ED010280010200000006000000060000000013D7B101000000000280010213D7B10300000001078000FC128A7D07067ECE7B12EA94FA000000020000000600000009000000030000000913D7ED03078000FC128A7D07067ECE7B0000000612EA58FA0000000A0000000200000003000000060000000100000006138670FA045489FF1386ACFE00000004028000F60000000913D7B1010000000000000009000000050000000200000003135D450700000003045489FB0000000600000009135D8103050000FC135D8107045489FB1386ACFA00000002045489FF1386ACFE00000004028000F60000000613D7B1010000000007800102000000060000000600000006138670FA045489FF1386ACFE00000004028000F613D7ED010000000A0000000013D7B1010000000007800102128A410300000001078000FC128A7D07022A457B0000000A0000000A000000030000000A128A7D03078000FC0000000A0000000A00000001138670FE028000F60000000613D7B101000000000780010200000009128A7D03078000FC128A7D0700000006000000030000000600000001000000040000000200000003135D450700000003045489FB00000006138670FA045489FF0000000600000006000000020000000100000004000000021151E8FF08A912FB00000005120700FA0000000A0000000200000004"
theorem small_4463978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463978_right_root small_4463978_right_fuel small_4463978_right_count small_4463978_right_encoded = true := by
  decide +kernel
theorem small_4463978_right_covered : CoveredBy scale carrier boxes small_4463978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463978_right_root small_4463978_right_fuel small_4463978_right_count small_4463978_right_encoded small_4463978_right_checked

theorem cover_4463978 : CoveredBy scale carrier boxes root_4463978 := by
  apply coveredBy_split_literal root_4463978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463979 small_4463978_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463979
  · exact small_4463978_right_covered
#print axioms cover_4463978

def root_4463972 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463972_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463972_left_fuel : Nat := 1
def small_4463972_left_count : Nat := 1
def small_4463972_left_encoded : String := "00000002"
theorem small_4463972_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463972_left_root small_4463972_left_fuel small_4463972_left_count small_4463972_left_encoded = true := by
  decide +kernel
theorem small_4463972_left_covered : CoveredBy scale carrier boxes small_4463972_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463972_left_root small_4463972_left_fuel small_4463972_left_count small_4463972_left_encoded small_4463972_left_checked

theorem cover_4463972 : CoveredBy scale carrier boxes root_4463972 := by
  apply coveredBy_split_literal root_4463972 small_4463972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463978 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4463972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463978
#print axioms cover_4463972

def root_4463971 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463971_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463971_right_fuel : Nat := 17
def small_4463971_right_count : Nat := 61
def small_4463971_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF00000005000000070000000312073CFC0000000308A912FF12073CFE0000000400000005120700FE050000F6135D810105000102135D450300000001050000FA00000006135D44FB00000006000000020000000700000000135D45010000000005000102135D450300000001050000FA135D80FB000000020CFD9C0700000005000000060000000500000005000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF00000005000000061151E8FF000000050000000400000002"
theorem small_4463971_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463971_right_root small_4463971_right_fuel small_4463971_right_count small_4463971_right_encoded = true := by
  decide +kernel
theorem small_4463971_right_covered : CoveredBy scale carrier boxes small_4463971_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463971_right_root small_4463971_right_fuel small_4463971_right_count small_4463971_right_encoded small_4463971_right_checked

theorem cover_4463971 : CoveredBy scale carrier boxes root_4463971 := by
  apply coveredBy_split_literal root_4463971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463972 small_4463971_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463972
  · exact small_4463971_right_covered
#print axioms cover_4463971

def root_4463965 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463965_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463965_left_fuel : Nat := 1
def small_4463965_left_count : Nat := 1
def small_4463965_left_encoded : String := "00000001"
theorem small_4463965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463965_left_root small_4463965_left_fuel small_4463965_left_count small_4463965_left_encoded = true := by
  decide +kernel
theorem small_4463965_left_covered : CoveredBy scale carrier boxes small_4463965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463965_left_root small_4463965_left_fuel small_4463965_left_count small_4463965_left_encoded small_4463965_left_checked

theorem cover_4463965 : CoveredBy scale carrier boxes root_4463965 := by
  apply coveredBy_split_literal root_4463965 small_4463965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463971 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4463965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463971
#print axioms cover_4463965

def root_4463964 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463964_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463964_right_fuel : Nat := 31
def small_4463964_right_count : Nat := 461
def small_4463964_right_encoded : String := "115225030A0000FA115224FB000000020A0000FC115225070A0000FE115224FF0000000408A91303120701020000000108A912FB12073CFA0000000200000005120700FA08A913070000000712073CFC0000000308A912FF00000005000000070000000212073D0208A912FB12073CFA0000000208A91307120700FC000000070000000312073CFC0000000308A912FF12073CFE00000004050000F6135D81010CFD9C03000000050F350D020CFD9BFB000000050F34D0FA0CFD9C07000000050F350CFC000000030000000500000002000000010000000000000005120700FE0000000700000004120700FA08A91307120700FC08A912FF12073CFE00000004050000F6135D81010CFD9C030F34D10200000001000000050F350D02045489FB00000007138670FA04548A07000000071386ACFC000000030CFD9BFF0F350CFE000000040000000500000007000000020000000100000000135D4501000000000CFD9C03000000050F350D02045489FB00000005138670FA04548A0700000005000000080000000200000001000000070000000312073CFC0000000308A912FF12073CFE00000004050000F6135D81010CFD9C030F34D10200000001045489FB00000005138670FA0CFD9C07000000050F350CFC000000030CFD9BFF000000050F34D0FE0C9A86FC000000070000000500000004000000020F350D02045489FB1386ACFA000000020CFD9C070F34D0FC0CFD9BFF0000000500000007000000030F350CFC000000030CFD9BFF0000000A0F34D0FE0C9A87020F875103000000010C9A86FC0000000A000000060000000700000004138670FA0CFD9C070F34D0FC0CFD9BFF0F350CFE000000040C9A87020000000A000000050F34D0FE0000000700000004000000030F350CFC000000030CFD9BFF0000000A0F34D0FE0C9A87020F875103000000010000000A0000000A00000004000000020000000100000000135D4501000000000CFD9C030F34D10200000001045489FB00000005138670FA0CFD9C07000000050F350CFC0000000300000005000000020F350D02045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030CFD9BFF000000050F34D0FE0C9A87020F875103000000010C9A86FC0F878D070000000500000003000000050000000500000004138670FA0CFD9C070F34D0FC0CFD9BFF0000000500000008000000030F350CFC000000030CFD9BFF0F350CFE00000004000000050F34D0FE0C9A87020F875103000000010C9A86FC0F878D0700000008000000030F875107000000030000000A0F878D030C9A86FC0F878D0700000008000000030F875107000000030000000A00000001000000040000000200000001120700FE050000F6135D81010CFD9C030F34D10200000001000000070F350D02045489FB00000007138670FA0CFD9C07000000070F350CFC00000003045489FF1386ACFE000000040C9A87020F875103000000010C9A86FC00000007000000080000000700000007000000020000000100000000135D4501000000000CFD9C030F34D10200000001000000070F350D02045489FB00000007138670FA0CFD9C07000000070F350CFC00000003045489FF1386ACFE000000040C9A87020F875103000000010C9A86FC000000070F87510700000003028000F60000000700000008000000070000000700000002000000010000000400000002000000011151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91303120701020000000108A912FB00000005120700FA08A912FF00000005000000060000000212073D0208A912FB12073CFA0000000208A912FF00000005120700FE050000F600000006135D4501000000000000000600000004120700FA08A912FF12073CFE00000004050000F6135D8101050000FC135D81070CFD9C030F34D10200000001000000050000000A000000030000000A00000000135D450100000000050000FC135D81070CFD9C030F34D10200000001000000050F350D02045489FB1386ACFA000000020CFD9BFF00000005000000060000000A0000000100000003135D4507000000030CFD9C03000000050000000A120700FE050000F6135D8101050000FC135D81070CFD9C03000000060F350D02045489FB00000006138670FA000000060000000200000001000000030000000600000000135D450100000000050000FC135D81070CFD9C030F34D10200000001000000060F350D02045489FB00000006138670FA045489FF1386ACFE000000040C9A87020F87510300000001028000F60000000613D7B10100000000078000FC0000000A000000060F878D03000000060000000100000006000000020000000100000003135D450700000003000000060000000400000002000000011151E8FF08A913030000000512073D020000000500000001000000041151E8FB0A0000FC1152250700000005000000031151E907000000030A0000FE115224FF0000000408A913030000000512073D020000000500000001000000060000000200000001"
theorem small_4463964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463964_right_root small_4463964_right_fuel small_4463964_right_count small_4463964_right_encoded = true := by
  decide +kernel
theorem small_4463964_right_covered : CoveredBy scale carrier boxes small_4463964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463964_right_root small_4463964_right_fuel small_4463964_right_count small_4463964_right_encoded small_4463964_right_checked

theorem cover_4463964 : CoveredBy scale carrier boxes root_4463964 := by
  apply coveredBy_split_literal root_4463964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463965 small_4463964_right_root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463965
  · exact small_4463964_right_covered
#print axioms cover_4463964

def root_4463958 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463958_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4463958_left_fuel : Nat := 1
def small_4463958_left_count : Nat := 1
def small_4463958_left_encoded : String := "00000000"
theorem small_4463958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4463958_left_root small_4463958_left_fuel small_4463958_left_count small_4463958_left_encoded = true := by
  decide +kernel
theorem small_4463958_left_covered : CoveredBy scale carrier boxes small_4463958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4463958_left_root small_4463958_left_fuel small_4463958_left_count small_4463958_left_encoded small_4463958_left_checked

theorem cover_4463958 : CoveredBy scale carrier boxes root_4463958 := by
  apply coveredBy_split_literal root_4463958 small_4463958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463964 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4463958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463964
#print axioms cover_4463958

def root_4460372 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4460372 : CoveredBy scale carrier boxes root_4460372 := by
  apply coveredBy_split_literal root_4460372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4460373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4463958 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4460373
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4463958
#print axioms cover_4460372

def root_4460371 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4460371 : CoveredBy scale carrier boxes root_4460371 := by
  apply coveredBy_split_literal root_4460371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4460372 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1674.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4460372
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1674.covered
#print axioms cover_4460371

def root_4460370 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4460370 : CoveredBy scale carrier boxes root_4460370 := by
  apply coveredBy_split_literal root_4460370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4460371 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1675.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4460371
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1675.covered
#print axioms cover_4460370

def root_4456820 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456820 : CoveredBy scale carrier boxes root_4456820 := by
  apply coveredBy_split_literal root_4456820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4456821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4460370 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4456821
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4460370
#print axioms cover_4456820

def root_4478090 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4478090 : CoveredBy scale carrier boxes root_4478090 := by
  apply coveredBy_split_literal root_4478090 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1678.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1679.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1678.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1679.covered
#print axioms cover_4478090

def root_4478085 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4478085_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4478085_right_fuel : Nat := 1
def small_4478085_right_count : Nat := 1
def small_4478085_right_encoded : String := "00000000"
theorem small_4478085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4478085_right_root small_4478085_right_fuel small_4478085_right_count small_4478085_right_encoded = true := by
  decide +kernel
theorem small_4478085_right_covered : CoveredBy scale carrier boxes small_4478085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4478085_right_root small_4478085_right_fuel small_4478085_right_count small_4478085_right_encoded small_4478085_right_checked

theorem cover_4478085 : CoveredBy scale carrier boxes root_4478085 := by
  apply coveredBy_split_literal root_4478085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4478090 small_4478085_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4478090
  · exact small_4478085_right_covered
#print axioms cover_4478085

def root_4478084 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4478084 : CoveredBy scale carrier boxes root_4478084 := by
  apply coveredBy_split_literal root_4478084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4478085 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1680.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4478085
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1680.covered
#print axioms cover_4478084

def root_4475970 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4475970 : CoveredBy scale carrier boxes root_4475970 := by
  apply coveredBy_split_literal root_4475970 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1677.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4478084 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1677.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4478084
#print axioms cover_4475970

def root_4474368 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4474368 : CoveredBy scale carrier boxes root_4474368 := by
  apply coveredBy_split_literal root_4474368 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1676.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4475970 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1676.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4475970
#print axioms cover_4474368

def root_4483508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4483508 : CoveredBy scale carrier boxes root_4483508 := by
  apply coveredBy_split_literal root_4483508 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1681.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1682.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1681.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1682.covered
#print axioms cover_4483508

def root_4488135 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4488135 : CoveredBy scale carrier boxes root_4488135 := by
  apply coveredBy_split_literal root_4488135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1683.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1684.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1683.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1684.covered
#print axioms cover_4488135

def root_4483507 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4483507 : CoveredBy scale carrier boxes root_4483507 := by
  apply coveredBy_split_literal root_4483507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4483508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4488135 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4483508
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4488135
#print axioms cover_4483507

def root_4474367 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4474367 : CoveredBy scale carrier boxes root_4474367 := by
  apply coveredBy_split_literal root_4474367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4474368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4483507 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4474368
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4483507
#print axioms cover_4474367

def root_4456819 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456819 : CoveredBy scale carrier boxes root_4456819 := by
  apply coveredBy_split_literal root_4456819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4456820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4474367 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4456820
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4474367
#print axioms cover_4456819

def root_4496276 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4496276 : CoveredBy scale carrier boxes root_4496276 := by
  apply coveredBy_split_literal root_4496276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1686.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1687.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1686.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1687.covered
#print axioms cover_4496276

def root_4496270 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4496270_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4496270_left_fuel : Nat := 1
def small_4496270_left_count : Nat := 1
def small_4496270_left_encoded : String := "00000001"
theorem small_4496270_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4496270_left_root small_4496270_left_fuel small_4496270_left_count small_4496270_left_encoded = true := by
  decide +kernel
theorem small_4496270_left_covered : CoveredBy scale carrier boxes small_4496270_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4496270_left_root small_4496270_left_fuel small_4496270_left_count small_4496270_left_encoded small_4496270_left_checked

theorem cover_4496270 : CoveredBy scale carrier boxes root_4496270 := by
  apply coveredBy_split_literal root_4496270 small_4496270_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4496276 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4496270_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4496276
#print axioms cover_4496270

def root_4496269 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4496269 : CoveredBy scale carrier boxes root_4496269 := by
  apply coveredBy_split_literal root_4496269 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4496270 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1688.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4496270
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1688.covered
#print axioms cover_4496269

def root_4496264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4496264_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4496264_right_fuel : Nat := 1
def small_4496264_right_count : Nat := 1
def small_4496264_right_encoded : String := "00000000"
theorem small_4496264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4496264_right_root small_4496264_right_fuel small_4496264_right_count small_4496264_right_encoded = true := by
  decide +kernel
theorem small_4496264_right_covered : CoveredBy scale carrier boxes small_4496264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4496264_right_root small_4496264_right_fuel small_4496264_right_count small_4496264_right_encoded small_4496264_right_checked

theorem cover_4496264 : CoveredBy scale carrier boxes root_4496264 := by
  apply coveredBy_split_literal root_4496264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4496269 small_4496264_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4496269
  · exact small_4496264_right_covered
#print axioms cover_4496264

def root_4505693 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4505693 : CoveredBy scale carrier boxes root_4505693 := by
  apply coveredBy_split_literal root_4505693 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1690.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1691.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1690.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1691.covered
#print axioms cover_4505693

def root_4505687 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4505687_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4505687_left_fuel : Nat := 1
def small_4505687_left_count : Nat := 1
def small_4505687_left_encoded : String := "00000002"
theorem small_4505687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4505687_left_root small_4505687_left_fuel small_4505687_left_count small_4505687_left_encoded = true := by
  decide +kernel
theorem small_4505687_left_covered : CoveredBy scale carrier boxes small_4505687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4505687_left_root small_4505687_left_fuel small_4505687_left_count small_4505687_left_encoded small_4505687_left_checked

theorem cover_4505687 : CoveredBy scale carrier boxes root_4505687 := by
  apply coveredBy_split_literal root_4505687 small_4505687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4505693 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4505687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4505693
#print axioms cover_4505687

def root_4505639 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4505639_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4505639_left_fuel : Nat := 10
def small_4505639_left_count : Nat := 23
def small_4505639_left_encoded : String := "0F34D0FA045489FD00000005138670FC045489FF000000051386710800000004078000F6128A7D0107800102128A4103000000010000000A0000000900000000128A4101000000000780010200000008000000070000000300000002"
theorem small_4505639_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4505639_left_root small_4505639_left_fuel small_4505639_left_count small_4505639_left_encoded = true := by
  decide +kernel
theorem small_4505639_left_covered : CoveredBy scale carrier boxes small_4505639_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4505639_left_root small_4505639_left_fuel small_4505639_left_count small_4505639_left_encoded small_4505639_left_checked

theorem cover_4505639 : CoveredBy scale carrier boxes root_4505639 := by
  apply coveredBy_split_literal root_4505639 small_4505639_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4505687 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4505639_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4505687
#print axioms cover_4505639

def root_4505634 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4505634_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4505634_right_fuel : Nat := 1
def small_4505634_right_count : Nat := 1
def small_4505634_right_encoded : String := "00000001"
theorem small_4505634_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4505634_right_root small_4505634_right_fuel small_4505634_right_count small_4505634_right_encoded = true := by
  decide +kernel
theorem small_4505634_right_covered : CoveredBy scale carrier boxes small_4505634_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4505634_right_root small_4505634_right_fuel small_4505634_right_count small_4505634_right_encoded small_4505634_right_checked

theorem cover_4505634 : CoveredBy scale carrier boxes root_4505634 := by
  apply coveredBy_split_literal root_4505634 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4505639 small_4505634_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4505639
  · exact small_4505634_right_covered
#print axioms cover_4505634

def root_4503720 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4503720 : CoveredBy scale carrier boxes root_4503720 := by
  apply coveredBy_split_literal root_4503720 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1689.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4505634 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1689.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4505634
#print axioms cover_4503720

def root_4503715 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503715_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503715_right_fuel : Nat := 1
def small_4503715_right_count : Nat := 1
def small_4503715_right_encoded : String := "00000000"
theorem small_4503715_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503715_right_root small_4503715_right_fuel small_4503715_right_count small_4503715_right_encoded = true := by
  decide +kernel
theorem small_4503715_right_covered : CoveredBy scale carrier boxes small_4503715_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503715_right_root small_4503715_right_fuel small_4503715_right_count small_4503715_right_encoded small_4503715_right_checked

theorem cover_4503715 : CoveredBy scale carrier boxes root_4503715 := by
  apply coveredBy_split_literal root_4503715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4503720 small_4503715_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4503720
  · exact small_4503715_right_covered
#print axioms cover_4503715

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320
