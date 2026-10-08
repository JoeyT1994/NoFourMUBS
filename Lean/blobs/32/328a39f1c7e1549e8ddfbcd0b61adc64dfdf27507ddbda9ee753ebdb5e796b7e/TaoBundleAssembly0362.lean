import TaoBundleAssembly0361
import TaoBundleChunkBatch0477
import TaoBundleChunkBatch0478
import TaoBundleChunkBatch0479
import TaoBundleChunkBatch0480
import TaoBundleChunkBatch0481
import TaoBundleChunkBatch0482
import TaoBundleChunkBatch0483
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362
def root_5109987 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109987_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109987_right_fuel : Nat := 20
def small_5109987_right_count : Nat := 263
def small_5109987_right_encoded : String := "120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A91309120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000304548A09000000061386ACFE000000040C9A86FA0F878CFB00000002000000060000000A0F34D0FC04548A09000000060000000A000000030F34D0FA0000000600000002138670F80CFD9BFB0F350CFA000000020CFD9BFD000000060F34D0FC00000006000000030000000600000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000304548A0900000006000000090F34D0FC00000009000000030F34D0FA0000000600000002138670F800000006000000010000000412073CFE00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0F350CFC000000030CFD9C090F34D0FE0C9A86FC000000060F8750FD000000060000000300000004000000050F34D0FC0000000A0000000300000002138670F80CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0F350CFC0000000300000005000000050000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000A0000000500000005120700FC08A91309120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC0000000304548A09138670FE0C9A86FA000000060000000A000000040000000A138670FC0000000A000000030F34D0FA045489FD00000006138670FC04548A09000000061386ACFE00000004067ECE770000000A000000050000000300000002138670F80CFD9BFB0F350CFA00000002045489FD0000000A138670FC0000000A000000030F34D0FA000000060000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC0000000304548A09000000060000000A138670FC04548A09138670FE0C9A86FA0F878CFB0000000200000005000000050000000400000005000000030F34D0FA045489FD000000060000000500000002138670F80CFD9BFB0F350CFA00000002045489FD000000060000000500000006000000010000000412073CFE00000004045489F71386AD00045489F90000000A00000005000000000000000500000003120700FA08A912FD12073CFC0000000308A913090000000612073CFE00000004045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000050000000500000005000000050000000000000005120700FC08A91309120700FE000000060000000412073CFE0000000400000005000000030000000200000001"
theorem small_5109987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5109987_right_root small_5109987_right_fuel small_5109987_right_count small_5109987_right_encoded = true := by
  decide +kernel
theorem small_5109987_right_covered : CoveredBy scale carrier boxes small_5109987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5109987_right_root small_5109987_right_fuel small_5109987_right_count small_5109987_right_encoded small_5109987_right_checked

theorem cover_5109987 : CoveredBy scale carrier boxes root_5109987 := by
  apply coveredBy_split_literal root_5109987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1910.root small_5109987_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1910.covered
  · exact small_5109987_right_covered
#print axioms cover_5109987

def root_5109981 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5109981_left_fuel : Nat := 1
def small_5109981_left_count : Nat := 1
def small_5109981_left_encoded : String := "00000000"
theorem small_5109981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5109981_left_root small_5109981_left_fuel small_5109981_left_count small_5109981_left_encoded = true := by
  decide +kernel
theorem small_5109981_left_covered : CoveredBy scale carrier boxes small_5109981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5109981_left_root small_5109981_left_fuel small_5109981_left_count small_5109981_left_encoded small_5109981_left_checked

theorem cover_5109981 : CoveredBy scale carrier boxes root_5109981 := by
  apply coveredBy_split_literal root_5109981 small_5109981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5109987 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5109981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5109987
#print axioms cover_5109981

def root_5108325 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108325 : CoveredBy scale carrier boxes root_5108325 := by
  apply coveredBy_split_literal root_5108325 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1909.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5109981 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1909.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5109981
#print axioms cover_5108325

def root_5108320 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108320_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108320_right_fuel : Nat := 1
def small_5108320_right_count : Nat := 1
def small_5108320_right_encoded : String := "00000004"
theorem small_5108320_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108320_right_root small_5108320_right_fuel small_5108320_right_count small_5108320_right_encoded = true := by
  decide +kernel
