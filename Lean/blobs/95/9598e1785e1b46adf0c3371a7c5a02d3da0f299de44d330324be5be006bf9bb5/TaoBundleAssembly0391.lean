import TaoBundleAssembly0381
import TaoBundleAssembly0390
import TaoBundleChunkBatch0519
import TaoBundleChunkBatch0520
import TaoBundleChunkBatch0521
import TaoBundleChunkBatch0522
import TaoBundleChunkBatch0523
import TaoBundleChunkBatch0525
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391
def root_5547767 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5547767_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5547767_left_fuel : Nat := 26
def small_5547767_left_count : Nat := 249
def small_5547767_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000091152250908A912F912073CF80000000108A91305120700FA08A91309120701080000000405000100135D44F705000106135D44FD0CFD9BF90000000900000007000000030000000700000000135D80F70000000005000106135D44FD0CFD9BF90F350CF80000000104548A05138670FA04548A09000000070000000900000002000000090F34D0F8000000070000000100000003135D80FD000000030CFD9BF90000000900000007000000090000000212073CFA0000000208A91309120701080000000405000100135D44F70000000900000000135D80F70000000005000106135D44FD0CFD9BF9000000090F34D0F80000000900000001000000030000000900000009120700F808A91305120700FA08A9130900000007000000050000000212073CFA0000000208A9130912070108000000040500010000000005135D80F7000000000500010600000005135D80FD00000003045489F9000000090000000500000005000000010000000400000003115224FD000000030A0001081151E90900000004000000091152250908A912F912073CF80000000108A91305120700FA000000090000000200000009120700F808A91305120700FA08A912FD12073D0608A9130912070108000000040500010000000007135D80F700000000045489F90000000900000007000000090000000312070106000000030000000900000002000000090000000100000004000000021151E905000000020A0001061151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A9130912070108000000040000000900000009120700F808A9130912070108000000040000000900000005000000010000000400000003000000091151E8F90A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000091152250908A91305120700FA08A91309120701080000000405000100135D44F7050000F800000009135D44F9000000090000000100000000135D80F700000000050000F8135D80F90000000105000106135D44FD04548A05138670FA04548A09138671080000000407800100128A40F70000000900000000128A7CF7000000000000000A0000000900000002000000090000000300000009135D44F905000106135D44FD0000000A000000030000000900000001000000090000000212073CFA0000000208A9130912070108000000040500010000000009135D80F700000000050000F8000000090000000A00000009000000040000000300000009000000021151E90500000002000000090000000100000000"
theorem small_5547767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5547767_left_root small_5547767_left_fuel small_5547767_left_count small_5547767_left_encoded = true := by
  decide +kernel
theorem small_5547767_left_covered : CoveredBy scale carrier boxes small_5547767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5547767_left_root small_5547767_left_fuel small_5547767_left_count small_5547767_left_encoded small_5547767_left_checked

theorem cover_5547767 : CoveredBy scale carrier boxes root_5547767 := by
  apply coveredBy_split_literal root_5547767 small_5547767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5548297 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5547767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5548297
#print axioms cover_5547767

def root_5544687 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5544687 : CoveredBy scale carrier boxes root_5544687 := by
  apply coveredBy_split_literal root_5544687 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2077.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5547767 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2077.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5547767
#print axioms cover_5544687

def root_5542871 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5542871 : CoveredBy scale carrier boxes root_5542871 := by
  apply coveredBy_split_literal root_5542871 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2076.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5544687 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2076.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5544687
#print axioms cover_5542871

