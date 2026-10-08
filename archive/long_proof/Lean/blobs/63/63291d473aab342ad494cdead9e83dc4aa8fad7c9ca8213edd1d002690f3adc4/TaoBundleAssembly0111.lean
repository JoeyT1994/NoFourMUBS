import TaoBundleAssembly0110
import TaoBundleChunkBatch0409
import TaoBundleChunkBatch0410
import TaoBundleChunkBatch0411
import TaoBundleChunkBatch0412
import TaoBundleChunkBatch0413
import TaoBundleChunkBatch0414
import TaoBundleChunkBatch0415
import TaoBundleChunkBatch0416
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111
def root_4366077 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366077_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4366077_left_fuel : Nat := 21
def small_4366077_left_count : Nat := 387
def small_4366077_left_encoded : String := "0A0000F6115225010A0001021151E8F90A0001041151E905000000020A0000FC115225070A00010800000005115224FF0000000400000006000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A913010000000600000008115225050A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A91301120700F6000000080000000000000008000000031151E90700000003000000080000000200000001115224F9000000010A0001041151E905000000020A0000FC115225070A0001081151E8FF0000000900000004115224FF0000000408A91301120700F608A912F9000000081207010200000001000000080000000012073CF60000000008A912F912073D0208A91307000000060000000800000001120701020000000108A913070000000812073CFC0000000300000009000000031151E907000000030A0001081151E8FF08A91301000000080000000600000004115224FF0000000408A91301120700F608A912F9000000081207010200000001000000080000000012073CF60000000008A912F912073D0208A912FF0000000612070108000000040000000600000001120701020000000100000009115225050A0000FC115225070A0001081151E8FF08A91301120700F600000008000000000000000800000004115224FF0000000408A91301120700F608A912F912073D0208A913051207010400000002000000080000000800000001120701020000000108A91305120701040000000208A913070000000800000008000000080000000012073CF60000000008A912F912073D0208A9130512070104000000020000000812073D0408A9130700000008000000080000000200000001120701020000000108A91305120701040000000208A91307120700FC00000008000000030000000812073D0408A91307120700FC000000080000000312073CFC0000000308A912FF0000000812070108000000040000000800000002000000031151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A91301120700F608A912F912073D0208A913050000000900000008000000011207010200000001000000090000000012073CF60000000008A912F912073D0208A913051207010400000002000000080000000800000001120701020000000108A91305120701040000000208A912FF000000070000000912073D0408A912FF00000008000000090000000200000002000000001151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A913070000000800000006000000031151E9070000000300000008115225050A0000FC000000081151E90700000003000000080000000200000001115224F9000000010A0001041151E905000000020A0000FC115225070A0001081151E8FF08A912F90000000812070102000000010000000800000004115224FF0000000408A912F912073D0208A91307120700FC00000008000000030000000600000001120701020000000108A91307120700FC000000080000000312073CFC0000000308A912FF0000000800000006000000031151E907000000030A0001081151E8FF000000060000000400000006115225050A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A912F912073D0208A91305120701040000000208A91307000000060000000812073D0408A9130700000006000000080000000200000001120701020000000108A91305120701040000000208A913070000000612073CFC0000000308A912FF0000000612070108000000040000000612073D0408A91307120700FC08A912FF000000080000000A0000000312073CFC0000000308A912FF0000000612070108000000040000000600000002000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A912F912073D0208A913051207010400000002000000080000000800000001120701020000000108A91305120701040000000208A912FF000000060000000512073D0408A912FF00000006000000090000000200000002"
theorem small_4366077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4366077_left_root small_4366077_left_fuel small_4366077_left_count small_4366077_left_encoded = true := by
  decide +kernel
theorem small_4366077_left_covered : CoveredBy scale carrier boxes small_4366077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4366077_left_root small_4366077_left_fuel small_4366077_left_count small_4366077_left_encoded small_4366077_left_checked

theorem cover_4366077 : CoveredBy scale carrier boxes root_4366077 := by
  apply coveredBy_split_literal root_4366077 small_4366077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0110.root_4366913 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_4366077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0110.cover_4366913
#print axioms cover_4366077

def root_4361811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4361811 : CoveredBy scale carrier boxes root_4361811 := by
  apply coveredBy_split_literal root_4361811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0110.root_4361812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4366077 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0110.cover_4361812
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4366077
#print axioms cover_4361811

def root_4354829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4354829 : CoveredBy scale carrier boxes root_4354829 := by
  apply coveredBy_split_literal root_4354829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0110.root_4354830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4361811 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0110.cover_4354830
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4361811
#print axioms cover_4354829

def root_4370827 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4370827 : CoveredBy scale carrier boxes root_4370827 := by
  apply coveredBy_split_literal root_4370827 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1636.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1637.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1636.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1637.covered
#print axioms cover_4370827

def root_4375618 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375618_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375618_left_fuel : Nat := 19
def small_4375618_left_count : Nat := 153
def small_4375618_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A91301120700F6000000050000000012073CF60000000008A912F912073D020000000500000001120701020000000108A91309120700FE000000050000000400000007000000041151E9090000000408A91301120700F608A912F900000005120701020000000100000007000000000000000600000003115224FD000000030A0000FE1152250908A91301120700F608A912F912073D0208A912FD12073D06000000050000000312070106000000030000000900000001120701020000000108A912FD12073D0608A91309120700FE000000050000000412073CFE000000040500010400000006135D810504548A01138670F6045489F9000000050000000900000000000000060000000200000003120701060000000308A9130900000006000000090000000012073CF60000000008A912F912073D0208A912FD0000000612070106000000030000000600000001120701020000000108A912FD12073D0608A91309120700FE05000104135D4505000000020CFD9C010000000500000006135D81050CFD9C010F34D0F6000000050000000000000006000000020000000412073CFE000000040000000600000003120701060000000300000006000000041151E9090000000408A91301120700F608A912F900000009120701020000000108A912FD12073D06050001040000000600000009000000031207010600000003000000080000000012073CF60000000008A912F912073D0208A912FD0000000612070106000000030000000600000001120701020000000108A912FD00000006120701060000000300000006"
theorem small_4375618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4375618_left_root small_4375618_left_fuel small_4375618_left_count small_4375618_left_encoded = true := by
  decide +kernel
theorem small_4375618_left_covered : CoveredBy scale carrier boxes small_4375618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4375618_left_root small_4375618_left_fuel small_4375618_left_count small_4375618_left_encoded small_4375618_left_checked

theorem cover_4375618 : CoveredBy scale carrier boxes root_4375618 := by
  apply coveredBy_split_literal root_4375618 small_4375618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1638.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4375618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1638.covered
#print axioms cover_4375618

def root_4375612 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375612_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375612_left_fuel : Nat := 1
def small_4375612_left_count : Nat := 1
def small_4375612_left_encoded : String := "00000001"
theorem small_4375612_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4375612_left_root small_4375612_left_fuel small_4375612_left_count small_4375612_left_encoded = true := by
  decide +kernel
theorem small_4375612_left_covered : CoveredBy scale carrier boxes small_4375612_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4375612_left_root small_4375612_left_fuel small_4375612_left_count small_4375612_left_encoded small_4375612_left_checked

theorem cover_4375612 : CoveredBy scale carrier boxes root_4375612 := by
  apply coveredBy_split_literal root_4375612 small_4375612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4375618 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4375612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4375618
#print axioms cover_4375612