theorem small_5108320_right_covered : CoveredBy scale carrier boxes small_5108320_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108320_right_root small_5108320_right_fuel small_5108320_right_count small_5108320_right_encoded small_5108320_right_checked

theorem cover_5108320 : CoveredBy scale carrier boxes root_5108320 := by
  apply coveredBy_split_literal root_5108320 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108325 small_5108320_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108325
  · exact small_5108320_right_covered
#print axioms cover_5108320

def root_5108319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108319_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108319_right_fuel : Nat := 17
def small_5108319_right_count : Nat := 113
def small_5108319_right_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D81090CFD9BF70F350D000CFD9BF9000000080F34D0F80000000A00000001000000000F34D100000000000000000A00000004135D4509000000040CFD9BF70000000A0F34D100000000000000000A120700FC0000000A00000003120700FA08A912FD12073CFC00000003050000FE135D81090CFD9BF70F350D0000000008000000000000000800000004135D4509000000040CFD9BF70F350D00000000080000000000000005120700FC000000080000000300000002120700F808A912FB12073CFA0000000208A912FD0000000A120700FC0000000A00000003120700FA08A912FD12073CFC00000003050000FE135D81090CFD9BF70F350D00045489F91386ACF800000001045489FB0000000A00000005000000050000000000000005000000040000000500000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D8109045489F70000000A000000050000000400000005000000050000000500000005"
theorem small_5108319_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108319_right_root small_5108319_right_fuel small_5108319_right_count small_5108319_right_encoded = true := by
  decide +kernel
theorem small_5108319_right_covered : CoveredBy scale carrier boxes small_5108319_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108319_right_root small_5108319_right_fuel small_5108319_right_count small_5108319_right_encoded small_5108319_right_checked

theorem cover_5108319 : CoveredBy scale carrier boxes root_5108319 := by
  apply coveredBy_split_literal root_5108319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108320 small_5108319_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108320
  · exact small_5108319_right_covered
#print axioms cover_5108319

def root_5108313 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108313_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108313_left_fuel : Nat := 1
def small_5108313_left_count : Nat := 1
def small_5108313_left_encoded : String := "00000003"
theorem small_5108313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108313_left_root small_5108313_left_fuel small_5108313_left_count small_5108313_left_encoded = true := by
  decide +kernel
theorem small_5108313_left_covered : CoveredBy scale carrier boxes small_5108313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108313_left_root small_5108313_left_fuel small_5108313_left_count small_5108313_left_encoded small_5108313_left_checked

theorem cover_5108313 : CoveredBy scale carrier boxes root_5108313 := by
  apply coveredBy_split_literal root_5108313 small_5108313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108319 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108319
#print axioms cover_5108313

def root_5113447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5113447 : CoveredBy scale carrier boxes root_5113447 := by
  apply coveredBy_split_literal root_5113447 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1911.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1912.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1911.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1912.covered
#print axioms cover_5113447

def root_5113442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113442_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113442_right_fuel : Nat := 1
def small_5113442_right_count : Nat := 1
def small_5113442_right_encoded : String := "00000004"
theorem small_5113442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5113442_right_root small_5113442_right_fuel small_5113442_right_count small_5113442_right_encoded = true := by
  decide +kernel
theorem small_5113442_right_covered : CoveredBy scale carrier boxes small_5113442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5113442_right_root small_5113442_right_fuel small_5113442_right_count small_5113442_right_encoded small_5113442_right_checked

theorem cover_5113442 : CoveredBy scale carrier boxes root_5113442 := by
  apply coveredBy_split_literal root_5113442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5113447 small_5113442_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5113447
  · exact small_5113442_right_covered
#print axioms cover_5113442

