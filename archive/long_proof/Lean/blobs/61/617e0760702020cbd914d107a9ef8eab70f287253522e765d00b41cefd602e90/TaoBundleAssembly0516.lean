import TaoBundleAssembly0511
import TaoBundleAssembly0513
import TaoBundleAssembly0515
import TaoBundleChunkBatch0708
import TaoBundleChunkBatch0709
import TaoBundleChunkBatch0710
import TaoBundleChunkBatch0711
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516
def root_7487148 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487148_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487148_left_fuel : Nat := 22
def small_7487148_left_count : Nat := 283
def small_7487148_left_encoded : String := "1151E8F70A0001021151E903000000010A0001041151E8FB0A0000FC000000051151E907000000030A0000FE000000050000000A00000002115224FB000000020A0000FC115225070A0000FE1152250908A912FB12073D040000000500000002120701040000000200000006000000041151E9090000000400000009000000031151E907000000030A0000FE1152250908A912FB12073D0408A91309120700FE000000050000000412073CFE0000000405000100135D44F70000000600000000135D80F70000000005000102135D450300000001050000FC00000006135D450700000003000000060000000600000002120701040000000200000006000000041151E9090000000408A912FB12073D0405000100000000090000000900000002120701040000000200000006115225030A0001041151E8FB0A0000FC115225070A0000FE1152250908A91303120701020000000108A913070000000812073CFC0000000308A91309120700FE00000005000000040000000512073D0208A91307120700FC00000005000000030000000500000001000000041151E9090000000408A913030000000812073D0208A91307120700FC000000050000000312073CFC000000030500010000000005135D80F70000000005000104000000050000000800000001000000031151E907000000030A0000FE1152250908A91303120701020000000108A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000500010400000005135D80FB000000020000000612073D0208A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000500010400000005135D80FB00000002050000FC00000005135D4507000000030CFD9C030F34D10200000001000000060000000600000001000000041151E9090000000408A9130312070102000000010000000812073D0205000100135D44F7050001040000000A0000000800000000135D80F70000000005000104135D44FB050000FC0000000A135D4507000000030000000A00000002135D80FB00000002050000FC00000008135D450700000003050000FE135D81090CFD9C03000000080000000600000004000000070000000100000002115224FB000000020A0000FC115225070A0000FE1152250908A9130312070102000000010000000612073D0208A912FB12073D0408A91307120700FC000000050000000300000006000000020000000600000001000000041151E9090000000408A9130312070102000000010000000600000008000000031151E907000000030A0000FE1152250908A9130312070102000000010000000612073D0208A912FB12073D0408A91309120700FE000000060000000400000006000000020000000600000001000000041151E9090000000408A9130312070102000000010000000612073D0208A912FB12073D040500010000000008135D80F700000000050000FC00000006135D450700000003050000FE00000006000000070000000200000006000000010000000100000000"
theorem small_7487148_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7487148_left_root small_7487148_left_fuel small_7487148_left_count small_7487148_left_encoded = true := by
  decide +kernel
theorem small_7487148_left_covered : CoveredBy scale carrier boxes small_7487148_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7487148_left_root small_7487148_left_fuel small_7487148_left_count small_7487148_left_encoded small_7487148_left_checked

theorem cover_7487148 : CoveredBy scale carrier boxes root_7487148 := by
  apply coveredBy_split_literal root_7487148 small_7487148_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.root_7487760 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7487148_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0515.cover_7487760
#print axioms cover_7487148

def root_7472474 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7472474 : CoveredBy scale carrier boxes root_7472474 := by
  apply coveredBy_split_literal root_7472474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0513.root_7472475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7487148 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0513.cover_7472475
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7487148
#print axioms cover_7472474

def root_7520486 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7520486 : CoveredBy scale carrier boxes root_7520486 := by
  apply coveredBy_split_literal root_7520486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2830.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2831.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2830.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2831.covered
#print axioms cover_7520486

def root_7520485 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7520485 : CoveredBy scale carrier boxes root_7520485 := by
  apply coveredBy_split_literal root_7520485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7520486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2832.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7520486
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2832.covered
#print axioms cover_7520485