def root_4375038 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375038_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375038_left_fuel : Nat := 26
def small_4375038_left_count : Nat := 265
def small_4375038_left_encoded : String := "1151E8F90A0001041151E905000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250900000006000000041151E9090000000400000009115225050A0001061151E8FD0A0000FE1152250908A91301120700F608A91305120701040000000208A913090000000600000005000000050000000000000006000000041151E9090000000408A91301120700F600000005000000000000000600000003115224FD000000030A0000FE1152250908A91301120700F608A91305120701040000000208A912FD12073D0608A913090000000612073CFE000000040500010200000005135D80F9000000010000000500000003120701060000000308A91309120700FE00000005000000040000000512073D0408A912FD12073D06000000050000000300000005000000020000000012073CF60000000008A91305120701040000000208A912FD12073D0608A913090000000612073CFE000000040000000600000003120701060000000308A91309120700FE000000050000000412073CFE0000000405000102135D44F90CFD9C010F34D0F600000005000000000F350CF60000000004548A051386710400000002000000060000000600000001135D80F9000000010CFD9C010F34D0F604548A050000000500000009000000000F350CF60000000004548A051386710400000002045489FD000000061386710600000003000000060000000612073D0408A912FD00000006120701060000000308A91309000000060000000900000002000000041151E9090000000408A91301120700F608A91305120701040000000208A912FD00000009120701060000000300000009000000090000000012073CF60000000008A91305120701040000000208A912FD12073D0605000102135D44F9050000FE135D81090CFD9C01000000060F350CF6000000000000000600000004135D4509000000040000000900000001135D80F900000001050000FE135D81090CFD9C010F34D0F600000009000000000F350CF6000000000000000600000004135D4509000000040CFD9C010F34D0F600000009000000000F350CF60000000004548A0513867104000000020CFD9BFD000000060F34D10600000003000000090000000600000003120701060000000305000102135D44F90000000900000001135D80F900000001050000FE135D81090CFD9C01000000090F350CF60000000004548A051386710400000002045489FD1386AD060C9A86F600000009000000060000000313867106000000030C9A86F6000000090F87510100000000000000090000000900000004135D4509000000040CFD9C01000000090F350CF60000000004548A051386710400000002045489FD000000090000000A0000000912073D0408A912FD12073D0605000102000000060000000600000003120701060000000300000009000000020000000200000001"
theorem small_4375038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4375038_left_root small_4375038_left_fuel small_4375038_left_count small_4375038_left_encoded = true := by
  decide +kernel
theorem small_4375038_left_covered : CoveredBy scale carrier boxes small_4375038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4375038_left_root small_4375038_left_fuel small_4375038_left_count small_4375038_left_encoded small_4375038_left_checked

theorem cover_4375038 : CoveredBy scale carrier boxes root_4375038 := by
  apply coveredBy_split_literal root_4375038 small_4375038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4375612 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4375038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4375612
#print axioms cover_4375038

def root_4375033 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375033_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375033_right_fuel : Nat := 1
def small_4375033_right_count : Nat := 1
def small_4375033_right_encoded : String := "00000000"
theorem small_4375033_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4375033_right_root small_4375033_right_fuel small_4375033_right_count small_4375033_right_encoded = true := by
  decide +kernel
theorem small_4375033_right_covered : CoveredBy scale carrier boxes small_4375033_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4375033_right_root small_4375033_right_fuel small_4375033_right_count small_4375033_right_encoded small_4375033_right_checked

theorem cover_4375033 : CoveredBy scale carrier boxes root_4375033 := by
  apply coveredBy_split_literal root_4375033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4375038 small_4375033_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4375038
  · exact small_4375033_right_covered
#print axioms cover_4375033

def root_4375032 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375032_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4375032_right_fuel : Nat := 26
def small_4375032_right_count : Nat := 429
def small_4375032_right_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0001061151E8FD0A0000FE000000051151E909000000040000000600000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE0000000500000004000000060000000300000006000000041151E9090000000400000006115225050A0001061151E8FD0A0000FE1152250908A913050000000612073D0408A91309120700FE00000005000000040000000600000002000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A91305120701040000000208A912FD00000006120701060000000308A91309000000060000000612073D0408A912FD12073D0600000006000000030000000600000002000000041151E9090000000408A91305120701040000000208A912FD12073D06050000F6135D81010500010200000006000000060000000000000006000000031207010600000003050000F6135D810105000102135D44F9050000FE135D810904548A051386710400000002000000060000000600000004135D45090000000404548A051386710400000002000000090000000900000001135D80F900000001050000FE135D810904548A051386710400000002000000060000000600000004135D45090000000404548A051386710400000002045489FD1386AD06078000F6128A7D0100000006000000000000000500000003000000051386AD04000000060000000200000000135D45010000000005000102135D44F9050000FE00000006135D45090000000404548A051386710400000002045489FD00000006000000050000000600000001135D80F900000001050000FE000000060000000512073D0408A912FD000000061207010600000003050000F6135D81010500010200000006000000060000000000000006000000020000000200000001115224F9000000010A0001041151E905000000020A0001061151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE000000050000000412073CFE00000004050000F600000006135D45010000000005000104000000060000000600000001120701020000000108A91309120700FE000000070000000400000007000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073D0608A91309120700FE050000F6000000060000000A0000000400000006000000030000000600000001120701020000000108A912FD12073D0608A91309120700FE050000F6135D810105000104135D4505000000020000000A0000000A00000000135D4501000000000000000A0000000412073CFE00000004050000F6000000060000000800000003120701060000000300000006000000041151E9090000000400000006115225050A0001061151E8FD0A0000FE1152250908A912F912073D0208A9130512070104000000020000000612073D0408A91309120700FE050000F6000000050000000A0000000412073CFE00000004050000F600000006135D450100000000000000060000000200000001120701020000000108A913050000000712073D0408A91309120700FE050000F600000007135D45010000000000000007000000040000000700000002000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912F912073D0208A91305120701040000000208A912FD00000006120701060000000308A913090000000612073CFE00000004050000F6135D81010CFD9BF90F350D02000000060000000100000006000000000000000612073D0408A912FD000000061207010600000003000000060000000200000001120701020000000108A91305120701040000000208A912FD00000006120701060000000308A913090000000612073CFE000000040000000612073D0408A912FD12073D0608A91309120700FE050000F600000006135D450100000000045489F90000000613867102000000010CFD9C05000000060000000A0000000412073CFE00000004000000060000000312070106000000030000000600000002000000041151E9090000000408A912F912073D0208A91305120701040000000208A912FD000000061207010600000003050000F6135D8101050000FE135D81090CFD9BF90F350D020000000600000001000000060000000400000005000000000000000512073D0408A912FD000000061207010600000003000000060000000200000001120701020000000108A91305120701040000000208A912FD000000060000000512073D0408A912FD000000061207010600000003000000050000000200000002"
theorem small_4375032_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4375032_right_root small_4375032_right_fuel small_4375032_right_count small_4375032_right_encoded = true := by
  decide +kernel
theorem small_4375032_right_covered : CoveredBy scale carrier boxes small_4375032_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4375032_right_root small_4375032_right_fuel small_4375032_right_count small_4375032_right_encoded small_4375032_right_checked

theorem cover_4375032 : CoveredBy scale carrier boxes root_4375032 := by
  apply coveredBy_split_literal root_4375032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4375033 small_4375032_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4375033
  · exact small_4375032_right_covered
#print axioms cover_4375032

def root_4370826 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4370826 : CoveredBy scale carrier boxes root_4370826 := by
  apply coveredBy_split_literal root_4370826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4370827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4375032 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4370827
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4375032
#print axioms cover_4370826

def root_4379998 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4379998 : CoveredBy scale carrier boxes root_4379998 := by
  apply coveredBy_split_literal root_4379998 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1639.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1640.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1639.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1640.covered