def root_5113441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113441_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113441_right_fuel : Nat := 21
def small_5113441_right_count : Nat := 193
def small_5113441_right_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF90000000A0F34D0F80000000A00000001000000000F34D100000000000000000A00000004135D4509000000040CFD9BF70000000A0F34D100000000000000000A135D44FD050000FE135D81090CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002000000060F34D0FA0C9A8700000000080F878CF7000000000C9A86F80000000800000006000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000A0000000200000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000A000000050000000500000004135D4509000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA0C9A8700000000060000000A000000020F34D0F80000000A00000001000000000F34D100000000000CFD9BF90000000A0000000500000003120700FA050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF9000000080F34D0F80000000800000001000000000F34D100000000000000000500000004135D4509000000040CFD9BF70F350D000CFD9BF900000008000000050000000000000005135D44FD050000FE135D81090CFD9BF70F350D0000000009000000000000000500000004135D450900000004000000050000000300000002120700F808A912FB12073CFA00000002050000FC135D80FD00000003050000FE135D81090CFD9BF70000000A0F34D1000000000000000005000000040000000A135D44FD050000FE135D81090CFD9BF70F350D00045489F90000000A00000005000000000000000500000004135D4509000000040000000500000003000000050000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D80FD0000000300000005135D44FD050000FE00000005135D45090000000400000005000000030000000500000005"
theorem small_5113441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5113441_right_root small_5113441_right_fuel small_5113441_right_count small_5113441_right_encoded = true := by
  decide +kernel
theorem small_5113441_right_covered : CoveredBy scale carrier boxes small_5113441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5113441_right_root small_5113441_right_fuel small_5113441_right_count small_5113441_right_encoded small_5113441_right_checked

theorem cover_5113441 : CoveredBy scale carrier boxes root_5113441 := by
  apply coveredBy_split_literal root_5113441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5113442 small_5113441_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5113442
  · exact small_5113441_right_covered
#print axioms cover_5113441

def root_5113436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5113436_right_fuel : Nat := 1
def small_5113436_right_count : Nat := 1
def small_5113436_right_encoded : String := "00000003"
theorem small_5113436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5113436_right_root small_5113436_right_fuel small_5113436_right_count small_5113436_right_encoded = true := by
  decide +kernel
theorem small_5113436_right_covered : CoveredBy scale carrier boxes small_5113436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5113436_right_root small_5113436_right_fuel small_5113436_right_count small_5113436_right_encoded small_5113436_right_checked

theorem cover_5113436 : CoveredBy scale carrier boxes root_5113436 := by
  apply coveredBy_split_literal root_5113436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5113441 small_5113436_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5113441
  · exact small_5113436_right_covered
#print axioms cover_5113436

def root_5108312 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108312 : CoveredBy scale carrier boxes root_5108312 := by
  apply coveredBy_split_literal root_5108312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5113436 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108313
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5113436
#print axioms cover_5108312

def root_5108306 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108306_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108306_left_fuel : Nat := 1
def small_5108306_left_count : Nat := 1
def small_5108306_left_encoded : String := "00000002"
theorem small_5108306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108306_left_root small_5108306_left_fuel small_5108306_left_count small_5108306_left_encoded = true := by
  decide +kernel
theorem small_5108306_left_covered : CoveredBy scale carrier boxes small_5108306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108306_left_root small_5108306_left_fuel small_5108306_left_count small_5108306_left_encoded small_5108306_left_checked

theorem cover_5108306 : CoveredBy scale carrier boxes root_5108306 := by
  apply coveredBy_split_literal root_5108306 small_5108306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108312 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108312
#print axioms cover_5108306

def root_5108305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108305 : CoveredBy scale carrier boxes root_5108305 := by
  apply coveredBy_split_literal root_5108305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108306 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1913.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108306
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1913.covered
#print axioms cover_5108305

def root_5108299 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108299_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108299_left_fuel : Nat := 1
def small_5108299_left_count : Nat := 1
def small_5108299_left_encoded : String := "00000001"
theorem small_5108299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108299_left_root small_5108299_left_fuel small_5108299_left_count small_5108299_left_encoded = true := by
  decide +kernel
theorem small_5108299_left_covered : CoveredBy scale carrier boxes small_5108299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108299_left_root small_5108299_left_fuel small_5108299_left_count small_5108299_left_encoded small_5108299_left_checked

theorem cover_5108299 : CoveredBy scale carrier boxes root_5108299 := by
  apply coveredBy_split_literal root_5108299 small_5108299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108305 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108305
