import TaoBundleAssembly0655
import TaoBundleAssembly0658
import TaoBundleChunkBatch0903
import TaoBundleChunkBatch0907
import TaoBundleChunkBatch0908
import TaoBundleChunkBatch0909
import TaoBundleChunkBatch0910
import TaoBundleChunkBatch0911
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659
def root_9652214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652214_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652214_left_fuel : Nat := 25
def small_9652214_left_count : Nat := 311
def small_9652214_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E8FB0A0000FC000000051151E907000000030A0000FE000000051151E9090000000405000100135D450100000000050001020000000500000007135D810105000102135D44F905000104000000050000000800000001135D80F9000000010500010400000007135D80FB00000002000000090000000000000002115224FB000000020A0000FC115225070A0000FE1152250908A912FB12073D040000000500000002120701040000000200000008000000041151E9090000000400000009000000031151E907000000030A0000FE000000081151E9090000000408A912FB12073D040500010000000008000000080000000212070104000000020000000800000001115224F9000000010A0001041151E8FB0A0000FC115225070A0000FE1152250908A912F912073D020000000500000001120701020000000100000007000000041151E9090000000400000007000000031151E907000000030A0000FE0000000A1151E9090000000408A912F912073D020500010000000007000000070000000112070102000000010000000700000002115224FB000000020A0000FC115225070A0000FE1152250908A912F912073D0208A912FB12073D0408A91307120700FC000000050000000312073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000100135D4501000000000CFD9BF9000000080F34D1020000000100000007135D81010CFD9BF90F350D020CFD9BFB0F350D040CFD9C070000000500000008000000020F34D1040000000200000008000000010F34D102000000010CFD9BFB000000070F34D104000000020CFD9C0700000007000000080000000000000002120701040000000208A91307120700FC08A913090000000800000009000000030000000800000001120701020000000108A912FB12073D0408A913070000000712073CFC0000000308A913090000000A0000000700000002120701040000000208A91307120700FC08A91309120700FE0500010000000005135D8101045489F9000000051386710200000001000000070000000000000004000000070000000312073CFC0000000308A913090000000A12073CFE000000040500010000000009135D8101045489F91386AD02045489FB1386AD040CFD9C07000000090000000A0000000200000009000000010000000A00000000000000041151E9090000000408A912F912073D0208A912FB12073D0408A913070000000712073CFC000000030500010000000009135D8101050000FE135D81090CFD9BF90000000900000009000000040000000900000000000000020000000900000001120701020000000108A912FB00000007120701040000000200000009000000031151E907000000030A0000FE1152250908A912F912073D0208A912FB12073D0408A913090000000812073CFE00000004050001000000000A135D8101050000FC135D81070CFD9BF9000000080000000A000000030000000A00000000000000021207010400000002000000080000000112070102000000010000000A000000041151E9090000000408A912F912073D0208A912FB12073D040500010000000009135D8101050000FC135D8107050000FE0000000900000009000000030000000A00000000000000021207010400000002000000090000000112070102000000010000000A"
theorem small_9652214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9652214_left_root small_9652214_left_fuel small_9652214_left_count small_9652214_left_encoded = true := by
  decide +kernel
theorem small_9652214_left_covered : CoveredBy scale carrier boxes small_9652214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9652214_left_root small_9652214_left_fuel small_9652214_left_count small_9652214_left_encoded small_9652214_left_checked

theorem cover_9652214 : CoveredBy scale carrier boxes root_9652214 := by
  apply coveredBy_split_literal root_9652214 small_9652214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.root_9652874 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9652214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0658.cover_9652874
#print axioms cover_9652214

def root_9649720 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9649720 : CoveredBy scale carrier boxes root_9649720 := by
  apply coveredBy_split_literal root_9649720 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3612.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9652214 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3612.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9652214
#print axioms cover_9649720

def root_9697998 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9697998 : CoveredBy scale carrier boxes root_9697998 := by
  apply coveredBy_split_literal root_9697998 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3627.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3628.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3627.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3628.covered
#print axioms cover_9697998

def root_9703210 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9703210 : CoveredBy scale carrier boxes root_9703210 := by
  apply coveredBy_split_literal root_9703210 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3630.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3631.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3630.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3631.covered
#print axioms cover_9703210

def root_9703205 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9703205_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9703205_right_fuel : Nat := 1
def small_9703205_right_count : Nat := 1
def small_9703205_right_encoded : String := "00000000"
theorem small_9703205_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9703205_right_root small_9703205_right_fuel small_9703205_right_count small_9703205_right_encoded = true := by
  decide +kernel
theorem small_9703205_right_covered : CoveredBy scale carrier boxes small_9703205_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9703205_right_root small_9703205_right_fuel small_9703205_right_count small_9703205_right_encoded small_9703205_right_checked