#print axioms cover_4379998

def root_4386147 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4386147 : CoveredBy scale carrier boxes root_4386147 := by
  apply coveredBy_split_literal root_4386147 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1641.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1642.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1641.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1642.covered
#print axioms cover_4386147

def root_4386142 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4386142_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4386142_right_fuel : Nat := 1
def small_4386142_right_count : Nat := 1
def small_4386142_right_encoded : String := "00000000"
theorem small_4386142_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4386142_right_root small_4386142_right_fuel small_4386142_right_count small_4386142_right_encoded = true := by
  decide +kernel
theorem small_4386142_right_covered : CoveredBy scale carrier boxes small_4386142_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4386142_right_root small_4386142_right_fuel small_4386142_right_count small_4386142_right_encoded small_4386142_right_checked

theorem cover_4386142 : CoveredBy scale carrier boxes root_4386142 := by
  apply coveredBy_split_literal root_4386142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4386147 small_4386142_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4386147
  · exact small_4386142_right_covered
#print axioms cover_4386142

def root_4386141 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4386141 : CoveredBy scale carrier boxes root_4386141 := by
  apply coveredBy_split_literal root_4386141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4386142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1643.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4386142
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1643.covered
#print axioms cover_4386141

def root_4379997 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4379997 : CoveredBy scale carrier boxes root_4379997 := by
  apply coveredBy_split_literal root_4379997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4379998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4386141 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4379998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4386141
#print axioms cover_4379997

def root_4370825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4370825 : CoveredBy scale carrier boxes root_4370825 := by
  apply coveredBy_split_literal root_4370825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4370826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4379997 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4370826
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4379997
#print axioms cover_4370825

def root_4395572 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4395572 : CoveredBy scale carrier boxes root_4395572 := by
  apply coveredBy_split_literal root_4395572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1645.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1646.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1645.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1646.covered
#print axioms cover_4395572

def root_4395566 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4395566_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4395566_left_fuel : Nat := 1
def small_4395566_left_count : Nat := 1
def small_4395566_left_encoded : String := "00000002"
theorem small_4395566_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4395566_left_root small_4395566_left_fuel small_4395566_left_count small_4395566_left_encoded = true := by
  decide +kernel
theorem small_4395566_left_covered : CoveredBy scale carrier boxes small_4395566_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4395566_left_root small_4395566_left_fuel small_4395566_left_count small_4395566_left_encoded small_4395566_left_checked

theorem cover_4395566 : CoveredBy scale carrier boxes root_4395566 := by
  apply coveredBy_split_literal root_4395566 small_4395566_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4395572 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4395566_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4395572
#print axioms cover_4395566

def root_4408993 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4408993 : CoveredBy scale carrier boxes root_4408993 := by
  apply coveredBy_split_literal root_4408993 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1651.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1652.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1651.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1652.covered
#print axioms cover_4408993

def root_4408987 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408987_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408987_left_fuel : Nat := 1
def small_4408987_left_count : Nat := 1
def small_4408987_left_encoded : String := "00000004"
theorem small_4408987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4408987_left_root small_4408987_left_fuel small_4408987_left_count small_4408987_left_encoded = true := by
  decide +kernel
theorem small_4408987_left_covered : CoveredBy scale carrier boxes small_4408987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4408987_left_root small_4408987_left_fuel small_4408987_left_count small_4408987_left_encoded small_4408987_left_checked

theorem cover_4408987 : CoveredBy scale carrier boxes root_4408987 := by
  apply coveredBy_split_literal root_4408987 small_4408987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408993 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4408987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408993
#print axioms cover_4408987

def root_4408547 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408547_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408547_left_fuel : Nat := 23
def small_4408547_left_count : Nat := 211
def small_4408547_left_encoded : String := "138670FE067ECE8112EA58F6022A457913E201020AD3578510D10104000000020AD357870000000510D13D06000000050000000310D13D040AD357870000000510D13D06022A45890000000513E200FE000000040569AC4100000005134110F600000000033F67B90000000513BBF502000000010BE879C5000000051011AD04000000050000000200000003000000020000000113E1C502000000010AD3578510D10104000000020AD357870000000710D13D06022A458900000005000000070000000310D13D040AD3578710D1010600000003022A4589000000050000000710D13D06022A458913E1C4FE0569AC4100000005134110F600000000011523390000000513F85902000000010BE879C500000005000000060000000413E200FE000000040569AC411340D4F60115233913F895020BE879C5000000051011AD0400000005000000020000000113F85902000000010BE879C5000000071011AD040BE879C7000000051011AD0600000005000000030000000200000000134110F6000000000115233913F895020BE879C510117104000000020BE879C700000005000000081011AD040BE879C7000000051011AD06033F67C90000000513BC30FE0000000405F43D61000000050000000800000003000000020000000113F85902000000010BE879C5000000071011AD040BE879C7000000071011AD06033F67C90000000600000007000000030000000200000003000000020000000012EA94F600000000022A457913E201020AD3578510D10104000000020AD3578710D1010600000003000000060000000810D13D040AD357870000000610D13D06022A45890000000613E200FE000000040793F0C1128220F600000008000000000000000800000003000000020000000113E1C502000000010AD3578510D10104000000020AD357870000000710D13D06000000090000000310D13D040AD357870000000610D13D06022A45890000000613E200FE000000040793F0C1128220F60115233913F895020BE879C510117104000000020BE879C700000006000000081011AD0400000006000000020000000113F85902000000010BE879C5000000091011AD0400000006000000020000000012825CF600000000011523390000000600000006000000030000000200000004"
theorem small_4408547_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4408547_left_root small_4408547_left_fuel small_4408547_left_count small_4408547_left_encoded = true := by
  decide +kernel
theorem small_4408547_left_covered : CoveredBy scale carrier boxes small_4408547_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4408547_left_root small_4408547_left_fuel small_4408547_left_count small_4408547_left_encoded small_4408547_left_checked

theorem cover_4408547 : CoveredBy scale carrier boxes root_4408547 := by
  apply coveredBy_split_literal root_4408547 small_4408547_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408987 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4408547_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408987
#print axioms cover_4408547

def root_4408541 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408541_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408541_left_fuel : Nat := 1
def small_4408541_left_count : Nat := 1
def small_4408541_left_encoded : String := "00000003"
theorem small_4408541_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4408541_left_root small_4408541_left_fuel small_4408541_left_count small_4408541_left_encoded = true := by
  decide +kernel
theorem small_4408541_left_covered : CoveredBy scale carrier boxes small_4408541_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4408541_left_root small_4408541_left_fuel small_4408541_left_count small_4408541_left_encoded small_4408541_left_checked

theorem cover_4408541 : CoveredBy scale carrier boxes root_4408541 := by
  apply coveredBy_split_literal root_4408541 small_4408541_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408547 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4408541_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408547
#print axioms cover_4408541

def root_4408540 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4408540 : CoveredBy scale carrier boxes root_4408540 := by
  apply coveredBy_split_literal root_4408540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1653.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408541
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1653.covered
#print axioms cover_4408540

def root_4408534 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408534_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408534_left_fuel : Nat := 1
def small_4408534_left_count : Nat := 1
def small_4408534_left_encoded : String := "00000002"
theorem small_4408534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4408534_left_root small_4408534_left_fuel small_4408534_left_count small_4408534_left_encoded = true := by
  decide +kernel
theorem small_4408534_left_covered : CoveredBy scale carrier boxes small_4408534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4408534_left_root small_4408534_left_fuel small_4408534_left_count small_4408534_left_encoded small_4408534_left_checked

