import TaoBundleAssembly0659
import TaoBundleChunkBatch0911
import TaoBundleChunkBatch0912
import TaoBundleChunkBatch0913
import TaoBundleChunkBatch0914
import TaoBundleChunkBatch0915
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660
def root_9731732 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9731732_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9731732_left_fuel : Nat := 24
def small_9731732_left_count : Nat := 491
def small_9731732_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD00000005120700FC0000000500000003000000041151E9090000000408A912FD12073CFC000000030500010000000005135D810105000102000000050000000700000000120700FC050001000000000700000007000000031151E8FD0A0000FE000000051151E909000000040500010000000006135D810105000102135D44F90000000600000001000000060000000000000003115225050A0000FC115224FD000000030A0000FE1152250908A91305120701040000000208A912FD000000050000000912073D0408A912FD00000005120700FC000000050000000300000002000000041151E9090000000408A91305120701040000000208A912FD000000060000000612073D0408A912FD12073CFC0000000305000100135D45010000000000000006135D810105000102135D44F90000000600000001135D80F900000001050000FE135D81090CFD9C05000000060F350D040CFD9BFD000000050000000600000002000000040000000600000000120700FC05000100135D450100000000050001020000000600000006135D810105000102135D44F90000000600000001000000090000000000000003000000021151E8FD0A0000FE1152250908A91305120701040000000208A91309120700FE00000005000000040000000612073D0408A91309120700FE000000050000000412073CFE000000040500010000000005135D81010500010200000005135D80F900000001050000FC000000050000000A0000000000000002000000041151E9090000000400000006000000030000000200000001115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000100135D4501000000000500010400000005135D81050CFD9BF9000000050F34D102000000010000000700000002135D810105000104135D4505000000020CFD9BF90000000500000009135D81050CFD9BF900000009000000090000000200000000120700FC08A9130900000009000000090000000300000001120701020000000100000009000000041151E9090000000408A912F912073D0208A912FD12073CFC00000003050001000000000700000007120700FC000000070000000300000001120701020000000108A912FD00000007000000091151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE000000050000000412073CFE0000000405000100135D45010000000000000007135D810105000104135D450500000002050000FC000000050000000A135D8105050000FC135D80FD000000030CFD9BF9000000070F34D10200000001000000070000000A000000020000000000000001120701020000000108A913090000000900000007000000041151E9090000000408A912F912073D020500010000000007000000070000000112070102000000010000000700000003115225050A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A913050000000912073D0408A912FD12073CFC0000000308A913090000000912073CFE0000000405000100135D4501000000000CFD9BF90F350D020CFD9C05000000050F350D040000000500000002000000010F34D1020000000100000007135D81010CFD9BF9000000090000000900000000120700FC00000009000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC00000003000000090000000900000009000000041151E9090000000408A912F912073D0208A91305120701040000000208A912FD000000070000000912073D0408A912FD12073CFC0000000305000100135D450100000000050000FE0000000700000007135D8101050000FE135D81090CFD9BF90F350D020CFD9C05000000070F350D040000000700000002000000010F34D102000000010000000700000004135D4509000000040CFD9BF9000000070F34D102000000010000000700000000120700FC05000100135D4501000000000000000900000009000000030000000200000001120701020000000108A913050000000712073D0408A912FD0000000700000009000000021151E8FD0A0000FE1152250908A912F912073D0208A91305120701040000000208A91309000000090000000712073D0408A91309120700FE0500010000000005000000090000000412073CFE0000000405000100135D450100000000050000FC00000007135D44FD0000000700000003135D8101050000FC135D80FD000000030CFD9BF90F350D020CFD9C05000000070000000A000000010F34D1020000000100000007135D44FD0CFD9BF90000000A0F34D102000000010000000700000003000000000000000200000001120701020000000108A913050000000712073D0408A91309000000090000000700000002000000041151E9090000000408A912F912073D0208A913050000000612073D0405000100135D45010000000000000007135D8101050000FC135D80FD00000003050000FE0000000700000007135D44FD00000006000000030000000000000002000000011207010200000001000000070000000300000002"
theorem small_9731732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9731732_left_root small_9731732_left_fuel small_9731732_left_count small_9731732_left_encoded = true := by
  decide +kernel
