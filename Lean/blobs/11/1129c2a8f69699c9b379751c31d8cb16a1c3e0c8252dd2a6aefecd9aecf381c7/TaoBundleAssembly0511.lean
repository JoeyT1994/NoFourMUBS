import TaoBundleAssembly0499
import TaoBundleAssembly0510
import TaoBundleChunkBatch0700
import TaoBundleChunkBatch0701
import TaoBundleChunkBatch0702
import TaoBundleChunkBatch0703
import TaoBundleChunkBatch0704
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511
def root_7428988 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7428988_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7428988_left_fuel : Nat := 22
def small_7428988_left_count : Nat := 333
def small_7428988_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115225050A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250908A91305120700FA000000050000000212073CFA0000000208A912FD12073D060000000500000003120701060000000308A91309120700FE000000050000000400000009000000041151E9090000000408A91305120700FA08A912FD000000051207010600000003000000090000000212073CFA0000000208A912FD12073D0605000100135D44F700000009000000000000000A00000003120701060000000300000009000000021151E905000000020A0001061151E8FD0000000A00000003115224FD000000030A0000FE1152250908A912FD0000000A120701060000000308A91309120700FE000000090000000400000009000000041151E909000000040000000A115225030A0000FA115225050A0001061151E8FD0A0000FE1152250908A91303120701020000000108A913050000000A12073CFA0000000208A91309120700FE00000005000000040000000512073D0208A91305120700FA00000005000000020000000500000001000000041151E9090000000408A913030000000A12073D0208A91305120700FA00000005000000020000000A0000000100000003115224FD000000030A0000FE1152250908A91303120701020000000108A91305120700FA08A912FD12073D0608A91309120700FE050001000000000500000009000000040000000A000000031207010600000003000000090000000212073CFA0000000208A912FD12073D0608A91309120700FE0500010000000005135D80F700000000000000050000000412073CFE0000000405000100000000050000000A0000000312070106000000030000000912073D0208A91305120700FA08A912FD12073D060000000500000003000000050000000212073CFA0000000208A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000100000000050000000A00000003120701060000000308A91309120700FE00000005000000040000000900000001000000041151E9090000000408A91303120701020000000108A91305120700FA08A912FD0000000A120701060000000300000006000000020000000912073D0208A91305120700FA08A912FD12073D060500010000000005000000080000000312070106000000030500010000000009135D80F700000000050000FE00000009000000080000000212073CFA0000000208A912FD12073D0605000100135D44F70000000A000000000000000A0000000312070106000000030000000900000001000000021151E905000000020A0001061151E8FD0A0000FE1152250908A91303120701020000000108A91309120700FE00000005000000040000000A0000000A000000040000000A00000003115224FD000000030A0000FE1152250908A91303120701020000000108A912FD12073D0608A91309120700FE0500010000000009135D80F700000000050000FA00000009135D45050000000204548A03000000091386AD02000000090000000100000004000000090000000312070106000000030000000912073D0208A912FD12073D0608A91309120700FE0500010000000005135D80F700000000050000FA00000005135D4505000000020CFD9C030000000A000000060000000412073CFE000000040000000A00000003120701060000000308A91309120700FE0500010000000009135D80F700000000050000FA00000009135D45050000000200000009000000040000000900000001000000041151E909000000040000000A0000000100000000"
theorem small_7428988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7428988_left_root small_7428988_left_fuel small_7428988_left_count small_7428988_left_encoded = true := by
  decide +kernel
theorem small_7428988_left_covered : CoveredBy scale carrier boxes small_7428988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7428988_left_root small_7428988_left_fuel small_7428988_left_count small_7428988_left_encoded small_7428988_left_checked

theorem cover_7428988 : CoveredBy scale carrier boxes root_7428988 := by
  apply coveredBy_split_literal root_7428988 small_7428988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7429710 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7428988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7429710
#print axioms cover_7428988

def root_7423112 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423112 : CoveredBy scale carrier boxes root_7423112 := by
  apply coveredBy_split_literal root_7423112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7423113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7428988 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7423113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7428988