def root_7472473 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7472473 : CoveredBy scale carrier boxes root_7472473 := by
  apply coveredBy_split_literal root_7472473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7472474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7520485 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7472474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7520485
#print axioms cover_7472473

def root_7456053 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456053 : CoveredBy scale carrier boxes root_7456053 := by
  apply coveredBy_split_literal root_7456053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7456054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7472473 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7456054
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7472473
#print axioms cover_7456053

def root_7527202 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7527202 : CoveredBy scale carrier boxes root_7527202 := by
  apply coveredBy_split_literal root_7527202 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2834.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2835.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2834.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2835.covered
#print axioms cover_7527202

def root_7527197 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7527197_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7527197_right_fuel : Nat := 1
def small_7527197_right_count : Nat := 1
def small_7527197_right_encoded : String := "00000000"
theorem small_7527197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7527197_right_root small_7527197_right_fuel small_7527197_right_count small_7527197_right_encoded = true := by
  decide +kernel
theorem small_7527197_right_covered : CoveredBy scale carrier boxes small_7527197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7527197_right_root small_7527197_right_fuel small_7527197_right_count small_7527197_right_encoded small_7527197_right_checked

theorem cover_7527197 : CoveredBy scale carrier boxes root_7527197 := by
  apply coveredBy_split_literal root_7527197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7527202 small_7527197_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7527202
  · exact small_7527197_right_covered
#print axioms cover_7527197

def root_7527196 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7527196 : CoveredBy scale carrier boxes root_7527196 := by
  apply coveredBy_split_literal root_7527196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7527197 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2836.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7527197
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2836.covered
#print axioms cover_7527196

def root_7525632 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7525632 : CoveredBy scale carrier boxes root_7525632 := by
  apply coveredBy_split_literal root_7525632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2833.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7527196 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2833.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7527196
#print axioms cover_7525632

def root_7525631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7525631 : CoveredBy scale carrier boxes root_7525631 := by
  apply coveredBy_split_literal root_7525631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7525632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2837.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7525632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2837.covered
#print axioms cover_7525631

def root_7536493 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536493_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536493_right_fuel : Nat := 26
def small_7536493_right_count : Nat := 311
def small_7536493_right_encoded : String := "115225070A0000FE115224FF0000000408A912FB12073D0408A9130712070106000000030000000712073D0608A912FF12073CFE0000000405000100135D44F705000102135D45030000000100000007135D81030CFD9BFB000000070F34D10400000002000000070000000100000000135D80F70000000005000102135D4503000000010CFD9BFB0F350D040CFD9C07000000070F350D060CFD9BFF000000070F34D0FE000000070000000400000003000000020F34D1040000000200000007135D81030CFD9BFB0F350D040CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060F875107000000030C9A86FE000000070F8750FF00000007000000040000000700000002000000070F34D0FE000000070000000400000003000000020F34D104000000020CFD9C07000000070F350D060CFD9BFF000000070F34D0FE00000007000000040000000300000001120700FE0500010000000007135D80F70000000005000102135D4503000000010CFD9BFB000000070F34D1040000000200000007135D81030CFD9BFB0F350D040CFD9C07000000070F350D06045489FF00000007138670FE000000070000000400000003000000020F34D104000000020000000700000001000000040000000300000002120701040000000208A9130712070106000000030000000712073D0608A912FF12073CFE000000040500010000000007135D80F70000000005000102135D450300000001045489FB00000007138671040000000200000007135D8103045489FB1386AD040CFD9C07000000070F350D060CFD9BFF000000070F34D0FE0000000700000004000000030000000213867104000000020CFD9C07000000070F350D060CFD9BFF000000070000000A0000000300000001120700FE05000100000000070000000A00000004000000031151E8FF08A912FB12073D0408A9130712070106000000030000000712073D0605000100135D44F705000102135D45030000000100000009135D8103050000FE135D80FF000000040CFD9BFB000000070F34D1040000000200000007135D44FF0CFD9BFB0F350D04000000080000000200000008000000040000000100000000135D80F70000000005000102135D450300000001050000FE135D80FF000000040CFD9BFB0F350D040CFD9C07000000070F350D060C9A87040F8750FB000000070000000200000007000000030000000200000009135D44FF0CFD9BFB0F350D0400000009000000020000000900000004135D8103050000FE135D80FF000000040CFD9BFB0F350D040CFD9C070F34D10600000003000000070F350D060C9A87040F8750FB0C9A87060F875107000000030780010000000006128A7CF70000000007800102000000060000000600000006000000020F878CFB000000020C9A87060F875107000000030780010000000007128A7CF7000000000780010200000007000000080000000700000003000000020F34D104000000020CFD9C07000000070F350D060C9A87060F87510700000003000000070000000700000003135D44FF0CFD9BFB0F350D040CFD9C07000000080F350D060C9A8704000000060000000500000003000000020F34D104000000020000000500000004000000010000000300000002120701040000000208A913070000000912073D0600000009000000030000000400000003"
theorem small_7536493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7536493_right_root small_7536493_right_fuel small_7536493_right_count small_7536493_right_encoded = true := by
  decide +kernel
