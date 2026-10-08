import TaoBundleAssembly0315
import TaoBundleChunkBatch0409
import TaoBundleChunkBatch0410
import TaoBundleChunkBatch0411
import TaoBundleChunkBatch0412
import TaoBundleChunkBatch0413
import TaoBundleChunkBatch0414
import TaoBundleChunkBatch0415
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316
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
  apply coveredBy_split_literal root_4366077 small_4366077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4366913 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_4366077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4366913
#print axioms cover_4366077

def root_4361811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4361811 : CoveredBy scale carrier boxes root_4361811 := by
  apply coveredBy_split_literal root_4361811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4361812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4366077 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4361812
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4366077
#print axioms cover_4361811

def root_4354829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4354829 : CoveredBy scale carrier boxes root_4354829 := by
  apply coveredBy_split_literal root_4354829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.root_4354830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4361811 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0315.cover_4354830
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4361811
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
  apply coveredBy_split_literal root_4375612 small_4375612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4375618 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4375612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4375618
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
  apply coveredBy_split_literal root_4375038 small_4375038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4375612 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4375038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4375612
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
  apply coveredBy_split_literal root_4375033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4375038 small_4375033_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4375038
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
  apply coveredBy_split_literal root_4375032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4375033 small_4375032_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4375033
  · exact small_4375032_right_covered
#print axioms cover_4375032

def root_4370826 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4370826 : CoveredBy scale carrier boxes root_4370826 := by
  apply coveredBy_split_literal root_4370826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4370827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4375032 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4370827
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4375032
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
  apply coveredBy_split_literal root_4386142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4386147 small_4386142_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4386147
  · exact small_4386142_right_covered
#print axioms cover_4386142

def root_4386141 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4386141 : CoveredBy scale carrier boxes root_4386141 := by
  apply coveredBy_split_literal root_4386141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4386142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1643.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4386142
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1643.covered
#print axioms cover_4386141

def root_4379997 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4379997 : CoveredBy scale carrier boxes root_4379997 := by
  apply coveredBy_split_literal root_4379997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4379998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4386141 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4379998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4386141
#print axioms cover_4379997

def root_4370825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4370825 : CoveredBy scale carrier boxes root_4370825 := by
  apply coveredBy_split_literal root_4370825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4370826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4379997 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4370826
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4379997
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
  apply coveredBy_split_literal root_4395566 small_4395566_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4395572 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4395566_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4395572
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
  apply coveredBy_split_literal root_4408987 small_4408987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4408993 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4408987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4408993
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
  apply coveredBy_split_literal root_4408547 small_4408547_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4408987 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4408547_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4408987
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
  apply coveredBy_split_literal root_4408541 small_4408541_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4408547 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4408541_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4408547
#print axioms cover_4408541

def root_4408540 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4408540 : CoveredBy scale carrier boxes root_4408540 := by
  apply coveredBy_split_literal root_4408540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4408541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1653.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4408541
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
  apply coveredBy_split_literal root_4408534 small_4408534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4408540 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4408534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4408540
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
  apply coveredBy_split_literal root_4422969 small_4422969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4422975 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4422969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4422975
#print axioms cover_4422969

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316