#print axioms cover_5108299

def root_5108298 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5108298 : CoveredBy scale carrier boxes root_5108298 := by
  apply coveredBy_split_literal root_5108298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108299 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1914.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108299
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1914.covered
#print axioms cover_5108298

def root_5108292 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108292_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5108292_left_fuel : Nat := 1
def small_5108292_left_count : Nat := 1
def small_5108292_left_encoded : String := "00000000"
theorem small_5108292_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5108292_left_root small_5108292_left_fuel small_5108292_left_count small_5108292_left_encoded = true := by
  decide +kernel
theorem small_5108292_left_covered : CoveredBy scale carrier boxes small_5108292_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5108292_left_root small_5108292_left_fuel small_5108292_left_count small_5108292_left_encoded small_5108292_left_checked

theorem cover_5108292 : CoveredBy scale carrier boxes root_5108292 := by
  apply coveredBy_split_literal root_5108292 small_5108292_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108298 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5108292_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108298
#print axioms cover_5108292

def root_5106190 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5106190 : CoveredBy scale carrier boxes root_5106190 := by
  apply coveredBy_split_literal root_5106190 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1908.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5108292 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1908.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5108292
#print axioms cover_5106190

def root_5076044 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076044 : CoveredBy scale carrier boxes root_5076044 := by
  apply coveredBy_split_literal root_5076044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.root_5076045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5106190 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0361.cover_5076045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5106190
#print axioms cover_5076044

def root_5124376 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5124376 : CoveredBy scale carrier boxes root_5124376 := by
  apply coveredBy_split_literal root_5124376 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1916.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1917.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1916.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1917.covered
#print axioms cover_5124376

def root_5124370 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5124370_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5124370_left_fuel : Nat := 1
def small_5124370_left_count : Nat := 1
def small_5124370_left_encoded : String := "00000000"
theorem small_5124370_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5124370_left_root small_5124370_left_fuel small_5124370_left_count small_5124370_left_encoded = true := by
  decide +kernel
theorem small_5124370_left_covered : CoveredBy scale carrier boxes small_5124370_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5124370_left_root small_5124370_left_fuel small_5124370_left_count small_5124370_left_encoded small_5124370_left_checked

theorem cover_5124370 : CoveredBy scale carrier boxes root_5124370 := by
  apply coveredBy_split_literal root_5124370 small_5124370_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5124376 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5124370_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5124376
#print axioms cover_5124370

def root_5123036 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5123036 : CoveredBy scale carrier boxes root_5123036 := by
  apply coveredBy_split_literal root_5123036 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1915.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5124370 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1915.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5124370
#print axioms cover_5123036

def root_5127597 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5127597 : CoveredBy scale carrier boxes root_5127597 := by
  apply coveredBy_split_literal root_5127597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1918.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1919.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1918.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1919.covered
#print axioms cover_5127597

def root_5127592 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5127592_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5127592_right_fuel : Nat := 1
def small_5127592_right_count : Nat := 1
def small_5127592_right_encoded : String := "00000000"
theorem small_5127592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5127592_right_root small_5127592_right_fuel small_5127592_right_count small_5127592_right_encoded = true := by
  decide +kernel
theorem small_5127592_right_covered : CoveredBy scale carrier boxes small_5127592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5127592_right_root small_5127592_right_fuel small_5127592_right_count small_5127592_right_encoded small_5127592_right_checked

theorem cover_5127592 : CoveredBy scale carrier boxes root_5127592 := by
  apply coveredBy_split_literal root_5127592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5127597 small_5127592_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5127597
  · exact small_5127592_right_covered
#print axioms cover_5127592

def root_5132011 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5132011 : CoveredBy scale carrier boxes root_5132011 := by
  apply coveredBy_split_literal root_5132011 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1920.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1921.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1920.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1921.covered
#print axioms cover_5132011

def root_5132005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5132005_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5132005_left_fuel : Nat := 1
def small_5132005_left_count : Nat := 1
def small_5132005_left_encoded : String := "00000000"
theorem small_5132005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5132005_left_root small_5132005_left_fuel small_5132005_left_count small_5132005_left_encoded = true := by
  decide +kernel