theorem small_7536493_right_covered : CoveredBy scale carrier boxes small_7536493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7536493_right_root small_7536493_right_fuel small_7536493_right_count small_7536493_right_encoded small_7536493_right_checked

theorem cover_7536493 : CoveredBy scale carrier boxes root_7536493 := by
  apply coveredBy_split_literal root_7536493 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2839.root small_7536493_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2839.covered
  · exact small_7536493_right_covered
#print axioms cover_7536493

def root_7536487 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536487_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536487_left_fuel : Nat := 1
def small_7536487_left_count : Nat := 1
def small_7536487_left_encoded : String := "00000002"
theorem small_7536487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7536487_left_root small_7536487_left_fuel small_7536487_left_count small_7536487_left_encoded = true := by
  decide +kernel
theorem small_7536487_left_covered : CoveredBy scale carrier boxes small_7536487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7536487_left_root small_7536487_left_fuel small_7536487_left_count small_7536487_left_encoded small_7536487_left_checked

theorem cover_7536487 : CoveredBy scale carrier boxes root_7536487 := by
  apply coveredBy_split_literal root_7536487 small_7536487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7536493 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7536487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7536493
#print axioms cover_7536487

def root_7535315 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535315 : CoveredBy scale carrier boxes root_7535315 := by
  apply coveredBy_split_literal root_7535315 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2838.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7536487 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2838.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7536487
#print axioms cover_7535315

def root_7535309 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535309_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535309_left_fuel : Nat := 1
def small_7535309_left_count : Nat := 1
def small_7535309_left_encoded : String := "00000001"
theorem small_7535309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7535309_left_root small_7535309_left_fuel small_7535309_left_count small_7535309_left_encoded = true := by
  decide +kernel
theorem small_7535309_left_covered : CoveredBy scale carrier boxes small_7535309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7535309_left_root small_7535309_left_fuel small_7535309_left_count small_7535309_left_encoded small_7535309_left_checked

theorem cover_7535309 : CoveredBy scale carrier boxes root_7535309 := by
  apply coveredBy_split_literal root_7535309 small_7535309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7535315 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7535309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7535315
#print axioms cover_7535309