def root_5555053 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5555053_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5555053_left_fuel : Nat := 22
def small_5555053_left_count : Nat := 477
def small_5555053_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0000FA115225050A0001061151E907000000030A0001081151E8FF08A912F912073CF80000000108A91305120700FA0000000500000002000000050000000500000004115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF12073D080000000500000004000000050000000212073CFA0000000208A912FF12073D08000000050000000400000005120700F80000000500000001115225070A0001081151E8FF08A912F912073CF80000000108A91305120700FA000000080000000212073CFA0000000208A9130712070106000000030000000812073D0605000100135D44F70500010800000005135D80FF000000040CFD9BF9000000090000000500000000135D80F70000000005000108135D44FF0CFD9BF9000000090000000500000004135D80FF000000040CFD9BF90F350CF800000001000000080000000800000003120700F808A91305120700FA0000000800000002000000080000000100000004115224FF0000000408A912F912073CF80000000108A91305120700FA000000080000000212073CFA0000000208A9130712070106000000030000000812073D0608A912FF12073D0805000100135D44F70CFD9BF9000000090F34D0F8000000050000000100000000135D80F7000000000CFD9BF90F350CF8000000010000000800000008000000040000000800000003120700F8000000080000000100000003000000021151E905000000020A0001061151E907000000030A00010800000005115224FF0000000408A912F912073CF80000000108A912FF12073D080500010000000005135D80F700000000050000FA00000005135D4505000000020000000700000004120701080000000400000006120700F80000000500000001115225070A0001081151E8FF08A912F912073CF80000000108A9130712070106000000030000000912073D0605000100135D44F70000000900000000135D80F700000000050000FA135D81050500010800000005135D80FF000000040CFD9BF9000000090F34D0F8000000050000000100000002135D4505000000020000000700000003120700F808A91307120701060000000300000008000000050000000100000004115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000912073D0608A912FF12073D0805000100135D44F7050000FA00000009135D4505000000020000000900000000135D80F700000000050000FA135D81050CFD9BF9000000090F34D0F8000000080000000100000002135D4505000000020CFD9BF9000000090F34D0F80000000700000001000000040000000900000003120700F808A9130712070106000000030000000812073D0608A912FF12073D0805000100000000050000000700000004000000080000000300000001000000031151E8F90A0000FA115225050A0001061151E907000000030A0001081151E8FF08A91305120700FA0500010000000009000000090000000212073CFA000000020500010000000005135D80F700000000050000F8000000050000000900000004115224FF0000000408A91305120700FA08A912FF12073D0805000100135D44F7050000F8135D80F9000000010500010600000005000000060000000600000000135D80F700000000050000F8135D80F900000001000000080000000600000004000000060000000212073CFA0000000208A912FF12073D0805000100135D44F70000000600000000135D80F700000000050000F8135D80F9000000010500010600000005135D81070CFD9C050F34D0FA00000005000000020F350CFA000000020000000600000003000000060000000400000006115225070A0001081151E8FF08A91305120700FA08A9130700000008000000090000000212073CFA0000000208A9130712070106000000030000000912073D060500010000000009000000090000000300000004115224FF0000000408A91305120700FA08A9130712070106000000030000000812073D0608A912FF12073D0805000100135D44F70000000800000000000000080000000400000008000000030000000212073CFA0000000208A9130712070106000000030000000912073D0608A912FF12073D0805000100135D44F7050000F8000000090000000900000000135D80F700000000050000F8135D80F9000000010CFD9C050000000800000009135D44F90CFD9C050F34D0FA0000000800000002000000090000000100000004000000090000000300000003000000021151E905000000020A0001061151E907000000030A0001081151E8FF0500010000000006135D80F700000000050000F800000006000000060000000400000006115225070A0001081151E8FF08A9130712070106000000030000000912073D060500010000000009000000090000000300000004115224FF0000000408A9130712070106000000030000000912073D0608A912FF12073D0805000100135D44F70000000900000000135D80F700000000050000F8135D80F900000001050000FA00000009135D45050000000200000006135D44F90000000600000001000000040000000600000003000000030000000100000000"
theorem small_5555053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5555053_left_root small_5555053_left_fuel small_5555053_left_count small_5555053_left_encoded = true := by
  decide +kernel
theorem small_5555053_left_covered : CoveredBy scale carrier boxes small_5555053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5555053_left_root small_5555053_left_fuel small_5555053_left_count small_5555053_left_encoded small_5555053_left_checked

theorem cover_5555053 : CoveredBy scale carrier boxes root_5555053 := by
  apply coveredBy_split_literal root_5555053 small_5555053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2081.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5555053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2081.covered
#print axioms cover_5555053

def root_5555052 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5555052 : CoveredBy scale carrier boxes root_5555052 := by
  apply coveredBy_split_literal root_5555052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5555053 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2082.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5555053
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2082.covered
#print axioms cover_5555052

def root_5553228 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5553228 : CoveredBy scale carrier boxes root_5553228 := by
  apply coveredBy_split_literal root_5553228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2080.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5555052 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2080.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5555052
#print axioms cover_5553228

def root_5542870 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5542870 : CoveredBy scale carrier boxes root_5542870 := by
  apply coveredBy_split_literal root_5542870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5542871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5553228 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5542871
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5553228
#print axioms cover_5542870

def root_5400062 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5400062 : CoveredBy scale carrier boxes root_5400062 := by
  apply coveredBy_split_literal root_5400062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.root_5400063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5542870 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0390.cover_5400063
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5542870
#print axioms cover_5400062