theorem small_5132005_left_covered : CoveredBy scale carrier boxes small_5132005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5132005_left_root small_5132005_left_fuel small_5132005_left_count small_5132005_left_encoded small_5132005_left_checked

theorem cover_5132005 : CoveredBy scale carrier boxes root_5132005 := by
  apply coveredBy_split_literal root_5132005 small_5132005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5132011 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5132005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5132011
#print axioms cover_5132005

def root_5127591 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5127591 : CoveredBy scale carrier boxes root_5127591 := by
  apply coveredBy_split_literal root_5127591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5127592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5132005 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5127592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5132005
#print axioms cover_5127591

def root_5123035 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5123035 : CoveredBy scale carrier boxes root_5123035 := by
  apply coveredBy_split_literal root_5123035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5123036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5127591 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5123036
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5127591
#print axioms cover_5123035

def root_5076043 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076043 : CoveredBy scale carrier boxes root_5076043 := by
  apply coveredBy_split_literal root_5076043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5076044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5123035 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5076044
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5123035
#print axioms cover_5076043

def root_5140523 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140523_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140523_right_fuel : Nat := 20
def small_5140523_right_count : Nat := 173
def small_5140523_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB000000070000000700000007000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A0700000007000000070F34D0FA0000000600000002138670F80000000600000001120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA04548A07000000060000000700000002138670F80000000700000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A07138670FC045489FF00000006138670FE0C9A86FA0F878CFB00000002000000050000000500000004000000031386ACFC00000003045489FF00000007000000050F34D0FA04548A07000000060000000500000002138670F80CFD9BFB0F350CFA00000002000000070000000600000001000000040000000312073CFC0000000308A912FF12073CFE00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB000000070F34D0FA0CFD9C07000000070F350CFC00000003000000050000000200000007000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070000000500000005120700FE045489F71386AD00045489F91386ACF8000000010CFD9BFB000000070000000500000005000000000000000500000004120700FA08A91307120700FC08A912FF00000006120700FE00000006000000040000000312073CFC0000000308A912FF12073CFE00000004045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9C070F34D0FC00000006000000030000000500000005000000050000000000000005000000050000000200000001"
theorem small_5140523_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5140523_right_root small_5140523_right_fuel small_5140523_right_count small_5140523_right_encoded = true := by
  decide +kernel
theorem small_5140523_right_covered : CoveredBy scale carrier boxes small_5140523_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5140523_right_root small_5140523_right_fuel small_5140523_right_count small_5140523_right_encoded small_5140523_right_checked

theorem cover_5140523 : CoveredBy scale carrier boxes root_5140523 := by
  apply coveredBy_split_literal root_5140523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1924.root small_5140523_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1924.covered
  · exact small_5140523_right_covered
#print axioms cover_5140523

def root_5140517 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140517_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5140517_left_fuel : Nat := 1
def small_5140517_left_count : Nat := 1
def small_5140517_left_encoded : String := "00000000"
theorem small_5140517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5140517_left_root small_5140517_left_fuel small_5140517_left_count small_5140517_left_encoded = true := by
  decide +kernel
theorem small_5140517_left_covered : CoveredBy scale carrier boxes small_5140517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5140517_left_root small_5140517_left_fuel small_5140517_left_count small_5140517_left_encoded small_5140517_left_checked

theorem cover_5140517 : CoveredBy scale carrier boxes root_5140517 := by
  apply coveredBy_split_literal root_5140517 small_5140517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5140523 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5140517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5140523
#print axioms cover_5140517

def root_5138807 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138807 : CoveredBy scale carrier boxes root_5138807 := by
  apply coveredBy_split_literal root_5138807 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1923.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5140517 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1923.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5140517
#print axioms cover_5138807

def root_5138801 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138801_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138801_left_fuel : Nat := 1
def small_5138801_left_count : Nat := 1
def small_5138801_left_encoded : String := "00000004"
theorem small_5138801_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138801_left_root small_5138801_left_fuel small_5138801_left_count small_5138801_left_encoded = true := by
  decide +kernel