theorem cover_4408534 : CoveredBy scale carrier boxes root_4408534 := by
  apply coveredBy_split_literal root_4408534 small_4408534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408540 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4408534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408540
#print axioms cover_4408534

def root_4422975 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4422975 : CoveredBy scale carrier boxes root_4422975 := by
  apply coveredBy_split_literal root_4422975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1656.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1657.root coord4 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1656.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1657.covered
#print axioms cover_4422975

def root_4422969 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422969_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422969_left_fuel : Nat := 1
def small_4422969_left_count : Nat := 1
def small_4422969_left_encoded : String := "00000001"
theorem small_4422969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422969_left_root small_4422969_left_fuel small_4422969_left_count small_4422969_left_encoded = true := by
  decide +kernel
theorem small_4422969_left_covered : CoveredBy scale carrier boxes small_4422969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422969_left_root small_4422969_left_fuel small_4422969_left_count small_4422969_left_encoded small_4422969_left_checked

theorem cover_4422969 : CoveredBy scale carrier boxes root_4422969 := by
  apply coveredBy_split_literal root_4422969 small_4422969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4422975 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4422969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4422975
#print axioms cover_4422969

def root_4422335 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422335_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422335_left_fuel : Nat := 26
def small_4422335_left_count : Nat := 297
def small_4422335_left_encoded : String := "13E20102067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD907000000030569AC411340D4F6033F67B90000000713BBF502000000010569AC49000000070000000700000000134110F600000000033F67B90000000713BBF502000000010569AC4900000007000000070E6015070569AC4100000009134110F600000000033F67B90000000913BBF502000000010569AC491340D4FE0DAED8870E96250600000003000000090E9661060D4128840000000700000007000000030000000400000009000000030E6015050DE7CA060E5FD907000000030569AC411340D4F6033F67B90000000813BBF502000000010569AC4900000008134110FE000000040DAED8850E96250400000002000000080E9661040D41288600000007000000070000000200000000000000080E6015070569AC411340D4F6033F67B913BC31020569AC4900000005000000090000000113BBF502000000010569AC491340D4FE0DAED885000000050E966104000000050000000200000004134110FE000000040DAED8850E962504000000020DAED8870E96250600000003000000090E96610604DF1B210000000500000008000000030000000900000000134110F600000000033F67B913BC31020569AC4900000008134110FE000000040DAED8850E9625040000000200000008000000090000000113BBF502000000010569AC491340D4FE0DAED8850E96250400000002000000080E9661040DAED8870E9625060000000305F43D610000000500000008000000080000000200000004134110FE000000040DAED8850E962504000000020DAED8870E9625060000000305F43D611317BCF602B4D6990000000913D0D1020000000105F43D691317BCFE000000080000000400000009000000001317F8F60000000002B4D6990000000813D0D1020000000105F43D69000000081317F8FE000000040D563A450EE751040000000200000008000000090E96610600000008000000030E9661040DAED8870E96250600000003000000090E96610605F43D610000000900000008000000030000000200000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD907000000030569AC4100000007134110F60000000000000007000000090E6015050DE7CA060E5FD907000000030569AC411340D4F6033F67B913BC31020000000A0000000113BBF502000000010793F0C9128220FE0DAED8850000000A0E9661040000000700000002000000040000000A00000000134110F600000000033F67B913BC31020793F0C9000000080000000A0000000113BBF502000000010793F0C9128220FE0DAED8850E96250400000002000000080E9661040000000700000002000000040000000A0E6015070569AC411340D4F60000000900000000134110F600000000033F67B913BC3102000000090000000113BBF502000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E96250600000003000000090E96610605F43D610000000A1317F8F60000000002B4D699000000080000000A000000030E96610400000009000000020000000412825CFE000000040DAED8850E962504000000020000000A00000009000000030000000200000001"
theorem small_4422335_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422335_left_root small_4422335_left_fuel small_4422335_left_count small_4422335_left_encoded = true := by
  decide +kernel
theorem small_4422335_left_covered : CoveredBy scale carrier boxes small_4422335_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422335_left_root small_4422335_left_fuel small_4422335_left_count small_4422335_left_encoded small_4422335_left_checked

theorem cover_4422335 : CoveredBy scale carrier boxes root_4422335 := by
  apply coveredBy_split_literal root_4422335 small_4422335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4422969 coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4422335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4422969
#print axioms cover_4422335

def root_4422330 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422330_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422330_right_fuel : Nat := 1
def small_4422330_right_count : Nat := 1
def small_4422330_right_encoded : String := "00000000"
theorem small_4422330_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422330_right_root small_4422330_right_fuel small_4422330_right_count small_4422330_right_encoded = true := by
  decide +kernel
theorem small_4422330_right_covered : CoveredBy scale carrier boxes small_4422330_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422330_right_root small_4422330_right_fuel small_4422330_right_count small_4422330_right_encoded small_4422330_right_checked

theorem cover_4422330 : CoveredBy scale carrier boxes root_4422330 := by
  apply coveredBy_split_literal root_4422330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4422335 small_4422330_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4422335
  · exact small_4422330_right_covered
#print axioms cover_4422330

