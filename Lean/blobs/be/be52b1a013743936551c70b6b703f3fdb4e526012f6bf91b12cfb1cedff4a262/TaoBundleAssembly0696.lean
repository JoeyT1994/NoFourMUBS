import TaoBundleAssembly0691
import TaoBundleAssembly0692
import TaoBundleAssembly0695
import TaoBundleChunkBatch0966
import TaoBundleChunkBatch0971
import TaoBundleChunkBatch0972
import TaoBundleChunkBatch0973
import TaoBundleChunkBatch0974
import TaoBundleChunkBatch0975
import TaoBundleChunkBatch0976
import TaoBundleChunkBatch0977
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696
def root_10349309 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349309_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349309_right_fuel : Nat := 33
def small_10349309_right_count : Nat := 477
def small_10349309_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A91303120701020000000108A912FB12073D0408A913090000000A12073CFE00000004050000FC135D810704548A01138671000000000004548A0313867102000000010CFD9BFB0F350D040000000A000000020000000A1386AD020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040000000A0000000A000000020000000A000000011386AD0004548A030000000A0000000A00000000000000030000000A000000020000000A12073D0208A912FB12073D0408A91309120700FE050000FC135D810704548A0113867100000000000CFD9C030000000A0000000A0000000A000000030000000A0000000412073CFE00000004050000FC135D810704548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3578310D10102000000010000000500000005000000050000000300000005000000020F878CFB000000020C9A86FE0000000A00000005000000020F34D104000000020000000A0F350D020CFD9BFB0F350D040CFD9C090F34D0FE0C9A87020F875103000000010C9A87040F8750FB078000FC128A7D07022A458100000007000000080000000300000008000000020F878CFB00000002000000070F878D030000000A00000001000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE0F878D09078000FC128A7D07022A458100000007000000070000000300000007000000040F8751090000000400000007000000020F878CFB00000002000000070F878D030C9A87040F8750FB0C9A86FE0F878D09078000FC128A7D07022A458113E1C500000000000DE7CA0200000007000000060000000A000000030000000A000000040F87510900000004078000FC128A7D07022A458113E1C5000000000000000005000000050000000300000005000000020F878CFB000000020C9A86FE0F878D09078000FC0000000700000005000000040000000500000001000000020F34D104000000020CFD9C09000000070F350CFE0000000400000005000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D020CFD9BFB0F350D040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE0F878D0900000008000000040F8751090000000400000005000000020F878CFB00000002000000050F878D030C9A87040F8750FB0C9A86FE0000000A0F8751090000000400000005000000020F878CFB000000020000000500000001000000020F34D104000000020CFD9C090000000A00000005000000010000000000000003135D45070000000304548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D020CFD9BFB0F350D040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87020000000700000005000000020F34D1040000000200000005000000011386AD000CFD9C030F34D102000000010000000A0F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE0000000400000005000000020000000A000000010000000000000002120701040000000208A913090000000A12073CFE00000004050000FC135D810704548A011386710000000000000000071386AD000CFD9C030000000A000000050000000000000003000000050000000112073D0008A9130312070102000000010000000A12073D0208A912FB12073D0408A91309120700FE0000000A0000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87020F875103000000010C9A87040000000A000000050000000A000000020000000A000000010F350D000CFD9C030000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0000000A0000000212070104000000020000000A0000000100000000000000041151E9090000000408A91301120701000000000008A9130312070102000000010000000512073D0208A912FB12073D04050000FC135D8107050000FE135D810904548A0113867100000000000CFD9C030F34D1020000000100000005000000051386AD000CFD9C030F34D102000000010000000500000005000000000000000400000005000000030000000500000002000000050000000112073D0008A91303120701020000000108A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D10000000000000000050000000A00000004000000050000000300000005000000020000000512073D0208A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D1000000000000000005000000050000000400000005000000030000000500000002000000050000000100000000"
theorem small_10349309_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349309_right_root small_10349309_right_fuel small_10349309_right_count small_10349309_right_encoded = true := by
  decide +kernel
theorem small_10349309_right_covered : CoveredBy scale carrier boxes small_10349309_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349309_right_root small_10349309_right_fuel small_10349309_right_count small_10349309_right_encoded small_10349309_right_checked

theorem cover_10349309 : CoveredBy scale carrier boxes root_10349309 := by
  apply coveredBy_split_literal root_10349309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10349310 small_10349309_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10349310
  · exact small_10349309_right_covered
#print axioms cover_10349309

