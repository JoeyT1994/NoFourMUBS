import TaoBundleAssembly0391
import TaoBundleAssembly0395
import TaoBundleAssembly0405
import TaoBundleAssembly0407
import TaoBundleChunkBatch0549
import TaoBundleChunkBatch0550
import TaoBundleChunkBatch0551
import TaoBundleChunkBatch0552
import TaoBundleChunkBatch0553
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408
def root_5794849 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5794849_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5794849_left_fuel : Nat := 27
def small_5794849_left_count : Nat := 293
def small_5794849_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F912073CF80000000108A912FF000000060000000700000006000000001207010000000000000000061151E8FF000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912F912073CF80000000108A912FD12073D0608A912FF12073CFE0000000405000104135D4505000000020CFD9BF7000000090F34D1000000000000000006135D81050CFD9BF70F350D000CFD9BF9000000090F34D0F80CFD9BFD000000060F34D106000000030000000800000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD000000060F34D10600000003000000090000000600000002120700FE000000090000000400000003120701060000000300000009120700F808A912FD12073D0608A912FF00000006120700FE000000050000000400000003120701060000000308A912FF0000000A000000050000000100000000120701000000000008A912F912073CF80000000108A912FD12073D0608A912FF00000006120700FE000000070000000400000003120701060000000308A912FF12073CFE0000000405000104135D450500000002045489F71386AD000CFD9BF9000000090F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FD0000000613867106000000030000000900000006135D8105045489F71386AD000CFD9BF90F350CF800000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A86F8000000060F8750F9000000090000000100000009000000031386710600000003000000090F34D0F8045489FD000000060000000A000000010000000013867100000000000CFD9BF90F350CF800000001045489FD1386AD060CFD9BFF00000006000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A86F80F878CF9000000010C9A86FE00000006000000060F8750F90C9A86FE000000070000000700000001000000070F34D0F8045489FD0000000613867106000000030CFD9BFF00000006000000050000000100000002120700FE0000000900000004120700F808A912FD00000006120701060000000308A912FF0000000600000005000000011151E8FF08A912F712073D0008A912F912073CF80000000108A912FD12073D0605000104135D450500000002050000FE000000060000000A135D8105050000FE135D80FF000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD000000060000000A00000006000000000F34D1000000000000000006135D44FF0CFD9BF70000000A0F34D100000000000000000600000004000000020000000312070106000000030000000A120700F80000000A0000000100000000120701000000000008A912F912073CF80000000108A912FD00000006120701060000000305000104135D450500000002050000FE000000060000000A135D8105050000FE135D80FF00000004045489F70000000A13867100000000000CFD9BF90F350CF800000001045489FD000000060000000A000000060000000A000000020000000600000004"
theorem small_5794849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5794849_left_root small_5794849_left_fuel small_5794849_left_count small_5794849_left_encoded = true := by
  decide +kernel
theorem small_5794849_left_covered : CoveredBy scale carrier boxes small_5794849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5794849_left_root small_5794849_left_fuel small_5794849_left_count small_5794849_left_encoded small_5794849_left_checked

theorem cover_5794849 : CoveredBy scale carrier boxes root_5794849 := by
  apply coveredBy_split_literal root_5794849 small_5794849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.root_5795471 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5794849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0407.cover_5795471
#print axioms cover_5794849

def root_5794843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5794843_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5794843_left_fuel : Nat := 1
def small_5794843_left_count : Nat := 1
def small_5794843_left_encoded : String := "00000001"
theorem small_5794843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5794843_left_root small_5794843_left_fuel small_5794843_left_count small_5794843_left_encoded = true := by
  decide +kernel
theorem small_5794843_left_covered : CoveredBy scale carrier boxes small_5794843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5794843_left_root small_5794843_left_fuel small_5794843_left_count small_5794843_left_encoded small_5794843_left_checked

theorem cover_5794843 : CoveredBy scale carrier boxes root_5794843 := by
  apply coveredBy_split_literal root_5794843 small_5794843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5794849 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5794843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5794849