#print axioms cover_7423112

def root_7433872 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7433872_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7433872_right_fuel : Nat := 25
def small_7433872_right_count : Nat := 439
def small_7433872_right_encoded : String := "115224F7000000000A0001021151E903000000010A0000FA115225050A0001061151E8FD0A00010800000006115224FF0000000408A912F712073D0008A9130500000009000000060000000012070100000000000000000600000003115224FD000000030A0001081151E8FF08A912F712073D0008A91305120700FA0000000600000002000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91305120700FA000000070000000212073CFA0000000208A912FD12073D0608A912FF12073D0800000006000000040000000700000003120701060000000308A912FF12073D0805000102135D4503000000010CFD9BF70F350D000CFD9C050F34D0FA000000070000000200000006000000000F34D1000000000000000006135D81030CFD9BF70F350D000CFD9C05000000070F350CFA00000002045489FD0000000700000007000000000000000700000001000000040000000700000000120701000000000008A913050000000712073CFA0000000208A912FD00000007120701060000000308A912FF0000000700000007000000021151E905000000020A0001061151E8FD0000000600000003115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A912FD12073D0608A912FF0000000612070108000000040000000700000003120701060000000308A912FF12073D0805000102135D450300000001050000FA0000000600000005000000050000000412070108000000040000000500000000120701000000000008A912FD00000006120701060000000300000005115225030A0000FA115225050A0001061151E8FD0A0001081151E8FF08A912F712073D0008A91303120701020000000108A91305120700FA000000060000000200000006000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91303120701020000000108A91305120700FA08A912FF12073D0805000106135D44FD0CFD9BF70F350D0000000007000000000000000900000003135D80FD000000030CFD9BF7000000070F34D10000000000000000050000000412070108000000040500010600000009000000050000000212073CFA0000000208A912FF12073D0805000106135D44FD0CFD9BF70000000700000009000000030000000700000004120701080000000405000106000000090000000512073D0208A91305120700FA08A912FF000000091207010800000004000000090000000212073CFA0000000208A912FF000000071207010800000004000000090000000100000000120701000000000008A91303120701020000000108A91305120700FA08A912FF00000009000000090000000212073CFA0000000208A912FF000000090000000912073D02000000090000000100000003115224FD000000030A0001081151E8FF08A912F712073D0008A9130312070102000000010000000712073D0208A91305120700FA000000070000000212073CFA0000000208A912FD12073D060000000600000003120701060000000305000108135D44FF0CFD9BF70F350D0000000007000000000000000700000004000000070000000100000000120701000000000008A91303120701020000000108A91305000000070000000712073D02000000070000000100000004115224FF0000000408A912F712073D0008A91303120701020000000108A91305120700FA08A912FD12073D0608A912FF00000007120701080000000400000005000000031207010600000003000000050000000212073CFA000000020000000512073D0208A91305120700FA08A912FD12073D0608A912FF0000000712070108000000040000000700000003000000070000000212073CFA0000000208A912FD000000071207010600000003000000050000000100000000120701000000000008A9130312070102000000010000000512073D0208A91305120700FA08A912FD12073D0608A912FF00000007120701080000000400000005000000031207010600000003000000050000000212073CFA000000020000000500000001000000021151E905000000020A0001061151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912F712073D000000000700000000120701000000000008A913031207010200000001000000050000000600000003115224FD000000030A0001081151E8FF08A912F712073D0008A91303120701020000000108A912FD000000070000000712073D0208A912FD000000061207010600000003050000FA135D810505000108135D44FF00000006000000040000000500000002000000050000000100000000120701000000000008A913030000000700000006000000040000000500000001"
theorem small_7433872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7433872_right_root small_7433872_right_fuel small_7433872_right_count small_7433872_right_encoded = true := by
  decide +kernel
theorem small_7433872_right_covered : CoveredBy scale carrier boxes small_7433872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7433872_right_root small_7433872_right_fuel small_7433872_right_count small_7433872_right_encoded small_7433872_right_checked