theorem small_9731732_left_covered : CoveredBy scale carrier boxes small_9731732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9731732_left_root small_9731732_left_fuel small_9731732_left_count small_9731732_left_encoded small_9731732_left_checked

theorem cover_9731732 : CoveredBy scale carrier boxes root_9731732 := by
  apply coveredBy_split_literal root_9731732 small_9731732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3643.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9731732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3643.covered
#print axioms cover_9731732

def root_9726652 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726652 : CoveredBy scale carrier boxes root_9726652 := by
  apply coveredBy_split_literal root_9726652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9726653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9731732 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9726653
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9731732
#print axioms cover_9726652

def root_9735840 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9735840 : CoveredBy scale carrier boxes root_9735840 := by
  apply coveredBy_split_literal root_9735840 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3644.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3645.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3644.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3645.covered
#print axioms cover_9735840

def root_9743910 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9743910 : CoveredBy scale carrier boxes root_9743910 := by
  apply coveredBy_split_literal root_9743910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3647.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3648.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3647.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3648.covered
#print axioms cover_9743910

def root_9743905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9743905_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9743905_right_fuel : Nat := 1
def small_9743905_right_count : Nat := 1
def small_9743905_right_encoded : String := "00000000"
theorem small_9743905_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9743905_right_root small_9743905_right_fuel small_9743905_right_count small_9743905_right_encoded = true := by
  decide +kernel
theorem small_9743905_right_covered : CoveredBy scale carrier boxes small_9743905_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9743905_right_root small_9743905_right_fuel small_9743905_right_count small_9743905_right_encoded small_9743905_right_checked

theorem cover_9743905 : CoveredBy scale carrier boxes root_9743905 := by
  apply coveredBy_split_literal root_9743905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9743910 small_9743905_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9743910
  · exact small_9743905_right_covered
#print axioms cover_9743905

def root_9741875 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9741875 : CoveredBy scale carrier boxes root_9741875 := by
  apply coveredBy_split_literal root_9741875 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3646.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9743905 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3646.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9743905
#print axioms cover_9741875

def root_9735839 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9735839 : CoveredBy scale carrier boxes root_9735839 := by
  apply coveredBy_split_literal root_9735839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9735840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9741875 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9735840
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9741875
#print axioms cover_9735839

def root_9726651 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726651 : CoveredBy scale carrier boxes root_9726651 := by
  apply coveredBy_split_literal root_9726651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9726652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9735839 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9726652
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9735839
#print axioms cover_9726651

def root_9749013 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9749013 : CoveredBy scale carrier boxes root_9749013 := by
  apply coveredBy_split_literal root_9749013 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3649.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3650.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3649.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3650.covered
#print axioms cover_9749013

def root_9749007 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9749007_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9749007_left_fuel : Nat := 1
def small_9749007_left_count : Nat := 1
def small_9749007_left_encoded : String := "00000001"
theorem small_9749007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9749007_left_root small_9749007_left_fuel small_9749007_left_count small_9749007_left_encoded = true := by
  decide +kernel
theorem small_9749007_left_covered : CoveredBy scale carrier boxes small_9749007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9749007_left_root small_9749007_left_fuel small_9749007_left_count small_9749007_left_encoded small_9749007_left_checked

theorem cover_9749007 : CoveredBy scale carrier boxes root_9749007 := by
  apply coveredBy_split_literal root_9749007 small_9749007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9749013 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9749007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9749013
#print axioms cover_9749007

def root_9748679 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748679_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748679_left_fuel : Nat := 18
def small_9748679_left_count : Nat := 151
def small_9748679_left_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A913070000000512073CFC0000000308A912FF00000005120700FE000000050000000412073D0008A913070000000512073CFC0000000308A912FF00000005120700FE0000000500000004000000001151E8FF08A91301120701000000000008A91307120700FC00000005000000030000000A12073D0008A91307120700FC0000000500000003000000080000000000000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912FF12073CFE000000040500010200000008135D80F90000000105000104135D450500000002050000FC00000005135D4507000000030000000800000008120700FE0500010200000005135D80F9000000010500010400000005000000080000000412073D0008A912FF00000008120700FE0000000800000004000000001151E8FF0000000800000004115225050A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A91305120701040000000208A91307120700FC00000008000000030000000812073D0408A91307120700FC08A912FF00000008000000050000000312073CFC0000000308A912FF00000008120700FE00000005000000040000000212073D0008A9130512070104000000020000000812073D0408A91307120700FC00000005000000030000000800000002000000001151E8FF0000000800000004000000031151E907000000030A0000FE000000081151E8FF00000008000000040000000200000001"
theorem small_9748679_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9748679_left_root small_9748679_left_fuel small_9748679_left_count small_9748679_left_encoded = true := by
  decide +kernel