#print axioms cover_5794843

def root_5794842 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5794842 : CoveredBy scale carrier boxes root_5794842 := by
  apply coveredBy_split_literal root_5794842 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5794843 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2193.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5794843
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2193.covered
#print axioms cover_5794842

def root_5794836 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5794836_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5794836_left_fuel : Nat := 1
def small_5794836_left_count : Nat := 1
def small_5794836_left_encoded : String := "00000000"
theorem small_5794836_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5794836_left_root small_5794836_left_fuel small_5794836_left_count small_5794836_left_encoded = true := by
  decide +kernel
theorem small_5794836_left_covered : CoveredBy scale carrier boxes small_5794836_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5794836_left_root small_5794836_left_fuel small_5794836_left_count small_5794836_left_encoded small_5794836_left_checked

theorem cover_5794836 : CoveredBy scale carrier boxes root_5794836 := by
  apply coveredBy_split_literal root_5794836 small_5794836_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5794842 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5794836_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5794842
#print axioms cover_5794836

def root_5790932 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5790932 : CoveredBy scale carrier boxes root_5790932 := by
  apply coveredBy_split_literal root_5790932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5790933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5794836 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5790933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5794836
#print axioms cover_5790932

def root_5790931 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5790931 : CoveredBy scale carrier boxes root_5790931 := by
  apply coveredBy_split_literal root_5790931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5790932 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2194.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5790932
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2194.covered
#print axioms cover_5790931

def root_5848335 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5848335 : CoveredBy scale carrier boxes root_5848335 := by
  apply coveredBy_split_literal root_5848335 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2195.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2196.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2195.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2196.covered
#print axioms cover_5848335

def root_5848334 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5848334 : CoveredBy scale carrier boxes root_5848334 := by
  apply coveredBy_split_literal root_5848334 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5848335 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2197.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5848335
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2197.covered
#print axioms cover_5848334

def root_5790930 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5790930 : CoveredBy scale carrier boxes root_5790930 := by
  apply coveredBy_split_literal root_5790930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5790931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5848334 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5790931
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5848334
#print axioms cover_5790930

def root_5854967 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5854967 : CoveredBy scale carrier boxes root_5854967 := by
  apply coveredBy_split_literal root_5854967 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2198.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2199.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2198.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2199.covered
#print axioms cover_5854967

def root_5854961 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5854961_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5854961_left_fuel : Nat := 1
def small_5854961_left_count : Nat := 1
def small_5854961_left_encoded : String := "00000000"
theorem small_5854961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5854961_left_root small_5854961_left_fuel small_5854961_left_count small_5854961_left_encoded = true := by
  decide +kernel
theorem small_5854961_left_covered : CoveredBy scale carrier boxes small_5854961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5854961_left_root small_5854961_left_fuel small_5854961_left_count small_5854961_left_encoded small_5854961_left_checked

theorem cover_5854961 : CoveredBy scale carrier boxes root_5854961 := by
  apply coveredBy_split_literal root_5854961 small_5854961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5854967 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5854961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5854967
#print axioms cover_5854961