theorem cover_9703205 : CoveredBy scale carrier boxes root_9703205 := by
  apply coveredBy_split_literal root_9703205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9703210 small_9703205_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9703210
  · exact small_9703205_right_covered
#print axioms cover_9703205

def root_9701363 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9701363 : CoveredBy scale carrier boxes root_9701363 := by
  apply coveredBy_split_literal root_9701363 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3629.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9703205 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3629.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9703205
#print axioms cover_9701363

def root_9697997 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9697997 : CoveredBy scale carrier boxes root_9697997 := by
  apply coveredBy_split_literal root_9697997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9697998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9701363 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9697998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9701363
#print axioms cover_9697997

def root_9649719 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9649719 : CoveredBy scale carrier boxes root_9649719 := by
  apply coveredBy_split_literal root_9649719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9649720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9697997 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9649720
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9697997
#print axioms cover_9649719

def root_9584501 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584501 : CoveredBy scale carrier boxes root_9584501 := by
  apply coveredBy_split_literal root_9584501 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9584502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9649719 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9584502
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9649719
#print axioms cover_9584501

def root_9707347 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707347 : CoveredBy scale carrier boxes root_9707347 := by
  apply coveredBy_split_literal root_9707347 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3632.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3633.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3632.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3633.covered
#print axioms cover_9707347

def root_9711640 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9711640 : CoveredBy scale carrier boxes root_9711640 := by
  apply coveredBy_split_literal root_9711640 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3634.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3635.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3634.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3635.covered
#print axioms cover_9711640

def root_9707346 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707346 : CoveredBy scale carrier boxes root_9707346 := by
  apply coveredBy_split_literal root_9707346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9707347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9711640 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9707347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9711640
#print axioms cover_9707346

def root_9707345 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707345 : CoveredBy scale carrier boxes root_9707345 := by
  apply coveredBy_split_literal root_9707345 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9707346 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3636.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9707346
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3636.covered
#print axioms cover_9707345

def root_9719952 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9719952 : CoveredBy scale carrier boxes root_9719952 := by
  apply coveredBy_split_literal root_9719952 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3639.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3640.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3639.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3640.covered
#print axioms cover_9719952

def root_9719947 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9719947_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9719947_right_fuel : Nat := 1
def small_9719947_right_count : Nat := 1
def small_9719947_right_encoded : String := "00000000"
theorem small_9719947_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9719947_right_root small_9719947_right_fuel small_9719947_right_count small_9719947_right_encoded = true := by
  decide +kernel
theorem small_9719947_right_covered : CoveredBy scale carrier boxes small_9719947_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9719947_right_root small_9719947_right_fuel small_9719947_right_count small_9719947_right_encoded small_9719947_right_checked

theorem cover_9719947 : CoveredBy scale carrier boxes root_9719947 := by
  apply coveredBy_split_literal root_9719947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9719952 small_9719947_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9719952
  · exact small_9719947_right_covered
#print axioms cover_9719947

def root_9718133 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9718133 : CoveredBy scale carrier boxes root_9718133 := by
  apply coveredBy_split_literal root_9718133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3638.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9719947 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3638.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9719947
#print axioms cover_9718133

def root_9716329 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9716329 : CoveredBy scale carrier boxes root_9716329 := by
  apply coveredBy_split_literal root_9716329 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3637.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9718133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3637.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9718133
#print axioms cover_9716329

def root_9716328 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9716328 : CoveredBy scale carrier boxes root_9716328 := by
  apply coveredBy_split_literal root_9716328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9716329 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3641.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9716329
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3641.covered
#print axioms cover_9716328

def root_9707344 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707344 : CoveredBy scale carrier boxes root_9707344 := by
  apply coveredBy_split_literal root_9707344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9707345 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9716328 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9707345
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9716328
#print axioms cover_9707344

def root_9584500 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584500 : CoveredBy scale carrier boxes root_9584500 := by
  apply coveredBy_split_literal root_9584500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9584501 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9707344 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9584501
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9707344
#print axioms cover_9584500