def root_7542016 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542016_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542016_right_fuel : Nat := 20
def small_7542016_right_count : Nat := 385
def small_7542016_right_encoded : String := "1151E8FF08A91303120701020000000108A912FB12073D0405000100135D44F705000106135D450700000003050000FE135D80FF0000000404548A0313867102000000010CFD9BFB0F350D0400000009000000020F34D10400000002000000051386AD020CFD9BFB0F350D0400000008000000020F34D104000000020280010013D7B0F700000008000000000000000800000001135D44FF04548A031386710200000001000000050000000800000004135D8107050000FE135D80FF0000000404548A0313867102000000010000000500000008000000050000000300000000135D80F70000000005000106135D450700000003050000FE135D80FF0000000404548A0313867102000000010CFD9BFB00000005000000071386AD020CFD9BFB0F350D0400000008000000020F34D104000000020000000500000001000000050000000500000002120701040000000205000100135D44F705000106135D450700000003050000FE135D80FF0000000404548A031386710200000001000000051386AD02045489FB1386AD040280010013D7B0F702800106000000060000000500000000000000050000000200000006000000010000000500000005000000000000000512073D0208A912FB12073D0405000100135D44F705000106135D450700000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D040000000800000002000000080F350D020CFD9BFB0F350D0400000008000000020F34D104000000020C9A87020F87510300000001000000080000000800000001135D44FF0CFD9C030F34D10200000001000000080000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350D0400000008000000020000000800000001135D44FF0CFD9C030000000800000008000000040000000300000000135D80F70000000005000106135D450700000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D0400000008000000020F34D104000000020780010000000008000000050F350D020CFD9BFB0F350D040C9A87020F875103000000010C9A8704000000080F878CFB00000002000000080F878D030000000800000001000000020F34D104000000020C9A87020F875103000000010780010000000008000000080000000800000001135D44FF0CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350D040000000800000002000000080000000100000004135D8107050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D040000000800000002000000080F350D020CFD9BFB0F350D040C9A87020F875103000000010C9A8704000000080F878CFB00000002000000080F878D030000000800000001000000020F34D104000000020C9A87020F875103000000010780010000000008000000080000000800000001135D44FF0CFD9C030F34D102000000010000000500000008000000040000000300000002120701040000000205000100135D44F705000106135D450700000003050000FE135D80FF000000040CFD9C030F34D10200000001045489FB00000008000000060F350D02045489FB1386AD0400000008000000020000000800000001135D44FF0CFD9C030F34D10200000001045489FB000000051386710400000002000000050000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D102000000010000000800000008000000080000000300000000135D80F70000000005000106135D450700000003050000FE135D80FF000000040CFD9C030F34D10200000001045489FB1386AD040000000800000002000000080F350D02045489FB1386AD040C9A87020F8751030000000100000008000000080000000213867104000000020C9A8702000000060000000600000001135D44FF0CFD9C030F34D10200000001000000050000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D10200000001000000050F350D02045489FB1386AD040C9A87020F87510300000001000000080000000500000002000000080000000100000005000000030000000100000004"
theorem small_7542016_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7542016_right_root small_7542016_right_fuel small_7542016_right_count small_7542016_right_encoded = true := by
  decide +kernel
theorem small_7542016_right_covered : CoveredBy scale carrier boxes small_7542016_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7542016_right_root small_7542016_right_fuel small_7542016_right_count small_7542016_right_encoded small_7542016_right_checked

theorem cover_7542016 : CoveredBy scale carrier boxes root_7542016 := by
  apply coveredBy_split_literal root_7542016 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2841.root small_7542016_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2841.covered
  · exact small_7542016_right_covered
#print axioms cover_7542016

def root_7542010 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542010_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542010_left_fuel : Nat := 1
def small_7542010_left_count : Nat := 1
def small_7542010_left_encoded : String := "00000003"
theorem small_7542010_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7542010_left_root small_7542010_left_fuel small_7542010_left_count small_7542010_left_encoded = true := by
  decide +kernel
theorem small_7542010_left_covered : CoveredBy scale carrier boxes small_7542010_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7542010_left_root small_7542010_left_fuel small_7542010_left_count small_7542010_left_encoded small_7542010_left_checked

theorem cover_7542010 : CoveredBy scale carrier boxes root_7542010 := by
  apply coveredBy_split_literal root_7542010 small_7542010_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7542016 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7542010_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7542016
#print axioms cover_7542010

def root_7542009 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7542009 : CoveredBy scale carrier boxes root_7542009 := by
  apply coveredBy_split_literal root_7542009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7542010 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2842.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7542010
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2842.covered
#print axioms cover_7542009

def root_7542003 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542003_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542003_left_fuel : Nat := 1
def small_7542003_left_count : Nat := 1
def small_7542003_left_encoded : String := "00000002"
theorem small_7542003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7542003_left_root small_7542003_left_fuel small_7542003_left_count small_7542003_left_encoded = true := by
  decide +kernel