def root_10349303 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349303_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10349303_left_fuel : Nat := 1
def small_10349303_left_count : Nat := 1
def small_10349303_left_encoded : String := "00000002"
theorem small_10349303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10349303_left_root small_10349303_left_fuel small_10349303_left_count small_10349303_left_encoded = true := by
  decide +kernel
theorem small_10349303_left_covered : CoveredBy scale carrier boxes small_10349303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10349303_left_root small_10349303_left_fuel small_10349303_left_count small_10349303_left_encoded small_10349303_left_checked

theorem cover_10349303 : CoveredBy scale carrier boxes root_10349303 := by
  apply coveredBy_split_literal root_10349303 small_10349303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10349309 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10349303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10349309
#print axioms cover_10349303

def root_10317441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10317441 : CoveredBy scale carrier boxes root_10317441 := by
  apply coveredBy_split_literal root_10317441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.root_10317442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10349303 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0695.cover_10317442
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10349303
#print axioms cover_10317441

def root_10317436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317436_right_fuel : Nat := 1
def small_10317436_right_count : Nat := 1
def small_10317436_right_encoded : String := "00000001"
theorem small_10317436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317436_right_root small_10317436_right_fuel small_10317436_right_count small_10317436_right_encoded = true := by
  decide +kernel
theorem small_10317436_right_covered : CoveredBy scale carrier boxes small_10317436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317436_right_root small_10317436_right_fuel small_10317436_right_count small_10317436_right_encoded small_10317436_right_checked

theorem cover_10317436 : CoveredBy scale carrier boxes root_10317436 := by
  apply coveredBy_split_literal root_10317436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10317441 small_10317436_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10317441
  · exact small_10317436_right_covered
#print axioms cover_10317436

def root_10305822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10305822 : CoveredBy scale carrier boxes root_10305822 := by
  apply coveredBy_split_literal root_10305822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0692.root_10305823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10317436 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0692.cover_10305823
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10317436
#print axioms cover_10305822

def root_10305817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10305817_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10305817_right_fuel : Nat := 1
def small_10305817_right_count : Nat := 1
def small_10305817_right_encoded : String := "00000000"
theorem small_10305817_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10305817_right_root small_10305817_right_fuel small_10305817_right_count small_10305817_right_encoded = true := by
  decide +kernel
theorem small_10305817_right_covered : CoveredBy scale carrier boxes small_10305817_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10305817_right_root small_10305817_right_fuel small_10305817_right_count small_10305817_right_encoded small_10305817_right_checked

theorem cover_10305817 : CoveredBy scale carrier boxes root_10305817 := by
  apply coveredBy_split_literal root_10305817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10305822 small_10305817_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10305822
  · exact small_10305817_right_covered
#print axioms cover_10305817

def root_10303735 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10303735 : CoveredBy scale carrier boxes root_10303735 := by
  apply coveredBy_split_literal root_10303735 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3863.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10305817 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3863.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10305817
#print axioms cover_10303735

def root_10299521 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10299521 : CoveredBy scale carrier boxes root_10299521 := by
  apply coveredBy_split_literal root_10299521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0691.root_10299522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10303735 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0691.cover_10299522
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10303735
#print axioms cover_10299521

def root_10362578 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10362578 : CoveredBy scale carrier boxes root_10362578 := by
  apply coveredBy_split_literal root_10362578 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3884.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3885.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3884.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3885.covered
#print axioms cover_10362578

def root_10360282 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10360282 : CoveredBy scale carrier boxes root_10360282 := by
  apply coveredBy_split_literal root_10360282 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3883.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10362578 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3883.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10362578
#print axioms cover_10360282

def root_10299520 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10299520 : CoveredBy scale carrier boxes root_10299520 := by
  apply coveredBy_split_literal root_10299520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10299521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10360282 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10299521
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10360282
#print axioms cover_10299520

def root_10282844 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10282844 : CoveredBy scale carrier boxes root_10282844 := by
  apply coveredBy_split_literal root_10282844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0691.root_10282845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10299520 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0691.cover_10282845
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10299520
#print axioms cover_10282844

def root_10366924 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366924 : CoveredBy scale carrier boxes root_10366924 := by
  apply coveredBy_split_literal root_10366924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3886.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3887.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3886.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3887.covered
#print axioms cover_10366924

def root_10366923 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366923 : CoveredBy scale carrier boxes root_10366923 := by
  apply coveredBy_split_literal root_10366923 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10366924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3888.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10366924
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3888.covered
#print axioms cover_10366923