def root_5854345 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5854345_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5854345_left_fuel : Nat := 22
def small_5854345_left_count : Nat := 283
def small_5854345_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E905000000020A0001061151E9070000000300000005115225070A0000FE115224FF000000040000000A1151E8FF08A912F90000000A120700F808A913070000000A00000005000000010000000400000003115225050A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FF00000008120700FE000000050000000412073D040000000500000002120700F800000005000000011151E8FF08A912F912073CF80000000108A9130512070104000000020000000812073D0405000100135D44F705000106000000080000000A00000000135D80F70000000005000106135D450700000003000000080000000A00000002120700F808A91305120701040000000200000008000000050000000100000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A91305120701040000000208A91307120701060000000308A912FF0000000A120700FE000000090000000412073D0608A912FF0000000A120700FE050001000000000A135D80F7000000000CFD9BF90F350CF8000000010000000A0000000A000000040000000312073D0408A9130712070106000000030000000912073D060000000A0000000300000002120700F808A91305120701040000000208A91307120701060000000308A912FF0000000A120700FE0000000A0000000412073D0608A912FF12073CFE0000000405000100135D44F7045489F90000000A0000000500000000135D80F700000000045489F90000000A0000000A120700FE00000005000000040000000312073D0408A9130712070106000000030000000A12073D06000000050000000300000002000000011151E8FF08A912F912073CF80000000108A91305120701040000000208A913070000000A12073D0605000100000000060000000A000000030000000A120700F808A91305120701040000000208A9130712070106000000030000000A12073D0605000100135D44F70000000700000000135D80F700000000050000FE00000007000000070000000312073D0408A913070000000A12073D0605000100135D44F70000000700000000000000070000000300000002000000010000000400000003000000021151E8F90A0001041151E905000000020A0001061151E907000000030000000A115225070A0000FE000000090000000A00000003115225050A0001061151E907000000030A0000FE115224FF0000000408A91305120701040000000208A912FF00000008120700FE00000008000000040000000A1151E8FF0000000A00000004115225070A0000FE115224FF0000000408A91305120701040000000208A91307120701060000000308A912FF000000060000000612073D0608A912FF0000000A120700FE050001000000000900000009000000040000000312073D0408A9130712070106000000030000000912073D060000000A00000003000000021151E8FF0000000A0000000400000003000000020000000100000000"
theorem small_5854345_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5854345_left_root small_5854345_left_fuel small_5854345_left_count small_5854345_left_encoded = true := by
  decide +kernel
theorem small_5854345_left_covered : CoveredBy scale carrier boxes small_5854345_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5854345_left_root small_5854345_left_fuel small_5854345_left_count small_5854345_left_encoded small_5854345_left_checked

theorem cover_5854345 : CoveredBy scale carrier boxes root_5854345 := by
  apply coveredBy_split_literal root_5854345 small_5854345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5854961 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5854345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5854961
#print axioms cover_5854345

def root_5860086 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5860086 : CoveredBy scale carrier boxes root_5860086 := by
  apply coveredBy_split_literal root_5860086 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2200.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2201.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2200.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2201.covered
#print axioms cover_5860086

def root_5860081 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5860081_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5860081_right_fuel : Nat := 1
def small_5860081_right_count : Nat := 1
def small_5860081_right_encoded : String := "00000002"
theorem small_5860081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5860081_right_root small_5860081_right_fuel small_5860081_right_count small_5860081_right_encoded = true := by
  decide +kernel
theorem small_5860081_right_covered : CoveredBy scale carrier boxes small_5860081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5860081_right_root small_5860081_right_fuel small_5860081_right_count small_5860081_right_encoded small_5860081_right_checked

theorem cover_5860081 : CoveredBy scale carrier boxes root_5860081 := by
  apply coveredBy_split_literal root_5860081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5860086 small_5860081_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5860086
  · exact small_5860081_right_covered
#print axioms cover_5860081