theorem small_9748679_left_covered : CoveredBy scale carrier boxes small_9748679_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9748679_left_root small_9748679_left_fuel small_9748679_left_count small_9748679_left_encoded small_9748679_left_checked

theorem cover_9748679 : CoveredBy scale carrier boxes root_9748679 := by
  apply coveredBy_split_literal root_9748679 small_9748679_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9749007 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9748679_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9749007
#print axioms cover_9748679

def root_9748674 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748674_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748674_right_fuel : Nat := 1
def small_9748674_right_count : Nat := 1
def small_9748674_right_encoded : String := "00000000"
theorem small_9748674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9748674_right_root small_9748674_right_fuel small_9748674_right_count small_9748674_right_encoded = true := by
  decide +kernel
theorem small_9748674_right_covered : CoveredBy scale carrier boxes small_9748674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9748674_right_root small_9748674_right_fuel small_9748674_right_count small_9748674_right_encoded small_9748674_right_checked

theorem cover_9748674 : CoveredBy scale carrier boxes root_9748674 := by
  apply coveredBy_split_literal root_9748674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9748679 small_9748674_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9748679
  · exact small_9748674_right_covered
#print axioms cover_9748674

def root_9748046 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748046_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748046_left_fuel : Nat := 26
def small_9748046_left_count : Nat := 291
def small_9748046_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC115225070A0000FE000000081151E8FF0000000500000004000000031151E90700000003000000080000000800000001115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F912073D0208A91307120700FC08A912FF00000005120700FE00000005000000040000000312073CFC0000000308A912FF00000008120700FE000000080000000400000001120701020000000108A91307120700FC08A912FF12073CFE000000040500010000000005135D81010500010400000005135D8105045489F9000000051386710200000001000000080000000200000000120700FE00000009000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D45010000000000000008135D810105000104135D450500000002045489F90000000813867102000000010CFD9C070F34D0FC0000000800000003000000080000000800000000120700FE05000100135D45010000000005000104135D450500000002045489F9000000080000000900000008135D810105000104135D450500000002045489F91386AD020CFD9C070F34D0FC0000000900000003000000080000000113867102000000010CFD9C07000000090F350CFC00000003045489FF0000000800000009135D8105045489F90000000813867102000000010CFD9C0700000009000000080000000200000000000000041151E8FF08A912F912073D020000000800000001120701020000000108A91307120700FC00000008000000030000000800000004000000031151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FF00000008120700FE000000080000000400000001120701020000000108A912FF12073CFE000000040500010000000008135D810105000104135D450500000002050000FC00000008000000070000000700000000120700FE05000100135D45010000000005000104135D450500000002050000FC00000008135D4507000000030000000700000008135D810105000104135D450500000002050000FC135D8107045489F9000000081386710200000001045489FF00000007138670FE07800100128A41010000000000000008128A7D0100000007000000000000000400000003135D450700000003000000070000000800000000000000041151E8FF0000000800000004115225050A0000FC115225070A0000FE115224FF0000000408A912F912073D0208A9130512070104000000020000000812073D0408A91307120700FC0000000800000003000000080000000200000001120701020000000108A91305120701040000000208A91307120700FC00000008000000030000000812073D0408A91307120700FC08A912FF00000008120700FE0500010000000008135D8101045489F9000000080000000900000000000000040000000312073CFC0000000308A912FF00000008120700FE0000000800000004000000021151E8FF0000000800000004000000031151E907000000030A0000FE000000081151E8FF000000080000000400000002"
theorem small_9748046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9748046_left_root small_9748046_left_fuel small_9748046_left_count small_9748046_left_encoded = true := by
  decide +kernel
theorem small_9748046_left_covered : CoveredBy scale carrier boxes small_9748046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9748046_left_root small_9748046_left_fuel small_9748046_left_count small_9748046_left_encoded small_9748046_left_checked