def root_10366922 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366922 : CoveredBy scale carrier boxes root_10366922 := by
  apply coveredBy_split_literal root_10366922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10366923 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3889.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10366923
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3889.covered
#print axioms cover_10366922

def root_10379208 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10379208 : CoveredBy scale carrier boxes root_10379208 := by
  apply coveredBy_split_literal root_10379208 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3891.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3892.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3891.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3892.covered
#print axioms cover_10379208

def root_10379203 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10379203_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10379203_right_fuel : Nat := 1
def small_10379203_right_count : Nat := 1
def small_10379203_right_encoded : String := "00000000"
theorem small_10379203_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10379203_right_root small_10379203_right_fuel small_10379203_right_count small_10379203_right_encoded = true := by
  decide +kernel
theorem small_10379203_right_covered : CoveredBy scale carrier boxes small_10379203_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10379203_right_root small_10379203_right_fuel small_10379203_right_count small_10379203_right_encoded small_10379203_right_checked

theorem cover_10379203 : CoveredBy scale carrier boxes root_10379203 := by
  apply coveredBy_split_literal root_10379203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10379208 small_10379203_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10379208
  · exact small_10379203_right_covered
#print axioms cover_10379203

def root_10377213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10377213 : CoveredBy scale carrier boxes root_10377213 := by
  apply coveredBy_split_literal root_10377213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3890.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10379203 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3890.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10379203
#print axioms cover_10377213

def root_10377212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10377212 : CoveredBy scale carrier boxes root_10377212 := by
  apply coveredBy_split_literal root_10377212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10377213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3893.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10377213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3893.covered
#print axioms cover_10377212

def root_10377211 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10377211 : CoveredBy scale carrier boxes root_10377211 := by
  apply coveredBy_split_literal root_10377211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10377212 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3894.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10377212
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3894.covered
#print axioms cover_10377211

def root_10366921 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10366921 : CoveredBy scale carrier boxes root_10366921 := by
  apply coveredBy_split_literal root_10366921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10366922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10377211 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10366922
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10377211
#print axioms cover_10366921

def root_10282843 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10282843 : CoveredBy scale carrier boxes root_10282843 := by
  apply coveredBy_split_literal root_10282843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10282844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10366921 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10282844
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10366921
#print axioms cover_10282843

def root_10387379 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10387379 : CoveredBy scale carrier boxes root_10387379 := by
  apply coveredBy_split_literal root_10387379 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3895.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3896.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3895.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3896.covered
#print axioms cover_10387379

def root_10387374 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387374_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387374_right_fuel : Nat := 1
def small_10387374_right_count : Nat := 1
def small_10387374_right_encoded : String := "00000002"
theorem small_10387374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10387374_right_root small_10387374_right_fuel small_10387374_right_count small_10387374_right_encoded = true := by
  decide +kernel
theorem small_10387374_right_covered : CoveredBy scale carrier boxes small_10387374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10387374_right_root small_10387374_right_fuel small_10387374_right_count small_10387374_right_encoded small_10387374_right_checked

theorem cover_10387374 : CoveredBy scale carrier boxes root_10387374 := by
  apply coveredBy_split_literal root_10387374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10387379 small_10387374_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10387379
  · exact small_10387374_right_covered
#print axioms cover_10387374

def root_10387190 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387190_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387190_left_fuel : Nat := 16
def small_10387190_left_count : Nat := 87
def small_10387190_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A912FD00000009120700FC08A912FF12073CFE00000004050001000000000500000006000000090000000312073D0208A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF000000060000000900000003000000011151E8FF08A91303120701020000000108A912FD12073CFC0000000305000100135D4501000000000500010400000005135D8105050000FE00000005135D44FF00000006000000040000000200000006120700FC0500010000000005000000060000000312073D0208A912FD00000006120700FC000000060000000300000001000000041151E8FD0A0000FE115224FF0000000408A913030000000912073D0208A912FF00000006120700FE0000000600000004000000011151E8FF000000060000000400000003"
theorem small_10387190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10387190_left_root small_10387190_left_fuel small_10387190_left_count small_10387190_left_encoded = true := by
  decide +kernel
theorem small_10387190_left_covered : CoveredBy scale carrier boxes small_10387190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10387190_left_root small_10387190_left_fuel small_10387190_left_count small_10387190_left_encoded small_10387190_left_checked