def root_5859579 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859579_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859579_left_fuel : Nat := 22
def small_5859579_left_count : Nat := 237
def small_5859579_left_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE1152250908A912F712073D0008A912F912073CF80000000108A91309120700FE000000050000000400000009120700F808A91309120700FE0000000500000004000000090000000100000000120701000000000008A912F912073CF80000000108A91309120700FE0500010400000005135D81050500010600000005135D8107045489F70000000513867100000000000000000900000003000000020000000412073CFE0000000405000104135D45050000000200000009135D810505000106135D450700000003045489F70000000913867100000000000CFD9BF9000000090F34D0F80CFD9C090000000A00000009000000010000000900000002120700F808A913090000000A12073CFE0000000405000104135D45050000000205000106135D450700000003045489F7000000090000000A00000009135D810505000106135D450700000003045489F71386AD00045489F900000009138670F80CFD9C090000000A0000000900000001000000001386710000000000045489F91386ACF8000000010CFD9C090000000A000000090000000A135D8107045489F7000000091386710000000000045489F9000000090000000A000000030000000200000001000000041151E9090000000408A912F712073D0008A912F900000009120700F8000000090000000100000000120701000000000008A912F912073CF8000000010500010400000009135D810505000106135D450700000003050000FE00000009000000060000000600000002120700F805000104135D45050000000205000106135D450700000003050000FE00000009135D4509000000040000000600000009135D810505000106135D450700000003050000FE135D8109045489F7000000091386710000000000045489F900000006138670F807800104128A41050000000200000009128A7D0500000006000000020000000100000004135D45090000000400000006000000090000000200000001115225070A0000FE1152250908A912F712073D0008A912F900000009120700F8000000090000000100000000120701000000000008A912F912073CF80000000108A9130712070106000000030000000912073D0608A91309120700FE00000009000000040000000900000003120700F808A9130712070106000000030000000912073D0608A91309120700FE0500010400000009135D8105045489F7000000090000000A0000000200000004000000090000000300000001000000041151E909000000040000000900000003"
theorem small_5859579_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5859579_left_root small_5859579_left_fuel small_5859579_left_count small_5859579_left_encoded = true := by
  decide +kernel
theorem small_5859579_left_covered : CoveredBy scale carrier boxes small_5859579_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5859579_left_root small_5859579_left_fuel small_5859579_left_count small_5859579_left_encoded small_5859579_left_checked

theorem cover_5859579 : CoveredBy scale carrier boxes root_5859579 := by
  apply coveredBy_split_literal root_5859579 small_5859579_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5860081 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5859579_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5860081
#print axioms cover_5859579

def root_5859573 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859573_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859573_left_fuel : Nat := 1
def small_5859573_left_count : Nat := 1
def small_5859573_left_encoded : String := "00000001"
theorem small_5859573_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5859573_left_root small_5859573_left_fuel small_5859573_left_count small_5859573_left_encoded = true := by
  decide +kernel
theorem small_5859573_left_covered : CoveredBy scale carrier boxes small_5859573_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5859573_left_root small_5859573_left_fuel small_5859573_left_count small_5859573_left_encoded small_5859573_left_checked

theorem cover_5859573 : CoveredBy scale carrier boxes root_5859573 := by
  apply coveredBy_split_literal root_5859573 small_5859573_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5859579 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5859573_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5859579
#print axioms cover_5859573

def root_5859572 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5859572 : CoveredBy scale carrier boxes root_5859572 := by
  apply coveredBy_split_literal root_5859572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5859573 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2202.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5859573
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2202.covered
#print axioms cover_5859572

def root_5859566 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859566_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859566_left_fuel : Nat := 1
def small_5859566_left_count : Nat := 1
def small_5859566_left_encoded : String := "00000000"
theorem small_5859566_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5859566_left_root small_5859566_left_fuel small_5859566_left_count small_5859566_left_encoded = true := by
  decide +kernel
theorem small_5859566_left_covered : CoveredBy scale carrier boxes small_5859566_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5859566_left_root small_5859566_left_fuel small_5859566_left_count small_5859566_left_encoded small_5859566_left_checked

theorem cover_5859566 : CoveredBy scale carrier boxes root_5859566 := by
  apply coveredBy_split_literal root_5859566 small_5859566_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5859572 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5859566_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5859572
#print axioms cover_5859566