def root_5076040 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076040 : CoveredBy scale carrier boxes root_5076040 := by
  apply coveredBy_split_literal root_5076040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.root_5076041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5400062 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0381.cover_5076041
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5400062
#print axioms cover_5076040

def root_5561894 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561894 : CoveredBy scale carrier boxes root_5561894 := by
  apply coveredBy_split_literal root_5561894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2083.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2084.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2083.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2084.covered
#print axioms cover_5561894

def root_5561893 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561893 : CoveredBy scale carrier boxes root_5561893 := by
  apply coveredBy_split_literal root_5561893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5561894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2085.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5561894
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2085.covered
#print axioms cover_5561893

def root_5561892 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561892 : CoveredBy scale carrier boxes root_5561892 := by
  apply coveredBy_split_literal root_5561892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5561893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2086.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5561893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2086.covered
#print axioms cover_5561892

def root_5570198 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5570198 : CoveredBy scale carrier boxes root_5570198 := by
  apply coveredBy_split_literal root_5570198 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2087.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2088.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2087.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2088.covered
#print axioms cover_5570198

def root_5574882 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5574882_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5574882_left_fuel : Nat := 21
def small_5574882_left_count : Nat := 255
def small_5574882_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF08A912F912073CF80000000108A913070000000500000006120700F808A91307000000070000000A0000000100000004115224FF0000000408A912F912073CF80000000108A9130700000009000000060000000A000000031151E907000000030A000108000000060000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A912F912073CF80000000108A912FB12073D0408A913070000000912073CFC000000030500010000000006135D80F70000000005000108135D44FF0CFD9BF90000000600000009000000040000000600000002120701040000000200000009120700F8000000090000000100000004115224FF0000000408A912F912073CF80000000108A912FB12073D0408A913070000000912073CFC000000030000000600000002120701040000000208A91307120700FC000000090000000300000009120700F808A912FB12073D040000000900000002120701040000000208A91307120700FC0000000A000000030000000900000001000000031151E907000000030A0001081151E8FF08A912F900000006120700F808A912FB00000006000000090000000100000004115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FF000000061207010800000004000000060000000200000006120700F800000006000000011151E8F90A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000400000006000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A912FF0000000612070108000000040000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073D0408A91307000000050000000600000002120701040000000208A91307000000090000000800000004115224FF0000000408A912FB12073D0408A91307120700FC000000060000000312073CFC0000000308A912FF0000000612070108000000040000000900000002120701040000000208A913070000000912073CFC0000000308A912FF0000000600000009000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A912FB12073D0408A912FF12073D0805000100135D44F7050000F800000006135D44F90000000600000001000000000000000600000004120701080000000405000100135D44F70000000A00000000135D80F700000000050000F800000006135D44F9050000FC00000006000000050000000100000002120701040000000208A912FF0000000612070108000000040500010000000009000000060000000100000000"
theorem small_5574882_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5574882_left_root small_5574882_left_fuel small_5574882_left_count small_5574882_left_encoded = true := by
  decide +kernel
theorem small_5574882_left_covered : CoveredBy scale carrier boxes small_5574882_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5574882_left_root small_5574882_left_fuel small_5574882_left_count small_5574882_left_encoded small_5574882_left_checked

theorem cover_5574882 : CoveredBy scale carrier boxes root_5574882 := by
  apply coveredBy_split_literal root_5574882 small_5574882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2089.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5574882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2089.covered
#print axioms cover_5574882

def root_5574881 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5574881 : CoveredBy scale carrier boxes root_5574881 := by
  apply coveredBy_split_literal root_5574881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5574882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2090.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5574882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2090.covered
#print axioms cover_5574881

def root_5570197 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5570197 : CoveredBy scale carrier boxes root_5570197 := by
  apply coveredBy_split_literal root_5570197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5570198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5574881 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5570198
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5574881
#print axioms cover_5570197

def root_5561891 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561891 : CoveredBy scale carrier boxes root_5561891 := by
  apply coveredBy_split_literal root_5561891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5561892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5570197 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5561892
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5570197
#print axioms cover_5561891

def root_5580504 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5580504 : CoveredBy scale carrier boxes root_5580504 := by
  apply coveredBy_split_literal root_5580504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2091.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2092.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2091.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2092.covered
#print axioms cover_5580504

def root_5580498 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580498_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580498_left_fuel : Nat := 1
def small_5580498_left_count : Nat := 1
def small_5580498_left_encoded : String := "00000002"
theorem small_5580498_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580498_left_root small_5580498_left_fuel small_5580498_left_count small_5580498_left_encoded = true := by
  decide +kernel