theorem cover_7433872 : CoveredBy scale carrier boxes root_7433872 := by
  apply coveredBy_split_literal root_7433872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2798.root small_7433872_right_root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2798.covered
  · exact small_7433872_right_covered
#print axioms cover_7433872

def root_7433871 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7433871 : CoveredBy scale carrier boxes root_7433871 := by
  apply coveredBy_split_literal root_7433871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7433872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2799.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7433872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2799.covered
#print axioms cover_7433871

def root_7423111 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423111 : CoveredBy scale carrier boxes root_7423111 := by
  apply coveredBy_split_literal root_7423111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7423112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7433871 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7423112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7433871
#print axioms cover_7423111

def root_7441829 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7441829_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7441829_left_fuel : Nat := 22
def small_7441829_left_count : Nat := 365
def small_7441829_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115225050A0001061151E907000000030A0000FE1152250908A91305120700FA0000000700000002000000070000000400000007115225070A0000FE1152250908A91305120700FA08A91307120701060000000308A913090000000512073CFE0000000405000100000000050000000912073D0608A913090000000512073CFE0000000405000100135D44F70500010200000005000000090000000000000007000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE050001000000000500000009000000040000000912073D0608A91309120700FE05000100135D44F705000102000000050000000900000000135D80F700000000000000070000000412073CFE000000040000000700000003000000041151E9090000000408A91305120700FA08A9130712070106000000030000000900000007000000020000000700000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A913090000000800000007000000041151E9090000000400000005115225070A0000FE1152250908A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE0500010000000008135D80F70000000005000102135D450300000001050000FA0000000900000008000000080000000412073CFE0000000405000100135D44F70000000900000000135D80F70000000005000102135D450300000001050000FA00000007135D450500000002000000070000000700000003000000041151E909000000040000000700000003115225030A0000FA115225050A0001061151E907000000030A0000FE1152250908A91303120701020000000108A91305120700FA00000009000000020000000812073D0208A91305120700FA08A913090000000512073CFE0000000400000007000000020000000700000001000000041151E9090000000408A91303120701020000000108A91305120700FA000000090000000212073CFA0000000205000100000000090000000912073D0208A91305120700FA05000100135D44F70000000700000000135D80F70000000005000106135D45070000000300000007000000070000000212073CFA000000020000000700000001115225070A0000FE1152250908A91303120701020000000108A91305120700FA08A91307120701060000000300000009000000090000000212073CFA0000000208A913071207010600000003000000090000000912073D0208A91305120700FA08A91307120701060000000308A91309000000050000000912073D0608A91309120700FE000000050000000412073CFE00000004050001000000000900000009000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE0500010000000009000000070000000412073CFE0000000405000100135D44F70CFD9C03000000070F350D02000000070000000100000000000000070000000300000001000000041151E9090000000408A91303120701020000000108A91305120700FA00000009000000020000000912073D0208A91305120700FA08A9130712070106000000030000000912073D0600000007000000030000000212073CFA0000000208A91307120701060000000300000009000000070000000100000003000000021151E905000000020A0001061151E907000000030A0000FE000000071151E9090000000400000007115225070A0000FE1152250908A91303120701020000000108A913071207010600000003000000090000000712073D0208A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE000000080000000412073CFE00000004000000070000000300000001000000041151E9090000000400000007000000030000000100000000"
theorem small_7441829_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7441829_left_root small_7441829_left_fuel small_7441829_left_count small_7441829_left_encoded = true := by
  decide +kernel
theorem small_7441829_left_covered : CoveredBy scale carrier boxes small_7441829_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7441829_left_root small_7441829_left_fuel small_7441829_left_count small_7441829_left_encoded small_7441829_left_checked

theorem cover_7441829 : CoveredBy scale carrier boxes root_7441829 := by
  apply coveredBy_split_literal root_7441829 small_7441829_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2801.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7441829_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2801.covered
#print axioms cover_7441829