def root_4427217 : ZRayBox := fun j => (#[⟨⟨(-15868160), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427217_left_root : ZRayBox := fun j => (#[⟨⟨(-15868160), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427217_left_fuel : Nat := 29
def small_4427217_left_count : Nat := 491
def small_4427217_left_encoded : String := "13E20102067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD907000000030793F0C100000007000000080E6015070793F0C1128220F6033F67B913BC31020569AC4900000006000000090000000113BBF502000000010569AC491340D4FE0DAED887000000060E966106000000060000000300000004134110FE000000040DAED8870E96250600000003000000060E96610600000007000000030000000012825CF600000000033F67B90000000600000006000000030E6015050DE7CA060E5FD90700000003000000080E6015070793F0C1128220F6033F67B90000000813BBF502000000010569AC4900000008134110FE000000040DAED8850E962504000000020DAED88700000008000000080E9661040DAED8870E9625060000000307095FA112B880F602B4D699000000060000000600000000000000060E9661060000000800000003000000020000000012825CF600000000033F67B90000000813BBF502000000010569AC4900000008134110FE000000040DAED8850E96250400000002000000080E9661040DAED88700000006000000080000000200000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD907000000030793F0C10000000712825CF600000000000000070E6015070793F0C1128220F6033F67B90000000913BBF502000000010793F0C9128220FE0000000900000004000000090000000012825CF600000000033F67B913BC31020793F0C900000007000000090000000113BBF502000000010793F0C9128220FE0DAED887000000060E96610600000007000000030000000412825CFE000000040DAED8870E962506000000030000000500000005000000030E6015050DE7CA060E5FD907000000030793F0C1128220F6033F67B913BC31020793F0C90000000812825CFE00000004000000070000000113BBF502000000010793F0C9128220FE000000080000000412825CFE000000040DAED8850000000A0E96610400000007000000020000000012825CF600000000033F67B90000000813BBF502000000010793F0C90000000812825CFE000000040DAED8850E9625040000000200000005000000050E6015070793F0C1128220F6033F67B913BC31020793F0C9128220FE0DAED8850E962504000000020DAED8870E9625060000000307095FA10000000900000008000000080E96610400000009000000020000000412825CFE000000040DAED8850E962504000000020DAED8870E96250600000003000000090E9661060000000A00000003000000090000000113BBF502000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E9625060000000307095FA112B880F602B4D69913D10D0207095FA900000008000000090000000113D0D1020000000107095FA912B880FE0D563A450EE75104000000020D563A470EE751060000000306C417110000000900000006000000080EE78D0400000009000000020000000412B8BCFE000000040D563A450000000A000000090000000012B8BCF60000000002B4D69913D10D0207095FA90000000812B8BCFE000000040D563A450EE751040000000200000008000000090000000113D0D1020000000107095FA912B880FE0D563A450EE7510400000002000000080EE78D0400000006000000020000000412B8BCFE000000040D563A450EE751040000000200000005000000050E96610607095FA112B880F602B4D6990000000813D0D1020000000107095FA9000000080000000A0000000000000008000000030E9661040DAED8870E9625060000000307095FA10000000912B8BCF60000000002B4D6990000000913D0D1020000000107095FA900000006000000090E96610607095FA112B880F602B4D6990000000713D0D1020000000107095FA900000007000000090000000012B8BCF60000000002B4D6990000000713D0D1020000000107095FA9000000070000000700000003000000020000000412825CFE000000040DAED8850E962504000000020DAED8870E9625060000000307095FA10000000A12B8BCF60000000002B4D69913D10D020000000900000001000000050E9661060000000A000000030E9661040DAED8870E96250600000003000000090E96610607095FA1000000090000000500000003000000020000000012825CF600000000033F67B913BC31020793F0C9128220FE0DAED8850E96250400000002000000080E9661040DAED8870E962506000000030000000600000007000000020000000412825CFE000000040DAED8850E962504000000020DAED8870E96250600000003081E81E11246FCF603C9F8D90000000913A33102000000010000000500000000124738F600000000000000050E96610600000008000000030E9661040DAED8870E962506000000030000000900000007000000020000000113BBF502000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E96250600000003081E81E11246FCF602B4D6990000000813D0D1020000000107095FA900000006000000050000000000000006000000080E9661040DAED8870E96250600000003000000060E966106081E81E11246FCF602B4D6990000000700000005000000000000000500000003000000020000000412825CFE000000040DAED8850E962504000000020000000500000005000000030000000200000001"
theorem small_4427217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4427217_left_root small_4427217_left_fuel small_4427217_left_count small_4427217_left_encoded = true := by
  decide +kernel
theorem small_4427217_left_covered : CoveredBy scale carrier boxes small_4427217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4427217_left_root small_4427217_left_fuel small_4427217_left_count small_4427217_left_encoded small_4427217_left_checked

theorem cover_4427217 : CoveredBy scale carrier boxes root_4427217 := by
  apply coveredBy_split_literal root_4427217 small_4427217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1658.root coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4427217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1658.covered
#print axioms cover_4427217

def root_4427211 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427211_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15868160)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427211_left_fuel : Nat := 1
def small_4427211_left_count : Nat := 1
def small_4427211_left_encoded : String := "00000000"
theorem small_4427211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4427211_left_root small_4427211_left_fuel small_4427211_left_count small_4427211_left_encoded = true := by
  decide +kernel
theorem small_4427211_left_covered : CoveredBy scale carrier boxes small_4427211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4427211_left_root small_4427211_left_fuel small_4427211_left_count small_4427211_left_encoded small_4427211_left_checked

theorem cover_4427211 : CoveredBy scale carrier boxes root_4427211 := by
  apply coveredBy_split_literal root_4427211 small_4427211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4427217 coord0 false (-15868160)
  · decide +kernel
  · decide +kernel
  · exact small_4427211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4427217
#print axioms cover_4427211

def root_4422329 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4422329 : CoveredBy scale carrier boxes root_4422329 := by
  apply coveredBy_split_literal root_4422329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4422330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4427211 coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4422330
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4427211
#print axioms cover_4422329

def root_4422324 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422324_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422324_right_fuel : Nat := 1
def small_4422324_right_count : Nat := 1
def small_4422324_right_encoded : String := "00000003"
theorem small_4422324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422324_right_root small_4422324_right_fuel small_4422324_right_count small_4422324_right_encoded = true := by
  decide +kernel
theorem small_4422324_right_covered : CoveredBy scale carrier boxes small_4422324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422324_right_root small_4422324_right_fuel small_4422324_right_count small_4422324_right_encoded small_4422324_right_checked

theorem cover_4422324 : CoveredBy scale carrier boxes root_4422324 := by
  apply coveredBy_split_literal root_4422324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4422329 small_4422324_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4422329
  · exact small_4422324_right_covered
#print axioms cover_4422324

def root_4421868 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421868_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421868_left_fuel : Nat := 20
def small_4421868_left_count : Nat := 219
def small_4421868_left_encoded : String := "0F87510700000003067ECE8112EA58F6022A457913E20102067ECE8912EA58FE0DE7CA040E5FD9050000000200000007000000080000000412EA94FE000000040DE7CA040E5FD90500000002000000070E6015050B4D44060000000A10804D070569AC410000000A134110F6000000000000000A00000003000000020000000113E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020B4D440610801107000000030000000710804D070569AC411340D4F6011523390000000713F85902000000010569AC49000000070000000700000000134110F600000000011523390000000713F85902000000010569AC490000000700000007000000030E6015050B4D440610801107000000030000000810804D070569AC411340D4F6011523390000000813F85902000000010569AC490000000800000006000000000000000800000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020B4D440610801107000000030000000710804D070569AC411340D4F6011523390000000713F85902000000010793F0C9000000070000000600000000134110F600000000011523390000000713F85902000000010793F0C90000000700000005000000030E6015050B4D44060000000A10804D070569AC410000000A134110F600000000011523390000000A0000000A00000003000000020000000012EA94F600000000022A457913E20102067ECE890000000812EA94FE000000040DE7CA040E5FD9050000000200000007000000080000000113E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020B4D44060000000810804D070793F0C1128220F6011523390000000713F85902000000010569AC490000000700000007000000000000000800000003000000080000000412EA94FE000000040DE7CA040E5FD905000000020B4D440610801107000000030000000710804D070793F0C1128220F60115233900000007000000050000000000000005000000030E6015050B4D440610801107000000030793F0C10000000A0000000810804D070793F0C1128220F60115233913F895020793F0C9000000080000000A0000000113F85902000000010793F0C9128220FE0DAED8850E96250400000002000000050000000500000004000000050000000012825CF6000000000115233900000008000000050000000300000002"
theorem small_4421868_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421868_left_root small_4421868_left_fuel small_4421868_left_count small_4421868_left_encoded = true := by
  decide +kernel
theorem small_4421868_left_covered : CoveredBy scale carrier boxes small_4421868_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421868_left_root small_4421868_left_fuel small_4421868_left_count small_4421868_left_encoded small_4421868_left_checked

theorem cover_4421868 : CoveredBy scale carrier boxes root_4421868 := by
  apply coveredBy_split_literal root_4421868 small_4421868_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4422324 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4421868_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4422324
#print axioms cover_4421868

def root_4421863 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421863_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421863_right_fuel : Nat := 1
def small_4421863_right_count : Nat := 1
def small_4421863_right_encoded : String := "00000002"
theorem small_4421863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421863_right_root small_4421863_right_fuel small_4421863_right_count small_4421863_right_encoded = true := by
  decide +kernel
theorem small_4421863_right_covered : CoveredBy scale carrier boxes small_4421863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421863_right_root small_4421863_right_fuel small_4421863_right_count small_4421863_right_encoded small_4421863_right_checked

theorem cover_4421863 : CoveredBy scale carrier boxes root_4421863 := by
  apply coveredBy_split_literal root_4421863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4421868 small_4421863_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4421868
  · exact small_4421863_right_covered
#print axioms cover_4421863