theorem small_5138801_left_covered : CoveredBy scale carrier boxes small_5138801_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138801_left_root small_5138801_left_fuel small_5138801_left_count small_5138801_left_encoded small_5138801_left_checked

theorem cover_5138801 : CoveredBy scale carrier boxes root_5138801 := by
  apply coveredBy_split_literal root_5138801 small_5138801_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138807 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138801_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138807
#print axioms cover_5138801

def root_5143813 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5143813 : CoveredBy scale carrier boxes root_5143813 := by
  apply coveredBy_split_literal root_5143813 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1925.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1926.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1925.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1926.covered
#print axioms cover_5143813

def root_5143808 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5143808_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5143808_right_fuel : Nat := 1
def small_5143808_right_count : Nat := 1
def small_5143808_right_encoded : String := "00000004"
theorem small_5143808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5143808_right_root small_5143808_right_fuel small_5143808_right_count small_5143808_right_encoded = true := by
  decide +kernel
theorem small_5143808_right_covered : CoveredBy scale carrier boxes small_5143808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5143808_right_root small_5143808_right_fuel small_5143808_right_count small_5143808_right_encoded small_5143808_right_checked

theorem cover_5143808 : CoveredBy scale carrier boxes root_5143808 := by
  apply coveredBy_split_literal root_5143808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5143813 small_5143808_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5143813
  · exact small_5143808_right_covered
#print axioms cover_5143808

def root_5138800 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138800 : CoveredBy scale carrier boxes root_5138800 := by
  apply coveredBy_split_literal root_5138800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5143808 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138801
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5143808
#print axioms cover_5138800

def root_5138795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138795_right_fuel : Nat := 1
def small_5138795_right_count : Nat := 1
def small_5138795_right_encoded : String := "00000003"
theorem small_5138795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138795_right_root small_5138795_right_fuel small_5138795_right_count small_5138795_right_encoded = true := by
  decide +kernel
theorem small_5138795_right_covered : CoveredBy scale carrier boxes small_5138795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138795_right_root small_5138795_right_fuel small_5138795_right_count small_5138795_right_encoded small_5138795_right_checked

theorem cover_5138795 : CoveredBy scale carrier boxes root_5138795 := by
  apply coveredBy_split_literal root_5138795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138800 small_5138795_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138800
  · exact small_5138795_right_covered
#print axioms cover_5138795

def root_5138794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138794_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138794_right_fuel : Nat := 23
def small_5138794_right_count : Nat := 307
def small_5138794_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF70F350D000CFD9BF90000000900000007000000000F34D100000000000000000900000003135D4507000000030CFD9BF7000000090F34D1000000000000000009120700FE0000000900000004120700FA08A912FF00000009120700FE000000090000000400000002120700F808A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF70F350D0000000007000000000000000700000003135D4507000000030CFD9BF70F350D00000000070000000000000005120700FE0000000700000004120700FA08A912FF12073CFE00000004050000FC135D81070CFD9BF70F350D00045489F900000009000000050000000000000005000000030000000500000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D8107045489F7000000090000000500000003000000050000000500000005000000051151E8FF08A912F712073D0008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D8107050000FE135D80FF000000040CFD9BF70F350D000CFD9BF9000000090F34D0F80CFD9BFB000000070F34D0FA000000090000000200000001000000000F34D1000000000000000009135D44FF0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB000000090F34D0FA00000009000000020F34D0F80CFD9BFB0F350CFA000000020C9A8700000000070F878CF7000000000C9A86FA00000007000000060F34D0FA000000090000000200000001000000000F34D100000000000CFD9BF90F350CF80000000100000009000000050000000400000003135D450700000003050000FE135D80FF000000040CFD9BF7000000090F34D1000000000000000009135D44FF0CFD9BF70F350D000CFD9BF90F350CF800000001000000090F34D0F80CFD9BFB0F350CFA000000020C9A870000000006000000090000000500000001000000000F34D100000000000CFD9BF9000000090000000500000004120700FA050000FC135D8107050000FE135D80FF000000040CFD9BF7000000090F34D1000000000000000005135D44FF0CFD9BF70F350D000CFD9BF9000000090000000500000000000000050000000400000003135D450700000003050000FE000000090000000500000002120700F808A912FB12073CFA00000002050000FC135D8107050000FE135D80FF000000040CFD9BF70F350D00045489F91386ACF8000000010CFD9BFB000000070F34D0FA000000070000000200000007000000000F34D1000000000000000005135D44FF0CFD9BF70F350D000000000A00000000000000050000000400000003135D450700000003050000FE135D80FF000000040CFD9BF70F350D00045489F91386ACF8000000010000000500000005000000000000000500000005000000050000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA00000002050000FC135D8107050000FE135D80FF00000004000000050000000500000003135D45070000000300000005000000050000000500000004"
theorem small_5138794_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138794_right_root small_5138794_right_fuel small_5138794_right_count small_5138794_right_encoded = true := by
  decide +kernel