theorem cover_10387190 : CoveredBy scale carrier boxes root_10387190 := by
  apply coveredBy_split_literal root_10387190 small_10387190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10387374 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10387190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10387374
#print axioms cover_10387190

def root_10387185 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387185_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10387185_right_fuel : Nat := 1
def small_10387185_right_count : Nat := 1
def small_10387185_right_encoded : String := "00000001"
theorem small_10387185_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10387185_right_root small_10387185_right_fuel small_10387185_right_count small_10387185_right_encoded = true := by
  decide +kernel
theorem small_10387185_right_covered : CoveredBy scale carrier boxes small_10387185_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10387185_right_root small_10387185_right_fuel small_10387185_right_count small_10387185_right_encoded small_10387185_right_checked

theorem cover_10387185 : CoveredBy scale carrier boxes root_10387185 := by
  apply coveredBy_split_literal root_10387185 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10387190 small_10387185_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10387190
  · exact small_10387185_right_covered
#print axioms cover_10387185

def root_10386967 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386967_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386967_left_fuel : Nat := 18
def small_10386967_left_count : Nat := 101
def small_10386967_left_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE000000061151E8FF00000006000000041151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073CFC0000000308A912FF0000000A120700FE050001000000000500000006000000040000000A12073D0408A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC0000000A00000003000000021151E8FF08A913050000000A12073D0408A912FD00000006120700FC000000060000000300000002000000041151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF12073CFE0000000405000100135D4501000000000500010200000005135D8103050000FC00000005135D44FD00000006000000030000000100000006120700FE0500010000000005000000060000000412073D0408A912FF00000006120700FE0000000600000004000000021151E8FF00000006000000040000000300000002"
theorem small_10386967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10386967_left_root small_10386967_left_fuel small_10386967_left_count small_10386967_left_encoded = true := by
  decide +kernel
theorem small_10386967_left_covered : CoveredBy scale carrier boxes small_10386967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10386967_left_root small_10386967_left_fuel small_10386967_left_count small_10386967_left_encoded small_10386967_left_checked

theorem cover_10386967 : CoveredBy scale carrier boxes root_10386967 := by
  apply coveredBy_split_literal root_10386967 small_10386967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10387185 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10386967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10387185
#print axioms cover_10386967

def root_10386961 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386961_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10386961_left_fuel : Nat := 1
def small_10386961_left_count : Nat := 1
def small_10386961_left_encoded : String := "00000000"
theorem small_10386961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10386961_left_root small_10386961_left_fuel small_10386961_left_count small_10386961_left_encoded = true := by
  decide +kernel
theorem small_10386961_left_covered : CoveredBy scale carrier boxes small_10386961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10386961_left_root small_10386961_left_fuel small_10386961_left_count small_10386961_left_encoded small_10386961_left_checked

theorem cover_10386961 : CoveredBy scale carrier boxes root_10386961 := by
  apply coveredBy_split_literal root_10386961 small_10386961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10386967 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10386961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10386967
#print axioms cover_10386961

def root_10386960 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10386960 : CoveredBy scale carrier boxes root_10386960 := by
  apply coveredBy_split_literal root_10386960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10386961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3897.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10386961
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3897.covered
#print axioms cover_10386960

def root_10392987 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10392987 : CoveredBy scale carrier boxes root_10392987 := by
  apply coveredBy_split_literal root_10392987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3898.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3899.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3898.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3899.covered
#print axioms cover_10392987

def root_10386959 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10386959 : CoveredBy scale carrier boxes root_10386959 := by
  apply coveredBy_split_literal root_10386959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10386960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10392987 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10386960
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10392987
#print axioms cover_10386959