def root_9728128 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728128_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728128_left_fuel : Nat := 19
def small_9728128_left_count : Nat := 191
def small_9728128_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FD12073CFC0000000308A912FF00000006120700FE0000000500000004120700FC000000050000000300000001120701020000000108A912FD00000006120700FC000000060000000312073D0008A912F912073D0208A912FD12073CFC0000000308A912FF12073CFE00000004050001040000000500000009120700FE0000000500000004120700FC000000050000000300000001120701020000000108A912FD12073CFC0000000308A912FF12073CFE0000000405000104000000050000000900000009120700FC08A912FF12073CFE000000040500010400000005135D81050000000500000002120700FE0500010400000005000000060000000400000003000000001151E8FF08A91301120701000000000008A912F912073D0208A912FD00000006120700FC0500010400000006135D8105050000FE00000006135D44FF00000006000000040000000200000003000000010000000612073D0008A912F912073D0208A912FD12073CFC0000000300000009120700FC0500010400000005135D8105050000FE00000005135D44FF0CFD9C01000000080000000800000004000000020000000300000001120701020000000108A912FD00000006120700FC0500010400000006135D8105050000FE00000006135D44FF0CFD9C01000000060F350D00045489F900000005000000060000000000000004000000020000000300000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FF00000006120700FE0500010400000006135D8105050000FC000000060000000A0000000200000004000000010000000612073D0008A912F912073D0208A912FF12073CFE0000000405000104135D4505000000020000000900000009120700FE05000104000000050000000A0000000400000001120701020000000100000009000000001151E8FF000000090000000400000003"
theorem small_9728128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9728128_left_root small_9728128_left_fuel small_9728128_left_count small_9728128_left_encoded = true := by
  decide +kernel
theorem small_9728128_left_covered : CoveredBy scale carrier boxes small_9728128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9728128_left_root small_9728128_left_fuel small_9728128_left_count small_9728128_left_encoded small_9728128_left_checked

theorem cover_9728128 : CoveredBy scale carrier boxes root_9728128 := by
  apply coveredBy_split_literal root_9728128 small_9728128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3642.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9728128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3642.covered
#print axioms cover_9728128

def root_9728122 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728122_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728122_left_fuel : Nat := 1
def small_9728122_left_count : Nat := 1
def small_9728122_left_encoded : String := "00000001"
theorem small_9728122_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9728122_left_root small_9728122_left_fuel small_9728122_left_count small_9728122_left_encoded = true := by
  decide +kernel
theorem small_9728122_left_covered : CoveredBy scale carrier boxes small_9728122_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9728122_left_root small_9728122_left_fuel small_9728122_left_count small_9728122_left_encoded small_9728122_left_checked

theorem cover_9728122 : CoveredBy scale carrier boxes root_9728122 := by
  apply coveredBy_split_literal root_9728122 small_9728122_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9728128 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9728122_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9728128
#print axioms cover_9728122

def root_9727604 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727604_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727604_left_fuel : Nat := 22
def small_9727604_left_count : Nat := 241
def small_9727604_left_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912FD12073CFC0000000308A912FF00000006120700FE0000000500000004120700FC000000050000000312073D0000000005000000001151E8FF08A91301120701000000000008A912FD00000006120700FC000000060000000300000009000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FF00000006120700FE000000060000000412073D0008A912FF12073CFE0000000405000102135D44F905000104000000060000000900000001135D80F90000000105000104135D4505000000020000000600000009120700FE0000000500000004000000001151E8FF000000090000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91305120701040000000208A912FD00000009120700FC08A912FF00000008000000090000000312073D0408A912FD12073CFC0000000308A912FF12073CFE0000000400000009120700FE05000102135D44F904548A0113867100000000000CFD9C0500000009000000050000000500000001135D80F90000000104548A0113867100000000000CFD9C0500000009000000090000000900000004120700FC08A912FF12073CFE000000040500010200000009135D80F90000000104548A0113867100000000000CFD9C050F34D10400000002000000070000000900000009120700FE0000000500000004000000030000000212073D0008A91305120701040000000208A912FD000000090000000812073D0408A912FD00000009120700FC000000050000000300000002000000001151E8FF08A91301120701000000000008A91305120701040000000208A912FD000000070000000712073D0408A912FD00000009120700FC050001020000000800000008000000030000000212073D0008A9130512070104000000020000000812073D04000000090000000200000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A9130512070104000000020000000912073D0408A912FF12073CFE00000004050001020000000700000009120700FE05000102135D44F90000000A00000001135D80F900000001050000FC000000090000000A000000040000000212073D0008A913050000000912073D0408A912FF00000009120700FE05000102135D44F90000000900000001000000090000000400000002000000001151E8FF0000000900000004000000030000000200000001"
theorem small_9727604_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9727604_left_root small_9727604_left_fuel small_9727604_left_count small_9727604_left_encoded = true := by
  decide +kernel
theorem small_9727604_left_covered : CoveredBy scale carrier boxes small_9727604_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9727604_left_root small_9727604_left_fuel small_9727604_left_count small_9727604_left_encoded small_9727604_left_checked

theorem cover_9727604 : CoveredBy scale carrier boxes root_9727604 := by
  apply coveredBy_split_literal root_9727604 small_9727604_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9728122 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9727604_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9728122
#print axioms cover_9727604