theorem small_7542003_left_covered : CoveredBy scale carrier boxes small_7542003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7542003_left_root small_7542003_left_fuel small_7542003_left_count small_7542003_left_encoded small_7542003_left_checked

theorem cover_7542003 : CoveredBy scale carrier boxes root_7542003 := by
  apply coveredBy_split_literal root_7542003 small_7542003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7542009 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7542003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7542009
#print axioms cover_7542003

def root_7539685 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7539685 : CoveredBy scale carrier boxes root_7539685 := by
  apply coveredBy_split_literal root_7539685 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2840.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7542003 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2840.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7542003
#print axioms cover_7539685

def root_7539680 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7539680_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7539680_right_fuel : Nat := 1
def small_7539680_right_count : Nat := 1
def small_7539680_right_encoded : String := "00000001"
theorem small_7539680_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7539680_right_root small_7539680_right_fuel small_7539680_right_count small_7539680_right_encoded = true := by
  decide +kernel
theorem small_7539680_right_covered : CoveredBy scale carrier boxes small_7539680_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7539680_right_root small_7539680_right_fuel small_7539680_right_count small_7539680_right_encoded small_7539680_right_checked

theorem cover_7539680 : CoveredBy scale carrier boxes root_7539680 := by
  apply coveredBy_split_literal root_7539680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7539685 small_7539680_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7539685
  · exact small_7539680_right_covered
#print axioms cover_7539680

def root_7535308 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535308 : CoveredBy scale carrier boxes root_7535308 := by
  apply coveredBy_split_literal root_7535308 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7535309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7539680 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7535309
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7539680
#print axioms cover_7535308

def root_7535303 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535303_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535303_right_fuel : Nat := 1
def small_7535303_right_count : Nat := 1
def small_7535303_right_encoded : String := "00000000"
theorem small_7535303_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7535303_right_root small_7535303_right_fuel small_7535303_right_count small_7535303_right_encoded = true := by
  decide +kernel
theorem small_7535303_right_covered : CoveredBy scale carrier boxes small_7535303_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7535303_right_root small_7535303_right_fuel small_7535303_right_count small_7535303_right_encoded small_7535303_right_checked

theorem cover_7535303 : CoveredBy scale carrier boxes root_7535303 := by
  apply coveredBy_split_literal root_7535303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7535308 small_7535303_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7535308
  · exact small_7535303_right_covered
#print axioms cover_7535303