def root_4421261 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421261_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421261_left_fuel : Nat := 22
def small_4421261_left_count : Nat := 289
def small_4421261_left_encoded : String := "0F875105000000020C9A87060F87510700000003067ECE8112EA58F6022A457913E20102067ECE8900000007000000070000000113E1C50200000001067ECE8912EA58FE0B4D440400000007000000070000000412EA94FE000000040B4D440400000007000000070000000012EA94F600000000022A457913E20102067ECE8900000007000000070000000113E1C50200000001067ECE8912EA58FE0B4D440400000007000000070000000412EA94FE000000040B4D440400000007000000070F878D07067ECE8112EA58F6022A457913E20102067ECE8912EA58FE0B4D44040000000910804D050DE7CA060E5FD9070000000300000007000000090000000200000004000000090000000113E1C50200000001067ECE8912EA58FE0B4D440410801105000000020DE7CA060E5FD90700000003000000070000000910804D050DE7CA060E5FD907000000030569AC411340D4F6011523390000000713F85902000000010569AC49000000070000000700000000134110F600000000011523390000000713F85902000000010569AC4900000007000000070E6015070569AC4100000009134110F600000000011523390000000913F85902000000010569AC490000000A0000000900000003000000020000000412EA94FE000000040B4D440410801105000000020000000910804D050DE7CA060E5FD907000000030569AC4100000009134110F600000000011523390000000713F85902000000010793F0C9000000070000000500000009000000020000000012EA94F600000000022A457913E20102067ECE8912EA58FE0B4D440410801105000000020DE7CA06000000070000000610804D050DE7CA060E5FD90700000003000000070E6015070793F0C1128220F600000009000000000000000600000003000000020000000412EA94FE000000040B4D440410801105000000020000000910804D050DE7CA060E5FD907000000030000000700000009000000020000000113E1C50200000001067ECE8912EA58FE0B4D440410801105000000020DE7CA060E5FD90700000003000000070E601507000000060000000310804D050DE7CA060E5FD907000000030793F0C1128220F6011523390000000713F85902000000010569AC4900000007000000070000000012825CF600000000011523390000000713F85902000000010569AC4900000006000000050E6015070793F0C1128220F6011523390000000613F85902000000010569AC4900000006134110FE0000000400000006000000000000000600000003000000020000000412EA94FE000000040B4D440410801105000000020DE7CA060E5FD90700000003000000070E6015070793F0C100000009000000060000000310804D050DE7CA060E5FD907000000030793F0C1128220F601152339000000070000000500000000000000050E6015070793F0C1128220F6011523390000000913F85902000000010793F0C9128220FE0DAED8870E96250600000003000000050000000500000004000000050000000012825CF6000000000115233913F895020793F0C900000006000000050000000100000005000000030000000200000003"
theorem small_4421261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421261_left_root small_4421261_left_fuel small_4421261_left_count small_4421261_left_encoded = true := by
  decide +kernel
theorem small_4421261_left_covered : CoveredBy scale carrier boxes small_4421261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421261_left_root small_4421261_left_fuel small_4421261_left_count small_4421261_left_encoded small_4421261_left_checked

theorem cover_4421261 : CoveredBy scale carrier boxes root_4421261 := by
  apply coveredBy_split_literal root_4421261 small_4421261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4421863 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4421261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4421863
#print axioms cover_4421261

def root_4421255 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421255_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421255_left_fuel : Nat := 1
def small_4421255_left_count : Nat := 1
def small_4421255_left_encoded : String := "00000004"
theorem small_4421255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421255_left_root small_4421255_left_fuel small_4421255_left_count small_4421255_left_encoded = true := by
  decide +kernel
theorem small_4421255_left_covered : CoveredBy scale carrier boxes small_4421255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421255_left_root small_4421255_left_fuel small_4421255_left_count small_4421255_left_encoded small_4421255_left_checked

theorem cover_4421255 : CoveredBy scale carrier boxes root_4421255 := by
  apply coveredBy_split_literal root_4421255 small_4421255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4421261 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4421255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4421261
#print axioms cover_4421255

def root_4420063 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4420063 : CoveredBy scale carrier boxes root_4420063 := by
  apply coveredBy_split_literal root_4420063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1655.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4421255 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1655.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4421255
#print axioms cover_4420063

def root_4420058 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4420058_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4420058_right_fuel : Nat := 1
def small_4420058_right_count : Nat := 1
def small_4420058_right_encoded : String := "00000003"
theorem small_4420058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4420058_right_root small_4420058_right_fuel small_4420058_right_count small_4420058_right_encoded = true := by
  decide +kernel
theorem small_4420058_right_covered : CoveredBy scale carrier boxes small_4420058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4420058_right_root small_4420058_right_fuel small_4420058_right_count small_4420058_right_encoded small_4420058_right_checked

theorem cover_4420058 : CoveredBy scale carrier boxes root_4420058 := by
  apply coveredBy_split_literal root_4420058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4420063 small_4420058_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4420063
  · exact small_4420058_right_covered
#print axioms cover_4420058

def root_4417114 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4417114 : CoveredBy scale carrier boxes root_4417114 := by
  apply coveredBy_split_literal root_4417114 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1654.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4420058 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1654.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4420058
#print axioms cover_4417114

def root_4417109 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4417109_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4417109_right_fuel : Nat := 1
def small_4417109_right_count : Nat := 1
def small_4417109_right_encoded : String := "00000002"
theorem small_4417109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4417109_right_root small_4417109_right_fuel small_4417109_right_count small_4417109_right_encoded = true := by
  decide +kernel
theorem small_4417109_right_covered : CoveredBy scale carrier boxes small_4417109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4417109_right_root small_4417109_right_fuel small_4417109_right_count small_4417109_right_encoded small_4417109_right_checked

theorem cover_4417109 : CoveredBy scale carrier boxes root_4417109 := by
  apply coveredBy_split_literal root_4417109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4417114 small_4417109_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4417114
  · exact small_4417109_right_covered
#print axioms cover_4417109

def root_4408533 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4408533 : CoveredBy scale carrier boxes root_4408533 := by
  apply coveredBy_split_literal root_4408533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4417109 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408534
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4417109
#print axioms cover_4408533

def root_4408527 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408527_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408527_left_fuel : Nat := 1
def small_4408527_left_count : Nat := 1
def small_4408527_left_encoded : String := "00000001"
theorem small_4408527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4408527_left_root small_4408527_left_fuel small_4408527_left_count small_4408527_left_encoded = true := by
  decide +kernel
theorem small_4408527_left_covered : CoveredBy scale carrier boxes small_4408527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4408527_left_root small_4408527_left_fuel small_4408527_left_count small_4408527_left_encoded small_4408527_left_checked

theorem cover_4408527 : CoveredBy scale carrier boxes root_4408527 := by
  apply coveredBy_split_literal root_4408527 small_4408527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408533 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4408527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408533
#print axioms cover_4408527

def root_4406765 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4406765 : CoveredBy scale carrier boxes root_4406765 := by
  apply coveredBy_split_literal root_4406765 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1650.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4408527 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1650.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4408527
#print axioms cover_4406765

def root_4406759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4406759_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4406759_left_fuel : Nat := 1
def small_4406759_left_count : Nat := 1
def small_4406759_left_encoded : String := "00000000"
theorem small_4406759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4406759_left_root small_4406759_left_fuel small_4406759_left_count small_4406759_left_encoded = true := by
  decide +kernel
theorem small_4406759_left_covered : CoveredBy scale carrier boxes small_4406759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4406759_left_root small_4406759_left_fuel small_4406759_left_count small_4406759_left_encoded small_4406759_left_checked