def root_5859232 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859232_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5859232_left_fuel : Nat := 20
def small_5859232_left_count : Nat := 153
def small_5859232_left_encoded : String := "1151E8F70A0000F8115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE000000091151E909000000040000000900000009115225050A0001061151E907000000030A0000FE1152250908A912F912073CF80000000108A913050000000512073D040000000500000002120700F808A913050000000512073D04000000050000000200000001000000041151E9090000000408A912F912073CF80000000108A9130512070104000000020500010000000007135D80F70000000005000106135D450700000003050000FE00000005135D450900000004000000070000000900000009120700F808A9130512070104000000020500010000000005135D80F7000000000500010600000005000000090000000900000001115225070A0000FE1152250908A912F912073CF80000000108A91305120701040000000208A9130712070106000000030000000912073D0608A91309120700FE0000000900000004000000090000000300000009120700F808A91305120701040000000208A9130712070106000000030000000912073D0600000005000000030000000900000001000000041151E909000000040000000900000003000000021151E8F90A0001041151E9050000000200000009115225050A0001061151E907000000030A0000FE1152250908A91305120701040000000208A91309120700FE00000005000000040000000712073D0408A91309120700FE00000005000000040000000900000002000000041151E9090000000400000009115225070A0000FE000000091151E909000000040000000900000003000000020000000100000000"
theorem small_5859232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5859232_left_root small_5859232_left_fuel small_5859232_left_count small_5859232_left_encoded = true := by
  decide +kernel
theorem small_5859232_left_covered : CoveredBy scale carrier boxes small_5859232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5859232_left_root small_5859232_left_fuel small_5859232_left_count small_5859232_left_encoded small_5859232_left_checked

theorem cover_5859232 : CoveredBy scale carrier boxes root_5859232 := by
  apply coveredBy_split_literal root_5859232 small_5859232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5859566 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5859232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5859566
#print axioms cover_5859232

def root_5854344 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5854344 : CoveredBy scale carrier boxes root_5854344 := by
  apply coveredBy_split_literal root_5854344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5854345 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5859232 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5854345
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5859232
#print axioms cover_5854344

def root_5867459 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5867459 : CoveredBy scale carrier boxes root_5867459 := by
  apply coveredBy_split_literal root_5867459 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2204.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2205.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2204.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2205.covered
#print axioms cover_5867459

def root_5865175 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5865175 : CoveredBy scale carrier boxes root_5865175 := by
  apply coveredBy_split_literal root_5865175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2203.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5867459 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2203.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5867459
#print axioms cover_5865175

def root_5854343 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5854343 : CoveredBy scale carrier boxes root_5854343 := by
  apply coveredBy_split_literal root_5854343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5854344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5865175 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5854344
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5865175
#print axioms cover_5854343

def root_5790929 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5790929 : CoveredBy scale carrier boxes root_5790929 := by
  apply coveredBy_split_literal root_5790929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5790930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5854343 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5790930
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5854343
#print axioms cover_5790929

def root_5647563 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5647563 : CoveredBy scale carrier boxes root_5647563 := by
  apply coveredBy_split_literal root_5647563 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5647564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5790929 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5647564
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5790929
#print axioms cover_5647563

def root_5561889 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5561889 : CoveredBy scale carrier boxes root_5561889 := by
  apply coveredBy_split_literal root_5561889 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5561890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5647563 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5561890
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5647563
#print axioms cover_5561889

def root_5076039 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076039 : CoveredBy scale carrier boxes root_5076039 := by
  apply coveredBy_split_literal root_5076039 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.root_5076040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5561889 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0391.cover_5076040
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5561889
#print axioms cover_5076039

def root_5874149 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5874149 : CoveredBy scale carrier boxes root_5874149 := by
  apply coveredBy_split_literal root_5874149 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2208.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2209.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2208.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2209.covered
#print axioms cover_5874149

def root_5874144 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5874144_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5874144_right_fuel : Nat := 1
def small_5874144_right_count : Nat := 1
def small_5874144_right_encoded : String := "00000004"
theorem small_5874144_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5874144_right_root small_5874144_right_fuel small_5874144_right_count small_5874144_right_encoded = true := by
  decide +kernel
theorem small_5874144_right_covered : CoveredBy scale carrier boxes small_5874144_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5874144_right_root small_5874144_right_fuel small_5874144_right_count small_5874144_right_encoded small_5874144_right_checked

theorem cover_5874144 : CoveredBy scale carrier boxes root_5874144 := by
  apply coveredBy_split_literal root_5874144 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5874149 small_5874144_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5874149
  · exact small_5874144_right_covered
#print axioms cover_5874144