theorem cover_9748046 : CoveredBy scale carrier boxes root_9748046 := by
  apply coveredBy_split_literal root_9748046 small_9748046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9748674 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9748046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9748674
#print axioms cover_9748046

def root_9755903 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9755903 : CoveredBy scale carrier boxes root_9755903 := by
  apply coveredBy_split_literal root_9755903 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3652.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3653.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3652.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3653.covered
#print axioms cover_9755903

def root_9755897 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755897_left_fuel : Nat := 1
def small_9755897_left_count : Nat := 1
def small_9755897_left_encoded : String := "00000002"
theorem small_9755897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9755897_left_root small_9755897_left_fuel small_9755897_left_count small_9755897_left_encoded = true := by
  decide +kernel
theorem small_9755897_left_covered : CoveredBy scale carrier boxes small_9755897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9755897_left_root small_9755897_left_fuel small_9755897_left_count small_9755897_left_encoded small_9755897_left_checked

theorem cover_9755897 : CoveredBy scale carrier boxes root_9755897 := by
  apply coveredBy_split_literal root_9755897 small_9755897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9755903 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9755897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9755903
#print axioms cover_9755897

def root_9767725 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9767725 : CoveredBy scale carrier boxes root_9767725 := by
  apply coveredBy_split_literal root_9767725 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3656.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3657.root coord2 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3656.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3657.covered
#print axioms cover_9767725

def root_9767719 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767719_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767719_left_fuel : Nat := 1
def small_9767719_left_count : Nat := 1
def small_9767719_left_encoded : String := "00000000"
theorem small_9767719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767719_left_root small_9767719_left_fuel small_9767719_left_count small_9767719_left_encoded = true := by
  decide +kernel
theorem small_9767719_left_covered : CoveredBy scale carrier boxes small_9767719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767719_left_root small_9767719_left_fuel small_9767719_left_count small_9767719_left_encoded small_9767719_left_checked

theorem cover_9767719 : CoveredBy scale carrier boxes root_9767719 := by
  apply coveredBy_split_literal root_9767719 small_9767719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9767725 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9767719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9767725
#print axioms cover_9767719

def root_9767718 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767718_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767718_right_fuel : Nat := 24
def small_9767718_right_count : Nat := 443
def small_9767718_right_encoded : String := "13E201000DE7CA040E5FD905000000020B4D43FC10804D070B4D43FE10804D090640010212FF70F9033F67C113BBF500000000000D4128840EFA1105000000020BF3E57C000000051008ED07000000030BF3E57E000000051008ED09000000040000000700000008000000080000000112FFACF900000001033F67C113BBF500000000000D4128840EFA1105000000020BF3E57C100929070BF3E57E10092909000000050000000400000007000000031008ED07000000030BF3E57E1009290906E0010212C7E4F9000000080000000112C820F90000000102B4D6A10000000600000008000000041008ED0900000004000000070EFA4D050BF3E57C100929070BF3E57E10092909000000080000000400000009000000031008ED07000000030BF3E57E1009290900000008000000041008ED090000000406E0010200000009000000090000000213BC31000D4128840EFA1105000000020BF3E57C000000071008ED07000000030BF3E57E00000008000000070EFA4D050000000800000002000000000000000410801109000000040640010212FF70F9033F67C113BBF500000000000D412884000000070EFA4D050000000900000002000000070000000112FFACF900000001033F67C113BBF500000000000D412884000000070EFA4D050000000900000002000000070000000310801107000000030B4D43FE10804D090640010212FF70F9033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C10EDAD070BF3E57E000000081008ED090000000405A0010200000008133170F900000001000000080000000310ED7107000000030000000800000008000000080000000112FFACF900000001033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C10EDAD070BF3E57E1009290906E00102000000080000000A000000041008ED090000000406E0010212C7E4F902B4D6A10000000A00000007000000010000000A0000000310ED7107000000030000000A0EFA4D050AA6A27C10EDAD070BF3E57E1009290900000008000000041008ED090000000406E0010212C7E4F9000000080000000112C820F90000000102B4D6A113D0D100000000000D9479440000000A0EAEE9050000000900000002000000080000000310ED7107000000030BF3E57E000000081008ED090000000406E00102000000080000000A0000000213BC31000D4128840EFA1105000000020AA6A27C10EDAD070BF3E57E000000081008ED0900000004000000070000000310ED7107000000030000000800000008000000000000000410801109000000040640010212FF70F9033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C0000000710ED710700000003000000070EFA4D050AA6A27C10EDAD070AA6A27E10EDAD0905A0010200000008133170F90000000102B4D6A113D0D100000000000D94794400000007000000080000000700000004000000070000000310ED7107000000030AA6A27E10EDAD09000000080000000410ED710900000004000000070000000213BC31000D412884000000070EFA4D050AA6A27C000000070000000800000002000000000000000112FFACF900000001033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C0000000710ED7107000000030000000A0EFA4D050AA6A27C10EDAD070AA6A27E10EDAD0906E001020000000912C820F9000000010000000900000004000000070000000310ED7107000000030AA6A27E10EDAD0906E0010212C7E4F902B4D6A10000000A00000008000000010000000A0000000410ED710900000004000000050000000213BC31000D4128840EFA110500000002000000070EFA4D050AA6A27C0000000910ED7107000000030000000500000002000000000E6015050B4D43FC10804D070B4D43FE10804D09064001020000000812FFACF900000001033F67C113BBF500000000000DAED885000000090E9661040BF3E57C000000091008ED07000000030000000800000002000000080000000410801109000000040640010200000009000000090000000310801107000000030B4D43FE10804D09064001020000000812FFACF900000001033F67C113BBF500000000000DAED885000000080E9661040AA6A27C000000080000000800000002000000080000000410801109000000040640010212FF70F9033F67C113BBF500000000000DAED8850E96250400000002000000080E9661040AA6A27C10EDAD07000000090000000310ED7107000000030000000800000002000000080000000112FFACF900000001033F67C113BBF500000000000DAED8850E96250400000002000000090E9661040AA6A27C10EDAD07000000090000000310ED7107000000030AA6A27E10EDAD0906E001020000000800000005000000040000000500000002000000090000000200000000"
theorem small_9767718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767718_right_root small_9767718_right_fuel small_9767718_right_count small_9767718_right_encoded = true := by
  decide +kernel