theorem cover_4406759 : CoveredBy scale carrier boxes root_4406759 := by
  apply coveredBy_split_literal root_4406759 small_4406759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4406765 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4406759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4406765
#print axioms cover_4406759

def root_4403653 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4403653 : CoveredBy scale carrier boxes root_4403653 := by
  apply coveredBy_split_literal root_4403653 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1649.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4406759 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1649.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4406759
#print axioms cover_4403653

def root_4403648 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403648_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403648_right_fuel : Nat := 1
def small_4403648_right_count : Nat := 1
def small_4403648_right_encoded : String := "00000004"
theorem small_4403648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4403648_right_root small_4403648_right_fuel small_4403648_right_count small_4403648_right_encoded = true := by
  decide +kernel
theorem small_4403648_right_covered : CoveredBy scale carrier boxes small_4403648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4403648_right_root small_4403648_right_fuel small_4403648_right_count small_4403648_right_encoded small_4403648_right_checked

theorem cover_4403648 : CoveredBy scale carrier boxes root_4403648 := by
  apply coveredBy_split_literal root_4403648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4403653 small_4403648_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4403653
  · exact small_4403648_right_covered
#print axioms cover_4403648

def root_4403647 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4403647 : CoveredBy scale carrier boxes root_4403647 := by
  apply coveredBy_split_literal root_4403647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4403648 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1659.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4403648
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1659.covered
#print axioms cover_4403647

def root_4403642 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403642_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403642_right_fuel : Nat := 1
def small_4403642_right_count : Nat := 1
def small_4403642_right_encoded : String := "00000003"
theorem small_4403642_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4403642_right_root small_4403642_right_fuel small_4403642_right_count small_4403642_right_encoded = true := by
  decide +kernel
theorem small_4403642_right_covered : CoveredBy scale carrier boxes small_4403642_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4403642_right_root small_4403642_right_fuel small_4403642_right_count small_4403642_right_encoded small_4403642_right_checked

theorem cover_4403642 : CoveredBy scale carrier boxes root_4403642 := by
  apply coveredBy_split_literal root_4403642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4403647 small_4403642_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4403647
  · exact small_4403642_right_covered
#print axioms cover_4403642

def root_4402756 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402756_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402756_left_fuel : Nat := 26
def small_4402756_left_count : Nat := 421
def small_4402756_left_encoded : String := "120701060000000308A91309120700FE04548A01138670F6045489F91386AD020CFD9C050F34D1040000000204548A07000000051386AD0604548A09000000050000000900000003000000090000000113867102000000010CFD9C050F34D1040000000204548A071386710600000003000000071386AD0604548A09138670FE022A45810000000500000007000000041386ACFE00000004022A458113E1C4F6022A457900000009000000070000000013E200F600000000022A457913E201020AD3578500000007000000090000000100000007000000030F350D0404548A07138671060000000304548A0900000005000000081386AD0604548A09138670FE0C9A8704000000050F878D05000000050000000200000004000000090000000300000002000000001386ACF600000000045489F91386AD020CFD9C050F34D1040000000204548A07138671060000000304548A09000000051386ACFE00000004067ECE8112EA58F6067ECE79000000050000000600000000000000061386AD0604548A09138670FE067ECE810000000500000006000000041386ACFE00000004067ECE8112EA58F6067ECE7912EA9502000000090000000112EA5902000000010AD3578510D1010400000002067ECE870000000712EA9506067ECE8900000005000000070000000310D13D0400000009000000020000000012EA94F600000000067ECE7912EA95020AD3578510D1010400000002067ECE870000000612EA9506067ECE890000000512EA94FE000000040793F0C100000009000000060000000310D13D0400000006000000020000000112EA5902000000010AD3578510D1010400000002067ECE870000000612EA9506067ECE8900000006000000070000000310D13D040000000600000002000000030F350D0404548A07000000061386AD0604548A09000000060000000900000003000000020000000113867102000000010CFD9C050F34D1040000000204548A07138671060000000304548A0900000006000000071386AD0604548A09138670FE067ECE8112EA58F6022A457913E201020AD35785000000050000000600000001000000070000000000000006000000041386ACFE00000004067ECE8112EA58F6022A457913E201020AD357850000000710D13D04067ECE870000000712EA9506067ECE8912EA58FE00000006000000040000000900000003000000020000000113E1C50200000001000000070000000012EA94F600000000022A457913E201020AD3578510D10104000000020000000710D13D04067ECE870000000612EA95060000000600000003000000020000000113E1C502000000010AD357850000000710D13D04067ECE870000000612EA9506000000060000000300000002000000030F350D0404548A07000000061386AD0604548A09000000061386ACFE000000040C9A8704000000060F878D05067ECE8112EA58F6022A45790000000913E1C502000000010000000800000000000000060000000200000003000000020000000412073CFE0000000404548A01138670F6045489F91386AD02000000090000000113867102000000010CFD9C050F34D1040000000204548A07000000081386AD060CFD9C090F34D0FE000000080000000400000008000000030F350D040000000900000002000000001386ACF600000000045489F91386AD020CFD9C050F34D1040000000204548A0713867106000000030CFD9C090F34D0FE067ECE810000000912EA94F600000000067ECE79000000090000000800000004000000081386AD060CFD9C090F34D0FE067ECE810000000912EA94F600000000067ECE790000000912EA5902000000010AD3578510D1010400000002067ECE8712EA5906000000030AD35789000000070000000712EA95060AD3578910D100FE0793F0C1128220F600000007000000000000000700000004000000090000000300000009000000040F350CFE000000040C9A86FE000000090F8751090000000400000008000000030F350D0400000009000000020000000113867102000000010CFD9C050F34D1040000000204548A071386710600000003000000081386AD060CFD9C090F34D0FE067ECE810000000812EA94F600000000022A457913E201020AD3578510D1010400000002067ECE870000000712EA95060AD3578910D100FE0000000700000004000000070000000310D13D04000000080000000200000001000000080000000400000008000000030F350D0404548A07000000081386AD060CFD9C090F34D0FE0C9A8704000000080F878D05000000080000000200000004000000080000000300000002"
theorem small_4402756_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4402756_left_root small_4402756_left_fuel small_4402756_left_count small_4402756_left_encoded = true := by
  decide +kernel
theorem small_4402756_left_covered : CoveredBy scale carrier boxes small_4402756_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4402756_left_root small_4402756_left_fuel small_4402756_left_count small_4402756_left_encoded small_4402756_left_checked

theorem cover_4402756 : CoveredBy scale carrier boxes root_4402756 := by
  apply coveredBy_split_literal root_4402756 small_4402756_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4403642 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4402756_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4403642
#print axioms cover_4402756

def root_4402751 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402751_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402751_right_fuel : Nat := 1
def small_4402751_right_count : Nat := 1
def small_4402751_right_encoded : String := "00000002"
theorem small_4402751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4402751_right_root small_4402751_right_fuel small_4402751_right_count small_4402751_right_encoded = true := by
  decide +kernel
theorem small_4402751_right_covered : CoveredBy scale carrier boxes small_4402751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4402751_right_root small_4402751_right_fuel small_4402751_right_count small_4402751_right_encoded small_4402751_right_checked

theorem cover_4402751 : CoveredBy scale carrier boxes root_4402751 := by
  apply coveredBy_split_literal root_4402751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4402756 small_4402751_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4402756
  · exact small_4402751_right_covered
#print axioms cover_4402751

def root_4401527 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4401527 : CoveredBy scale carrier boxes root_4401527 := by
  apply coveredBy_split_literal root_4401527 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1648.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4402751 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1648.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4402751