def root_5874143 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5874143_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5874143_right_fuel : Nat := 14
def small_5874143_right_count : Nat := 55
def small_5874143_right_encoded : String := "1151E9090000000408A91303120700F808A912FB12073CFA0000000205000100135D44F7050000FC0000000A135D44FD050000FE135D810904548A03138670F80000000A000000010000000500000004000000050000000300000000135D80F700000000050000FC0000000A00000005120700FA05000100135D44F7050000FC135D80FD00000003050000FE135D810904548A03138670F80000000700000001000000050000000400000005000000050000000000000005000000020000000112073CF80000000108A912FB12073CFA000000020000000500000005"
theorem small_5874143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5874143_right_root small_5874143_right_fuel small_5874143_right_count small_5874143_right_encoded = true := by
  decide +kernel
theorem small_5874143_right_covered : CoveredBy scale carrier boxes small_5874143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5874143_right_root small_5874143_right_fuel small_5874143_right_count small_5874143_right_encoded small_5874143_right_checked

theorem cover_5874143 : CoveredBy scale carrier boxes root_5874143 := by
  apply coveredBy_split_literal root_5874143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5874144 small_5874143_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5874144
  · exact small_5874143_right_covered
#print axioms cover_5874143

def root_5874138 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5874138_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5874138_right_fuel : Nat := 1
def small_5874138_right_count : Nat := 1
def small_5874138_right_encoded : String := "00000003"
theorem small_5874138_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5874138_right_root small_5874138_right_fuel small_5874138_right_count small_5874138_right_encoded = true := by
  decide +kernel
theorem small_5874138_right_covered : CoveredBy scale carrier boxes small_5874138_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5874138_right_root small_5874138_right_fuel small_5874138_right_count small_5874138_right_encoded small_5874138_right_checked

theorem cover_5874138 : CoveredBy scale carrier boxes root_5874138 := by
  apply coveredBy_split_literal root_5874138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5874143 small_5874138_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5874143
  · exact small_5874138_right_covered
#print axioms cover_5874138

def root_5872586 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5872586 : CoveredBy scale carrier boxes root_5872586 := by
  apply coveredBy_split_literal root_5872586 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2207.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5874138 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2207.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5874138
#print axioms cover_5872586

def root_5872580 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872580_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872580_left_fuel : Nat := 1
def small_5872580_left_count : Nat := 1
def small_5872580_left_encoded : String := "00000002"
theorem small_5872580_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5872580_left_root small_5872580_left_fuel small_5872580_left_count small_5872580_left_encoded = true := by
  decide +kernel
theorem small_5872580_left_covered : CoveredBy scale carrier boxes small_5872580_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5872580_left_root small_5872580_left_fuel small_5872580_left_count small_5872580_left_encoded small_5872580_left_checked

theorem cover_5872580 : CoveredBy scale carrier boxes root_5872580 := by
  apply coveredBy_split_literal root_5872580 small_5872580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5872586 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5872580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5872586
#print axioms cover_5872580