theorem small_5580498_left_covered : CoveredBy scale carrier boxes small_5580498_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580498_left_root small_5580498_left_fuel small_5580498_left_count small_5580498_left_encoded small_5580498_left_checked

theorem cover_5580498 : CoveredBy scale carrier boxes root_5580498 := by
  apply coveredBy_split_literal root_5580498 small_5580498_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5580504 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5580498_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5580504
#print axioms cover_5580498

def root_5580188 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580188_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580188_left_fuel : Nat := 22
def small_5580188_left_count : Nat := 149
def small_5580188_left_encoded : String := "1151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FD00000005120701060000000308A912FF0000000500000006120700F808A912FD12073D0608A912FF00000005120700FE05000100135D44F705000104135D44FB045489F900000005138670F80CFD9BFD00000005000000060000000100000002135D80FB00000002045489F9000000050000000600000000135D80F70000000005000104135D44FB045489F900000005138670F80CFD9BFD000000050F34D10600000003045489FF00000005000000060000000100000002135D80FB00000002045489F91386ACF8000000010CFD9BFD0000000500000006138670F80CFD9BFD0F350D06045489FF0000000500000006000000030F34D1060000000300000006000000010000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F705000104135D44FB045489F900000005138670F8045489FD00000005000000060000000100000002135D80FB00000002045489F9000000050000000600000000135D80F70000000005000104135D44FB045489F900000005138670F8045489FD0000000513867106000000030CFD9BFF00000005000000060000000100000002135D80FB00000002045489F91386ACF800000001045489FD0000000500000006138670F8045489FD1386AD060CFD9BFF000000050F34D0FE00000006000000040000000313867106000000030000000600000001120700FE0000000600000004000000011151E8FF000000050000000400000002"
theorem small_5580188_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580188_left_root small_5580188_left_fuel small_5580188_left_count small_5580188_left_encoded = true := by
  decide +kernel
theorem small_5580188_left_covered : CoveredBy scale carrier boxes small_5580188_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580188_left_root small_5580188_left_fuel small_5580188_left_count small_5580188_left_encoded small_5580188_left_checked

theorem cover_5580188 : CoveredBy scale carrier boxes root_5580188 := by
  apply coveredBy_split_literal root_5580188 small_5580188_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5580498 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5580188_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5580498
#print axioms cover_5580188

def root_5580182 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580182_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580182_left_fuel : Nat := 1
def small_5580182_left_count : Nat := 1
def small_5580182_left_encoded : String := "00000001"
theorem small_5580182_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580182_left_root small_5580182_left_fuel small_5580182_left_count small_5580182_left_encoded = true := by
  decide +kernel
theorem small_5580182_left_covered : CoveredBy scale carrier boxes small_5580182_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580182_left_root small_5580182_left_fuel small_5580182_left_count small_5580182_left_encoded small_5580182_left_checked

theorem cover_5580182 : CoveredBy scale carrier boxes root_5580182 := by
  apply coveredBy_split_literal root_5580182 small_5580182_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5580188 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5580182_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5580188
#print axioms cover_5580182

def root_5580181 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580181_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580181_right_fuel : Nat := 15
def small_5580181_right_count : Nat := 41
def small_5580181_right_encoded : String := "1151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD000000050000000600000002120701040000000208A912FD12073D0608A912FF00000005120700FE05000100000000060000000500000004000000031207010600000003000000061151E8FF000000050000000400000001"
theorem small_5580181_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580181_right_root small_5580181_right_fuel small_5580181_right_count small_5580181_right_encoded = true := by
  decide +kernel
theorem small_5580181_right_covered : CoveredBy scale carrier boxes small_5580181_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580181_right_root small_5580181_right_fuel small_5580181_right_count small_5580181_right_encoded small_5580181_right_checked

theorem cover_5580181 : CoveredBy scale carrier boxes root_5580181 := by
  apply coveredBy_split_literal root_5580181 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5580182 small_5580181_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5580182
  · exact small_5580181_right_covered
#print axioms cover_5580181

def root_5580176 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580176_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5580176_right_fuel : Nat := 1
def small_5580176_right_count : Nat := 1
def small_5580176_right_encoded : String := "00000000"
theorem small_5580176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5580176_right_root small_5580176_right_fuel small_5580176_right_count small_5580176_right_encoded = true := by
  decide +kernel
theorem small_5580176_right_covered : CoveredBy scale carrier boxes small_5580176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5580176_right_root small_5580176_right_fuel small_5580176_right_count small_5580176_right_encoded small_5580176_right_checked

theorem cover_5580176 : CoveredBy scale carrier boxes root_5580176 := by
  apply coveredBy_split_literal root_5580176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5580181 small_5580176_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5580181
  · exact small_5580176_right_covered