#print axioms cover_4401527

def root_4401521 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4401521_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4401521_left_fuel : Nat := 1
def small_4401521_left_count : Nat := 1
def small_4401521_left_encoded : String := "00000001"
theorem small_4401521_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4401521_left_root small_4401521_left_fuel small_4401521_left_count small_4401521_left_encoded = true := by
  decide +kernel
theorem small_4401521_left_covered : CoveredBy scale carrier boxes small_4401521_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4401521_left_root small_4401521_left_fuel small_4401521_left_count small_4401521_left_encoded small_4401521_left_checked

theorem cover_4401521 : CoveredBy scale carrier boxes root_4401521 := by
  apply coveredBy_split_literal root_4401521 small_4401521_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4401527 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4401521_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4401527
#print axioms cover_4401521

def root_4400643 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400643_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400643_left_fuel : Nat := 26
def small_4400643_left_count : Nat := 417
def small_4400643_left_encoded : String := "12073D0208A91305120701040000000208A91307120701060000000308A91309120700FE04548A01000000051386ACF6000000000CFD9BF9000000050F34D1020000000104548A05000000051386AD0400000005000000020000000412073CFE0000000404548A01138670F60CFD9BF90F350D0200000009000000010F34D1020000000104548A050000000A1386AD040000000900000002000000001386ACF6000000000CFD9BF90F350D0204548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE0000000500000004000000090000000A00000009000000010F34D1020000000104548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE00000007000000040000000A0000000A1386AD0404548A0713867106000000030CFD9C090F34D0FE067ECE810000000912EA94F6000000000AD357790000000910D1010200000001067ECE85000000070000000900000004000000091386AD060CFD9C090F34D0FE067ECE810000000912EA94F6000000000AD357790000000910D1010200000001067ECE850000000A00000009000000040F350CFE000000040000000A000000030000000212073D0608A91309120700FE04548A01138670F60CFD9BF9000000050F34D1020000000104548A05000000051386AD04000000050000000200000000000000080000000412073CFE0000000404548A01138670F60CFD9BF90000000A0000000A000000001386ACF6000000000CFD9BF90F350D0204548A050000000A1386AD040CFD9C070000000A0000000A00000002000000010F34D1020000000104548A050000000A1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000A12EA94F6000000000AD357790000000A0000000A000000040000000A0000000A000000020000000312073D0408A91307120701060000000308A91309120700FE04548A01000000091386ACF6000000000CFD9BF9000000090F34D102000000010CFD9C050F34D1040000000204548A07000000051386AD0604548A0900000005000000090000000300000009000000040000000912073D0608A91309120700FE04548A01138670F60CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D104000000020CFD9C07000000050F350D0600000005000000030F350D040CFD9C07000000050F350D0604548A0900000005000000090000000300000002000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D10400000002000000080F350D040CFD9C07000000050000000800000002000000010F34D102000000010CFD9C050F34D104000000020CFD9C070F34D1060000000304548A09000000051386ACFE00000004067ECE8112EA58F60AD357790000000510D10102000000010AD3578500000005000000090000000012EA94F6000000000AD357790000000810D10102000000010AD3578510D10104000000020000000810D13D040AD3578710D1010600000003000000090000000800000002000000080F350D040CFD9C070F34D1060000000304548A09138670FE0000000500000004000000090F350D0604548A09000000081386ACFE000000040C9A87040F87510500000002000000070000000800000003000000020000000412073CFE0000000404548A01138670F60CFD9BF9000000090F34D102000000010CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060000000A0000000300000009000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060CFD9C0900000008000000090000000300000009000000010F34D102000000010CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000912EA94F6000000000AD357790000000910D10102000000010AD3578510D10104000000020AD3578710D10106000000030000000910D13D060000000A000000030000000900000004000000090F350D060CFD9C090F34D0FE0C9A87060000000A0F878D07067ECE810000000A12EA94F6000000000AD357790000000810D10102000000010AD357850000000A10D13D040000000A0000000200000003000000040000000A000000030F350D040CFD9C070F34D10600000003000000090F350D060CFD9C090F34D0FE0C9A8704000000090F878D050C9A87060F8751070000000300000007000000090000000200000004000000090000000300000002000000030000000200000001"
theorem small_4400643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4400643_left_root small_4400643_left_fuel small_4400643_left_count small_4400643_left_encoded = true := by
  decide +kernel
theorem small_4400643_left_covered : CoveredBy scale carrier boxes small_4400643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4400643_left_root small_4400643_left_fuel small_4400643_left_count small_4400643_left_encoded small_4400643_left_checked

theorem cover_4400643 : CoveredBy scale carrier boxes root_4400643 := by
  apply coveredBy_split_literal root_4400643 small_4400643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4401521 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4400643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4401521
#print axioms cover_4400643

def root_4400638 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400638_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400638_right_fuel : Nat := 1
def small_4400638_right_count : Nat := 1
def small_4400638_right_encoded : String := "00000000"
theorem small_4400638_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4400638_right_root small_4400638_right_fuel small_4400638_right_count small_4400638_right_encoded = true := by
  decide +kernel
theorem small_4400638_right_covered : CoveredBy scale carrier boxes small_4400638_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4400638_right_root small_4400638_right_fuel small_4400638_right_count small_4400638_right_encoded small_4400638_right_checked

theorem cover_4400638 : CoveredBy scale carrier boxes root_4400638 := by
  apply coveredBy_split_literal root_4400638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4400643 small_4400638_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4400643
  · exact small_4400638_right_covered
#print axioms cover_4400638

def root_4433207 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4433207 : CoveredBy scale carrier boxes root_4433207 := by
  apply coveredBy_split_literal root_4433207 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1660.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1661.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1660.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1661.covered
#print axioms cover_4433207

def root_4433202 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4433202_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4433202_right_fuel : Nat := 1
def small_4433202_right_count : Nat := 1
def small_4433202_right_encoded : String := "00000001"
theorem small_4433202_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4433202_right_root small_4433202_right_fuel small_4433202_right_count small_4433202_right_encoded = true := by
  decide +kernel
theorem small_4433202_right_covered : CoveredBy scale carrier boxes small_4433202_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4433202_right_root small_4433202_right_fuel small_4433202_right_count small_4433202_right_encoded small_4433202_right_checked

theorem cover_4433202 : CoveredBy scale carrier boxes root_4433202 := by
  apply coveredBy_split_literal root_4433202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4433207 small_4433202_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4433207
  · exact small_4433202_right_covered
#print axioms cover_4433202

def root_4441019 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4441019 : CoveredBy scale carrier boxes root_4441019 := by
  apply coveredBy_split_literal root_4441019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1663.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1664.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1663.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1664.covered
#print axioms cover_4441019

def root_4441014 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4441014_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4441014_right_fuel : Nat := 1
def small_4441014_right_count : Nat := 1
def small_4441014_right_encoded : String := "00000003"
theorem small_4441014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4441014_right_root small_4441014_right_fuel small_4441014_right_count small_4441014_right_encoded = true := by
  decide +kernel
theorem small_4441014_right_covered : CoveredBy scale carrier boxes small_4441014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4441014_right_root small_4441014_right_fuel small_4441014_right_count small_4441014_right_encoded small_4441014_right_checked

theorem cover_4441014 : CoveredBy scale carrier boxes root_4441014 := by
  apply coveredBy_split_literal root_4441014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.root_4441019 small_4441014_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111.cover_4441019
  · exact small_4441014_right_covered
#print axioms cover_4441014

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0111