def root_5872579 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872579_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872579_right_fuel : Nat := 28
def small_5872579_right_count : Nat := 399
def small_5872579_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A91303120700F808A912FD12073CFC0000000308A91309120700FE05000100135D44F7050000FA135D80FB00000002000000080000000900000000135D80F700000000050000FA135D80FB0000000204548A03138670F80000000A0000000100000009000000090000000412073CFE000000040000000A120700FC0000000A000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE0500010000000009000000090000000412073CFE0000000405000100135D44F7000000090000000000000009120700FC08A91309120700FE0500010000000009135D80F70000000000000009000000040000000A00000003000000041151E9090000000408A913030000000A0000000A1151E8FD0A0000FE1152250908A91303120700F808A91309120700FE05000100135D44F7050000FA135D80FB00000002050000FC135D80FD0000000304548A030000000800000009135D44FD04548A03138670F804548A09000000051386ACFE00000004028001000000000813D7ECF700000000078000FA128A7CFB000000020000000800000008000000011386ACF80000000104548A09000000091386ACFE000000040280010013D7B0F7078000FA128A7CFB00000002028000FC0000000813D7B0FD067ECE830000000812EA94F8000000010000000800000003000000080000000013D7ECF700000000078000FA128A7CFB00000002028000FC0000000913D7B0FD067ECE8312EA58F80000000A0000000100000009000000030000000900000003135D44FB050000FC00000008135D44FD04548A030000000800000009000000030000000200000000135D80F700000000050000FA135D80FB00000002050000FC135D80FD0000000304548A03138670F804548A09000000080000000A0000000100000009135D44FD04548A03138670F804548A09138670FE07800100128A40F70000000500000000128A7CF700000000078000FA128A7CFB00000002028000FC0000000513D7B0FD000000090000000300000009000000041386ACFE0000000407800100128A40F7078000FA128A7CFB00000002028000FC0000000813D7B0FD022A45830000000A0000000A000000030000000A00000000128A7CF700000000078000FA128A7CFB00000002028000FC0000000A13D7B0FD0000000A000000030000000A000000011386ACF80000000104548A09000000091386ACFE0000000407800100128A40F7078000FA128A7CFB000000020000000900000009000000000000000900000003135D44FB050000FC00000009135D44FD04548A03138670F804548A090000000900000009000000010000000900000003000000020000000412073CFE0000000405000100135D44F7050000FA135D80FB00000002050000FC0000000A135D44FD04548A03138670F80000000A000000011386ACF8000000010CFD9C090F34D0FE028001000000000A0000000A000000040000000A00000003135D44FB0000000A0000000200000000135D80F700000000050000FA135D80FB00000002050000FC0000000A135D44FD04548A030000000A0000000A000000030000000A0000000112073CF80000000108A91309120700FE05000100135D44F7050000FA135D80FB00000002050000FC00000009135D44FD0CFD9C030F34D0F8000000090000000100000009000000030000000900000000135D80F700000000050000FA135D80FB00000002050000FC00000009135D44FD0000000900000003000000090000000412073CFE0000000405000100135D44F7050000FA135D80FB00000002050000FC135D80FD000000030CFD9C030F34D0F80000000A0000000100000009135D44FD0CFD9C030F34D0F80CFD9C090F34D0FE0280010013D7B0F7078000FA0000000A0000000A0000000013D7ECF700000000000000090000000400000005000000010000000500000003135D44FB050000FC135D80FD000000030CFD9C030000000900000005135D44FD0CFD9C030F34D0F80000000A0000000100000005000000030000000200000000135D80F700000000050000FA135D80FB00000002050000FC0000000900000005135D44FB050000FC000000090000000500000002000000041151E9090000000408A91303120700F80000000A00000001000000050000000300000002"
theorem small_5872579_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5872579_right_root small_5872579_right_fuel small_5872579_right_count small_5872579_right_encoded = true := by
  decide +kernel
theorem small_5872579_right_covered : CoveredBy scale carrier boxes small_5872579_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5872579_right_root small_5872579_right_fuel small_5872579_right_count small_5872579_right_encoded small_5872579_right_checked

theorem cover_5872579 : CoveredBy scale carrier boxes root_5872579 := by
  apply coveredBy_split_literal root_5872579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5872580 small_5872579_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5872580
  · exact small_5872579_right_covered
#print axioms cover_5872579

def root_5872574 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872574_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872574_right_fuel : Nat := 1
def small_5872574_right_count : Nat := 1
def small_5872574_right_encoded : String := "00000001"
theorem small_5872574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5872574_right_root small_5872574_right_fuel small_5872574_right_count small_5872574_right_encoded = true := by
  decide +kernel
theorem small_5872574_right_covered : CoveredBy scale carrier boxes small_5872574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5872574_right_root small_5872574_right_fuel small_5872574_right_count small_5872574_right_encoded small_5872574_right_checked

theorem cover_5872574 : CoveredBy scale carrier boxes root_5872574 := by
  apply coveredBy_split_literal root_5872574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5872579 small_5872574_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5872579
  · exact small_5872574_right_covered
#print axioms cover_5872574

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408