#print axioms cover_5580176

def root_5597076 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5597076_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5597076_right_fuel : Nat := 1
def small_5597076_right_count : Nat := 1
def small_5597076_right_encoded : String := "00000004"
theorem small_5597076_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5597076_right_root small_5597076_right_fuel small_5597076_right_count small_5597076_right_encoded = true := by
  decide +kernel
theorem small_5597076_right_covered : CoveredBy scale carrier boxes small_5597076_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5597076_right_root small_5597076_right_fuel small_5597076_right_count small_5597076_right_encoded small_5597076_right_checked

theorem cover_5597076 : CoveredBy scale carrier boxes root_5597076 := by
  apply coveredBy_split_literal root_5597076 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2098.root small_5597076_right_root coord4 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2098.covered
  · exact small_5597076_right_covered
#print axioms cover_5597076

def root_5596590 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596590_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596590_left_fuel : Nat := 19
def small_5596590_left_count : Nat := 229
def small_5596590_left_encoded : String := "12EA94FE000000040DE7CA000E5FD8F70DE7CA060E5FD8FD0569AC39134110F8000000010115233B0000000513F85904000000020793F0BF00000005128220FE0D4128800EFA10F7000000050000000000000005000000041340D4F80115233B13F895040793F0BF00000005128220FE0D4128800EFA10F7000000050000000000000009000000040000000213F85904000000020793F0BF12825CFE000000040D4128800EFA10F7000000050000000000000005128220FE0D4128800EFA10F70D4128860EFA10FD00000008000000030EFA4CFD0000000300000007000000000EFA4CF7000000000D412886000000090EFA4CFD0000000304DF1B191365F0F80000000100000005000000090000000400000001000000030E6014FD000000030569AC39134110F8000000010115233B0000000513F85904000000020793F0BF00000005128220FE0DAED87D0E9661060D4128800EFA10F7000000050000000000000005000000030E962506000000030D4128800000000A00000005000000041340D4F80115233B13F895040793F0BF00000005128220FE0DAED87D0E9661060D4128800000000700000005000000030E9625060000000300000007000000040000000213F85904000000020793F0BF0000000A128220FE0DAED87D0E9661060D412880000000070EFA4CF70000000004DF1B191365F0F800000001008A921B000000050000000A00000007000000030E96250600000003000000070000000400000001000000000E6014F7000000000DE7CA060E5FD8FD0569AC39134110F8000000010115233B0000000513F85904000000020793F0BF00000005128220FE0DAED8770E9661000D412886000000090000000500000000000000090000000400000009000000030E6014FD000000030569AC39134110F8000000010115233B13F895040793F0BF00000005128220FE0DAED8770000000500000009000000040000000213F85904000000020793F0BF12825CFE0000000400000005128220FE0DAED8770E9661000DAED87D000000050E9625060000000300000005000000000E962500000000000DAED87D000000050E9625060000000305F43D590000000500000009000000041340D4F80115233B0000000913F85904000000020793F0BF00000009128220FE0DAED8770E9661000DAED87D0E96610604DF1B191365F0F8000000010000000900000009000000030E962506000000030000000A000000000E96250000000000000000090000000400000001"
theorem small_5596590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5596590_left_root small_5596590_left_fuel small_5596590_left_count small_5596590_left_encoded = true := by
  decide +kernel
theorem small_5596590_left_covered : CoveredBy scale carrier boxes small_5596590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5596590_left_root small_5596590_left_fuel small_5596590_left_count small_5596590_left_encoded small_5596590_left_checked

theorem cover_5596590 : CoveredBy scale carrier boxes root_5596590 := by
  apply coveredBy_split_literal root_5596590 small_5596590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5597076 coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_5596590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5597076
#print axioms cover_5596590

def root_5596584 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596584_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5596584_left_fuel : Nat := 1
def small_5596584_left_count : Nat := 1
def small_5596584_left_encoded : String := "00000002"
theorem small_5596584_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5596584_left_root small_5596584_left_fuel small_5596584_left_count small_5596584_left_encoded = true := by
  decide +kernel
theorem small_5596584_left_covered : CoveredBy scale carrier boxes small_5596584_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5596584_left_root small_5596584_left_fuel small_5596584_left_count small_5596584_left_encoded small_5596584_left_checked

theorem cover_5596584 : CoveredBy scale carrier boxes root_5596584 := by
  apply coveredBy_split_literal root_5596584 small_5596584_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5596590 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5596584_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5596590
#print axioms cover_5596584

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391