theorem small_5138794_right_covered : CoveredBy scale carrier boxes small_5138794_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138794_right_root small_5138794_right_fuel small_5138794_right_count small_5138794_right_encoded small_5138794_right_checked

theorem cover_5138794 : CoveredBy scale carrier boxes root_5138794 := by
  apply coveredBy_split_literal root_5138794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138795 small_5138794_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138795
  · exact small_5138794_right_covered
#print axioms cover_5138794

def root_5138788 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138788_left_fuel : Nat := 1
def small_5138788_left_count : Nat := 1
def small_5138788_left_encoded : String := "00000002"
theorem small_5138788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138788_left_root small_5138788_left_fuel small_5138788_left_count small_5138788_left_encoded = true := by
  decide +kernel
theorem small_5138788_left_covered : CoveredBy scale carrier boxes small_5138788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138788_left_root small_5138788_left_fuel small_5138788_left_count small_5138788_left_encoded small_5138788_left_checked

theorem cover_5138788 : CoveredBy scale carrier boxes root_5138788 := by
  apply coveredBy_split_literal root_5138788 small_5138788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138794 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138794
#print axioms cover_5138788

def root_5138787 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138787 : CoveredBy scale carrier boxes root_5138787 := by
  apply coveredBy_split_literal root_5138787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138788 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1927.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138788
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1927.covered
#print axioms cover_5138787

def root_5138781 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138781_left_fuel : Nat := 1
def small_5138781_left_count : Nat := 1
def small_5138781_left_encoded : String := "00000001"
theorem small_5138781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138781_left_root small_5138781_left_fuel small_5138781_left_count small_5138781_left_encoded = true := by
  decide +kernel
theorem small_5138781_left_covered : CoveredBy scale carrier boxes small_5138781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138781_left_root small_5138781_left_fuel small_5138781_left_count small_5138781_left_encoded small_5138781_left_checked

theorem cover_5138781 : CoveredBy scale carrier boxes root_5138781 := by
  apply coveredBy_split_literal root_5138781 small_5138781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138787 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138787
#print axioms cover_5138781

def root_5150701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5150701 : CoveredBy scale carrier boxes root_5150701 := by
  apply coveredBy_split_literal root_5150701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1928.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1929.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1928.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1929.covered
#print axioms cover_5150701

def root_5150696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5150696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5150696_right_fuel : Nat := 1
def small_5150696_right_count : Nat := 1
def small_5150696_right_encoded : String := "00000001"
theorem small_5150696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5150696_right_root small_5150696_right_fuel small_5150696_right_count small_5150696_right_encoded = true := by
  decide +kernel
theorem small_5150696_right_covered : CoveredBy scale carrier boxes small_5150696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5150696_right_root small_5150696_right_fuel small_5150696_right_count small_5150696_right_encoded small_5150696_right_checked

theorem cover_5150696 : CoveredBy scale carrier boxes root_5150696 := by
  apply coveredBy_split_literal root_5150696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5150701 small_5150696_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5150701
  · exact small_5150696_right_covered
#print axioms cover_5150696

def root_5138780 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5138780 : CoveredBy scale carrier boxes root_5138780 := by
  apply coveredBy_split_literal root_5138780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138781 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5150696 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138781
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5150696
#print axioms cover_5138780