def root_10396223 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10396223_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10396223_right_fuel : Nat := 26
def small_10396223_right_count : Nat := 435
def small_10396223_right_encoded : String := "115225010A0001021151E903000000010A0001041151E905000000020A0000FC115224FD000000030A00010800000006115224FF0000000408A9130112070100000000000000000612073D0008A912FD00000006120700FC0000000600000003000000001151E8FD0000000600000003115225050A0000FC115224FD000000030A0001081151E8FF08A9130112070100000000000000000612073D0008A9130512070104000000020000000A000000060000000000000004115224FF0000000408A91301120701000000000008A9130512070104000000020000000712073D0408A912FD00000006120700FC08A912FF0000000600000007000000030000000212073D0008A91305120701040000000208A912FD12073CFC0000000308A912FF000000071207010800000004050001020000000700000005120700FC08A912FF0000000712070108000000040500010200000007000000050000000312073D0408A912FD12073CFC0000000308A912FF0000000A120701080000000405000102135D4503000000010CFD9C01000000070000000A0000000A120700FC08A912FF12073D080000000700000004120701080000000405000102135D4503000000010CFD9C01000000070F350D000000000700000000135D81030CFD9C010F34D10000000000000000050000000A000000010000000300000002000000001151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A91305000000080000000612073D000000000A000000000000000300000002115225030A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF08A9130112070100000000000000000612073D0008A91303120701020000000108A912FD00000006120700FC0000000600000003000000060000000000000004115224FF0000000408A91301120701000000000008A913030000000A12073D020000000A0000000112073D0008A91303120701020000000108A912FD12073CFC0000000308A912FF12073D0805000104135D4505000000020CFD9C010000000A0F350D000000000A000000000000000A000000040000000A120700FC0000000A0000000312073D0208A912FD0000000A120700FC0000000A0000000300000001000000001151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A913030000000A0000000612073D0008A91303120701020000000108A912FF12073D0805000104135D450500000002050000FC0000000600000005000000050000000412070108000000040000000512073D0208A912FF0000000612070108000000040000000A000000010000000000000003115225050A0000FC115224FD000000030A0001081151E8FF08A91301120701000000000008A91303120701020000000108A913050000000A0000000A0000000A12073D0008A91303120701020000000108A9130512070104000000020000000A12073D0408A912FD12073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000060F350D0004548A0313867102000000010CFD9C050F34D104000000020000000700000006000000060000000000000004135D80FF000000040CFD9C010000000A0F350D0004548A0313867102000000010CFD9C050000000A0F350D040000000A000000020000000A00000000120700FC0000000A000000030000000212073D0208A913050000000A12073D0408A912FD000000060000000A00000002000000010000000000000004115224FF0000000408A91301120701000000000008A9130312070102000000010000000512073D0208A9130512070104000000020000000512073D0408A912FD12073CFC0000000300000005120700FC08A912FF0000000A12070108000000040000000500000003000000020000000112073D0008A91303120701020000000108A9130512070104000000020000000512073D0408A912FD12073CFC00000003000000050000000A0000000212073D0208A91305120701040000000208A912FD12073CFC0000000300000005120700FC08A912FF0000000A1207010800000004000000050000000312073D0408A912FD0000000A0000000A0000000200000001000000001151E8FD0A0001081151E8FF08A91301120701000000000008A913031207010200000001000000050000000612073D0008A91303120701020000000108A9130512070104000000020000000512073D04050000FC135D80FD0000000305000108135D44FF000000060000000400000005000000050000000212073D0208A9130512070104000000020000000A000000060000000100000000000000040000000500000003000000020000000100000000"
theorem small_10396223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10396223_right_root small_10396223_right_fuel small_10396223_right_count small_10396223_right_encoded = true := by
  decide +kernel
theorem small_10396223_right_covered : CoveredBy scale carrier boxes small_10396223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10396223_right_root small_10396223_right_fuel small_10396223_right_count small_10396223_right_encoded small_10396223_right_checked

theorem cover_10396223 : CoveredBy scale carrier boxes root_10396223 := by
  apply coveredBy_split_literal root_10396223 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3900.root small_10396223_right_root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3900.covered
  · exact small_10396223_right_covered
#print axioms cover_10396223

def root_10396222 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10396222 : CoveredBy scale carrier boxes root_10396222 := by
  apply coveredBy_split_literal root_10396222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10396223 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3901.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10396223
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3901.covered
#print axioms cover_10396222

def root_10386958 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10386958 : CoveredBy scale carrier boxes root_10386958 := by
  apply coveredBy_split_literal root_10386958 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10386959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10396222 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10386959
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10396222
#print axioms cover_10386958

def root_10402191 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10402191 : CoveredBy scale carrier boxes root_10402191 := by
  apply coveredBy_split_literal root_10402191 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3902.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3903.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3902.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3903.covered
#print axioms cover_10402191

def root_10402190 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10402190 : CoveredBy scale carrier boxes root_10402190 := by
  apply coveredBy_split_literal root_10402190 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.root_10402191 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3904.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696.cover_10402191
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3904.covered
#print axioms cover_10402190

def root_10407470 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10407470 : CoveredBy scale carrier boxes root_10407470 := by
  apply coveredBy_split_literal root_10407470 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3905.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3906.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3905.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3906.covered
#print axioms cover_10407470

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0696