def root_7439689 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7439689 : CoveredBy scale carrier boxes root_7439689 := by
  apply coveredBy_split_literal root_7439689 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2800.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7441829 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2800.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7441829
#print axioms cover_7439689

def root_7445647 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7445647 : CoveredBy scale carrier boxes root_7445647 := by
  apply coveredBy_split_literal root_7445647 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2802.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2803.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2802.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2803.covered
#print axioms cover_7445647

def root_7451720 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7451720 : CoveredBy scale carrier boxes root_7451720 := by
  apply coveredBy_split_literal root_7451720 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2804.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2805.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2804.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2805.covered
#print axioms cover_7451720

def root_7445646 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7445646 : CoveredBy scale carrier boxes root_7445646 := by
  apply coveredBy_split_literal root_7445646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7445647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7451720 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7445647
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7451720
#print axioms cover_7445646

def root_7439688 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7439688 : CoveredBy scale carrier boxes root_7439688 := by
  apply coveredBy_split_literal root_7439688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7439689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7445646 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7439689
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7445646
#print axioms cover_7439688

def root_7423110 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7423110 : CoveredBy scale carrier boxes root_7423110 := by
  apply coveredBy_split_literal root_7423110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7423111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7439688 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7423111
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7439688
#print axioms cover_7423110

def root_7302290 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7302290 : CoveredBy scale carrier boxes root_7302290 := by
  apply coveredBy_split_literal root_7302290 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.root_7302291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7423110 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0510.cover_7302291
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7423110
#print axioms cover_7302290

def root_7075994 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075994 : CoveredBy scale carrier boxes root_7075994 := by
  apply coveredBy_split_literal root_7075994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7075995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7302290 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7075995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7302290
#print axioms cover_7075994

def root_7456056 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456056 : CoveredBy scale carrier boxes root_7456056 := by
  apply coveredBy_split_literal root_7456056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2806.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2807.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2806.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2807.covered
#print axioms cover_7456056

def root_7456055 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456055 : CoveredBy scale carrier boxes root_7456055 := by
  apply coveredBy_split_literal root_7456055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7456056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2808.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7456056
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2808.covered
#print axioms cover_7456055

def root_7462119 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7462119 : CoveredBy scale carrier boxes root_7462119 := by
  apply coveredBy_split_literal root_7462119 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2809.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2810.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2809.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2810.covered
#print axioms cover_7462119

def root_7468830 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7468830 : CoveredBy scale carrier boxes root_7468830 := by
  apply coveredBy_split_literal root_7468830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2812.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2813.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2812.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2813.covered
#print axioms cover_7468830

def root_7468824 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7468824_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7468824_left_fuel : Nat := 1
def small_7468824_left_count : Nat := 1
def small_7468824_left_encoded : String := "00000000"
theorem small_7468824_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7468824_left_root small_7468824_left_fuel small_7468824_left_count small_7468824_left_encoded = true := by
  decide +kernel
theorem small_7468824_left_covered : CoveredBy scale carrier boxes small_7468824_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7468824_left_root small_7468824_left_fuel small_7468824_left_count small_7468824_left_encoded small_7468824_left_checked

theorem cover_7468824 : CoveredBy scale carrier boxes root_7468824 := by
  apply coveredBy_split_literal root_7468824 small_7468824_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7468830 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7468824_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7468830
#print axioms cover_7468824

def root_7466382 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7466382 : CoveredBy scale carrier boxes root_7466382 := by
  apply coveredBy_split_literal root_7466382 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2811.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7468824 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2811.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7468824
#print axioms cover_7466382

def root_7462118 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7462118 : CoveredBy scale carrier boxes root_7462118 := by
  apply coveredBy_split_literal root_7462118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7462119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7466382 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7462119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7466382
#print axioms cover_7462118

def root_7456054 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456054 : CoveredBy scale carrier boxes root_7456054 := by
  apply coveredBy_split_literal root_7456054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7456055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.root_7462118 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7456055
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511.cover_7462118
#print axioms cover_7456054

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0511