def root_7549940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549940_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549940_right_fuel : Nat := 20
def small_7549940_right_count : Nat := 427
def small_7549940_right_encoded : String := "1151E8FF08A912F712073D0008A91307120701060000000305000102135D45030000000105000104135D44FB050000FE135D80FF000000040CFD9BF70F350D0004548A0713867106000000030000000700000006000000000F34D1000000000004548A071386710600000003000000051386AD060280010213D7B10300000001000000060000000600000003135D44FF0CFD9BF70F350D0000000006000000000F34D10000000000000000050000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D0000000007000000000F34D100000000000000000500000005135D810305000104135D44FB050000FE135D80FF000000040CFD9BF70F350D0004548A070000000500000006000000000F34D10000000000000000050000000500000002000000050000000112073D0605000102135D45030000000105000104135D44FB050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000CFD9C070F34D10600000003000000060F350D060C9A87060F87510700000003000000060000000600000003135D44FF0CFD9BF70F350D000000000600000000000000060000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D10600000003000000060F350D060C9A87000F8750F70C9A87060F875107000000030000000600000006000000000F878CF7000000000C9A87060F87510700000003000000060000000600000003000000000F34D100000000000CFD9C070F34D106000000030280010200000006000000050F350D060C9A87060F875107000000030280010200000006000000060000000600000003135D44FF0CFD9BF70F350D000CFD9C070000000600000006000000000F34D100000000000CFD9C070F34D10600000003000000050000000600000004135D810305000104135D44FB050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000CFD9C070F34D106000000030000000600000006135D44FF0CFD9BF70F350D000000000600000000000000060000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D10600000003000000060F350D060C9A87000F8750F70C9A87060F875107000000030000000600000006000000000F878CF7000000000C9A87060F87510700000003000000060000000600000003000000000F34D100000000000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030780010200000006000000060000000600000003135D44FF0CFD9BF70F350D000CFD9C070000000600000006000000000F34D100000000000000000500000004000000010000000300000000120701000000000008A91307120701060000000305000102135D45030000000105000104135D44FB050000FE135D80FF00000004045489F71386AD0004548A071386710600000003000000051386AD0602800102000000080000000500000003000000001386710000000000000000080000000500000002000000050000000512073D0605000102135D45030000000105000104135D44FB050000FE135D80FF00000004045489F71386AD000CFD9C070F34D1060000000300000006000000060000000013867100000000000CFD9C070F34D106000000030000000800000006135D44FF045489F71386AD000CFD9C070F34D1060000000300000005000000060000000013867100000000000CFD9C0700000007000000060000000400000002135D80FB00000002050000FE135D80FF00000004045489F71386AD000CFD9C070F34D10600000003000000060F350D060C9A87060F875107000000030000000600000006000000030000000013867100000000000CFD9C070F34D10600000003000000050F350D060C9A8706000000080000000600000003135D44FF045489F71386AD000CFD9C070F34D1060000000300000005000000060000000013867100000000000000000500000004135D810305000104135D44FB050000FE135D80FF00000004045489F71386AD000CFD9C070F34D1060000000300000005000000060000000013867100000000000CFD9C070F34D1060000000300000005000000060000000600000002135D80FB00000002050000FE135D80FF00000004045489F71386AD000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000600000005000000030000000013867100000000000000000500000005000000010000000300000004"
theorem small_7549940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7549940_right_root small_7549940_right_fuel small_7549940_right_count small_7549940_right_encoded = true := by
  decide +kernel
theorem small_7549940_right_covered : CoveredBy scale carrier boxes small_7549940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7549940_right_root small_7549940_right_fuel small_7549940_right_count small_7549940_right_encoded small_7549940_right_checked

theorem cover_7549940 : CoveredBy scale carrier boxes root_7549940 := by
  apply coveredBy_split_literal root_7549940 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2844.root small_7549940_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2844.covered
  · exact small_7549940_right_covered
#print axioms cover_7549940

def root_7549935 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549935_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549935_right_fuel : Nat := 1
def small_7549935_right_count : Nat := 1
def small_7549935_right_encoded : String := "00000003"
theorem small_7549935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7549935_right_root small_7549935_right_fuel small_7549935_right_count small_7549935_right_encoded = true := by
  decide +kernel
theorem small_7549935_right_covered : CoveredBy scale carrier boxes small_7549935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7549935_right_root small_7549935_right_fuel small_7549935_right_count small_7549935_right_encoded small_7549935_right_checked

theorem cover_7549935 : CoveredBy scale carrier boxes root_7549935 := by
  apply coveredBy_split_literal root_7549935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7549940 small_7549935_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7549940
  · exact small_7549935_right_covered
#print axioms cover_7549935

def root_7547427 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7547427 : CoveredBy scale carrier boxes root_7547427 := by
  apply coveredBy_split_literal root_7547427 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2843.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7549935 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2843.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7549935
#print axioms cover_7547427

def root_7547422 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547422_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547422_right_fuel : Nat := 1
def small_7547422_right_count : Nat := 1
def small_7547422_right_encoded : String := "00000002"
theorem small_7547422_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7547422_right_root small_7547422_right_fuel small_7547422_right_count small_7547422_right_encoded = true := by
  decide +kernel
theorem small_7547422_right_covered : CoveredBy scale carrier boxes small_7547422_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7547422_right_root small_7547422_right_fuel small_7547422_right_count small_7547422_right_encoded small_7547422_right_checked

theorem cover_7547422 : CoveredBy scale carrier boxes root_7547422 := by
  apply coveredBy_split_literal root_7547422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7547427 small_7547422_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7547427
  · exact small_7547422_right_covered
#print axioms cover_7547422

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516