theorem small_9767718_right_covered : CoveredBy scale carrier boxes small_9767718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767718_right_root small_9767718_right_fuel small_9767718_right_count small_9767718_right_encoded small_9767718_right_checked

theorem cover_9767718 : CoveredBy scale carrier boxes root_9767718 := by
  apply coveredBy_split_literal root_9767718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9767719 small_9767718_right_root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9767719
  · exact small_9767718_right_covered
#print axioms cover_9767718

def root_9767713 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767713_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767713_right_fuel : Nat := 1
def small_9767713_right_count : Nat := 1
def small_9767713_right_encoded : String := "00000001"
theorem small_9767713_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767713_right_root small_9767713_right_fuel small_9767713_right_count small_9767713_right_encoded = true := by
  decide +kernel
theorem small_9767713_right_covered : CoveredBy scale carrier boxes small_9767713_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767713_right_root small_9767713_right_fuel small_9767713_right_count small_9767713_right_encoded small_9767713_right_checked

theorem cover_9767713 : CoveredBy scale carrier boxes root_9767713 := by
  apply coveredBy_split_literal root_9767713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9767718 small_9767713_right_root coord1 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9767718
  · exact small_9767713_right_covered
#print axioms cover_9767713

def root_9767712 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9767712 : CoveredBy scale carrier boxes root_9767712 := by
  apply coveredBy_split_literal root_9767712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9767713 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3658.root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9767713
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3658.covered
#print axioms cover_9767712

def root_9767706 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767706_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767706_left_fuel : Nat := 1
def small_9767706_left_count : Nat := 1
def small_9767706_left_encoded : String := "00000004"
theorem small_9767706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767706_left_root small_9767706_left_fuel small_9767706_left_count small_9767706_left_encoded = true := by
  decide +kernel
theorem small_9767706_left_covered : CoveredBy scale carrier boxes small_9767706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767706_left_root small_9767706_left_fuel small_9767706_left_count small_9767706_left_encoded small_9767706_left_checked

theorem cover_9767706 : CoveredBy scale carrier boxes root_9767706 := by
  apply coveredBy_split_literal root_9767706 small_9767706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9767712 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9767706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9767712
#print axioms cover_9767706

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660