def root_9727599 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727599_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727599_right_fuel : Nat := 1
def small_9727599_right_count : Nat := 1
def small_9727599_right_encoded : String := "00000000"
theorem small_9727599_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9727599_right_root small_9727599_right_fuel small_9727599_right_count small_9727599_right_encoded = true := by
  decide +kernel
theorem small_9727599_right_covered : CoveredBy scale carrier boxes small_9727599_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9727599_right_root small_9727599_right_fuel small_9727599_right_count small_9727599_right_encoded small_9727599_right_checked

theorem cover_9727599 : CoveredBy scale carrier boxes root_9727599 := by
  apply coveredBy_split_literal root_9727599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9727604 small_9727599_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9727604
  · exact small_9727599_right_covered
#print axioms cover_9727599

def root_9726653 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9726653_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9726653_left_fuel : Nat := 28
def small_9726653_left_count : Nat := 441
def small_9726653_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC000000051151E8FD0A0000FE000000051151E8FF000000090000000400000003115225050A0000FC115224FD000000030A0000FE115224FF00000004000000091151E8FF00000008000000041151E8FD0A0000FE115224FF0000000408A913050000000912073D0408A912FF00000009120700FE0000000500000004000000021151E8FF0000000900000004000000030000000200000001115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FD00000005120700FC000000050000000300000001120701020000000108A912FD00000009120700FC08A912FF0000000500000009000000031151E8FF08A912F900000009120701020000000108A912FD00000009120700FC0000000500000003000000041151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FF00000009120700FE000000050000000400000001000000091151E8FF000000090000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A91305120701040000000208A912FD12073CFC0000000308A912FF00000008000000090000000812073D0408A912FD00000009120700FC00000005000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000308A912FF12073CFE0000000405000100135D450100000000045489F900000009138671020000000104548A0513867104000000020CFD9BFD0F350CFC00000003000000090000000500000005135D8101045489F91386AD0204548A0513867104000000020CFD9BFD00000009000000080000000900000001138671020000000104548A0513867104000000020CFD9BFD0F350CFC00000003000000090F34D0FC00000005000000031386AD04000000090000000200000000120700FE0000000500000004120700FC08A912FF00000005120700FE00000005000000040000000312073D0408A912FD12073CFC0000000308A912FF12073CFE000000040000000900000009120700FC08A912FF12073CFE000000040500010000000005135D810100000005000000000000000900000003000000021151E8FF08A912F912073D0208A9130512070104000000020000000812073D0408A912FD12073CFC00000003050001000000000800000009000000080000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000305000100135D45010000000000000008135D8101050000FE135D80FF00000004045489F900000008138671020000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD0000000800000003000000081386AD040CFD9BFD0F350CFC000000030C9A86FC00000008000000090000000800000002135D44FF045489F900000008138671020000000104548A050000000A0000000800000004000000000000000812073D0408A912FD12073CFC0000000305000100135D450100000000050000FE135D80FF00000004045489F900000008138671020000000100000009135D44FF0000000800000004135D8101050000FE135D80FF00000004045489F900000009138671020000000100000009135D44FF045489F90000000913867102000000010CFD9C050F34D10400000002000000080F350D0400000009000000020000000400000000120700FC000000080000000300000002000000041151E8FD0A0000FE115224FF0000000408A912F912073D0208A913050000000912073D04000000090000000200000001120701020000000108A91305120701040000000208A912FF0000000900000009000000091151E8FF08A912F912073D0208A9130512070104000000020500010000000009000000090000000900000001120701020000000108A91305120701040000000205000100135D450100000000050000FC135D80FD00000003050000FE135D80FF00000004045489F900000008138671020000000100000009135D44FF045489F90000000813867102000000010000000800000004135D44FD050000FE00000009135D44FF045489F900000008138671020000000104548A0500000005000000090000000400000003135D8101050000FC135D80FD00000003050000FE135D80FF00000004045489F900000009138671020000000100000009135D44FF045489F91386AD020000000900000001138671020000000104548A05000000051386AD040780010000000009000000050000000200000004135D44FD050000FE0000000900000005000000030000000012073D0405000100000000090000000900000002000000040000000300000002"
theorem small_9726653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9726653_left_root small_9726653_left_fuel small_9726653_left_count small_9726653_left_encoded = true := by
  decide +kernel
theorem small_9726653_left_covered : CoveredBy scale carrier boxes small_9726653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9726653_left_root small_9726653_left_fuel small_9726653_left_count small_9726653_left_encoded small_9726653_left_checked

theorem cover_9726653 : CoveredBy scale carrier boxes root_9726653 := by
  apply coveredBy_split_literal root_9726653 small_9726653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9727599 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9726653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9727599
#print axioms cover_9726653

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659