def root_5138774 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138774_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5138774_left_fuel : Nat := 1
def small_5138774_left_count : Nat := 1
def small_5138774_left_encoded : String := "00000000"
theorem small_5138774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5138774_left_root small_5138774_left_fuel small_5138774_left_count small_5138774_left_encoded = true := by
  decide +kernel
theorem small_5138774_left_covered : CoveredBy scale carrier boxes small_5138774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5138774_left_root small_5138774_left_fuel small_5138774_left_count small_5138774_left_encoded small_5138774_left_checked

theorem cover_5138774 : CoveredBy scale carrier boxes root_5138774 := by
  apply coveredBy_split_literal root_5138774 small_5138774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138780 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5138774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138780
#print axioms cover_5138774

def root_5136706 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5136706 : CoveredBy scale carrier boxes root_5136706 := by
  apply coveredBy_split_literal root_5136706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1922.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5138774 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1922.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5138774
#print axioms cover_5136706

def root_5155390 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155390_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155390_right_fuel : Nat := 25
def small_5155390_right_count : Nat := 221
def small_5155390_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A912F712073D0008A912F912073CF80000000108A91307120700FC08A91309120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF80000000104548A07138670FC0000000A000000031386ACFC0000000304548A0900000006000000060F34D0F80000000700000001000000000F34D100000000000CFD9BF90F350CF80000000104548A07138670FC0000000A000000031386ACFC0000000304548A0900000006000000060F34D0F80000000A00000001135D44FB0CFD9BF70F350D000CFD9BF90000000A00000007000000000F34D100000000000000000A000000020000000412073CFE00000004050000FA135D80FB000000020CFD9BF70000000A0F34D100000000000000000A0000000A0000000312073CFC0000000308A91309120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF8000000010000000600000007000000000F34D100000000000CFD9BF90000000600000005135D44FB0CFD9BF7000000070F34D100000000000CFD9BF90000000600000005000000020000000412073CFE00000004050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90000000600000005000000000000000500000005120700F808A91307120700FC08A91309120700FE050000FA135D80FB000000020CFD9BF7000000070F34D100000000000000000700000007000000040000000A0000000312073CFC0000000308A91309120700FE0000000700000004000000050000000100000000120701000000000008A912F912073CF80000000108A91307120700FC08A91309120700FE050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF80000000104548A07138670FC04548A09138670FE0C9A86F80000000A00000006000000040000000600000003000000060F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010000000500000005135D44FB045489F71386AD000CFD9BF90000000A0000000500000000000000050000000200000004000000050000000300000005120700F808A91307120700FC08A91309120700FE050000FA135D80FB0000000200000005000000050000000400000005000000030000000500000001000000041151E9090000000400000005000000031151E907000000030000000500000002"
theorem small_5155390_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5155390_right_root small_5155390_right_fuel small_5155390_right_count small_5155390_right_encoded = true := by
  decide +kernel
theorem small_5155390_right_covered : CoveredBy scale carrier boxes small_5155390_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5155390_right_root small_5155390_right_fuel small_5155390_right_count small_5155390_right_encoded small_5155390_right_checked

theorem cover_5155390 : CoveredBy scale carrier boxes root_5155390 := by
  apply coveredBy_split_literal root_5155390 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1931.root small_5155390_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1931.covered
  · exact small_5155390_right_covered
#print axioms cover_5155390

def root_5155384 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155384_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5155384_left_fuel : Nat := 1
def small_5155384_left_count : Nat := 1
def small_5155384_left_encoded : String := "00000001"
theorem small_5155384_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5155384_left_root small_5155384_left_fuel small_5155384_left_count small_5155384_left_encoded = true := by
  decide +kernel
theorem small_5155384_left_covered : CoveredBy scale carrier boxes small_5155384_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5155384_left_root small_5155384_left_fuel small_5155384_left_count small_5155384_left_encoded small_5155384_left_checked

theorem cover_5155384 : CoveredBy scale carrier boxes root_5155384 := by
  apply coveredBy_split_literal root_5155384 small_5155384_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.root_5155390 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5155384_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362.cover_5155390
#print axioms cover_5155384

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0362
