import TaoBundleAssembly0460
import TaoBundleAssembly0467
import TaoBundleAssembly0474
import TaoBundleAssembly0477
import TaoBundleAssembly0478
import TaoBundleAssembly0484
import TaoBundleChunkBatch0662
import TaoBundleChunkBatch0663
import TaoBundleChunkBatch0664
import TaoBundleChunkBatch0665
import TaoBundleChunkBatch0666
import TaoBundleChunkBatch0667
import TaoBundleChunkBatch0668
import TaoBundleChunkBatch0669
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485
def root_7033902 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033902_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033902_right_fuel : Nat := 22
def small_7033902_right_count : Nat := 473
def small_7033902_right_encoded : String := "1151E907000000030A0001081151E9090000000408A912F912073D0205000100135D44F705000104135D450500000002050000FC135D81070500010800000009135D81090000000A000000040000000300000009135D8105050000FC135D81070500010800000006135D81090CFD9BF90000000A0F34D102000000010000000600000004000000030000000A0000000200000000135D80F70000000005000104135D450500000002050000FC135D8107050001080000000A135D81090000000A00000004000000030000000A135D8105050000FC135D810705000108135D4509000000040CFD9BF90000000A00000006135D81090CFD9BF90F350D020C9A87020F8750F90000000A000000010000000A000000010F34D102000000010000000600000004000000030000000A0000000200000001120701020000000105000100135D44F705000104135D4505000000020000000A0000000600000000135D80F700000000050001040000000A000000061152250908A912F912073D0208A91309120701080000000405000100135D44F705000104135D450500000002050000FC135D81070CFD9BF90F350D0204548A09000000061386AD080000000A00000004000000010F34D1020000000104548A09000000080000000A00000003135D4507000000030CFD9BF90000000A0F34D1020000000104548A0913867108000000040000000500000005135D8105050000FC135D81070CFD9BF90F350D0204548A0913867108000000040C9A870200000008000000081386AD080C9A87020F8750F90000000A000000010000000A00000004000000010F34D1020000000104548A090000000A1386AD080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D10200000001000000050000000200000000135D80F70000000005000104135D450500000002050000FC135D81070CFD9BF90000000A0F34D102000000010000000A000000030000000A135D8105050000FC135D81070CFD9BF90F350D0204548A090000000A1386AD080C9A87020F8750F90000000A000000010000000500000004000000010F34D102000000010000000500000003000000050000000212073D0805000100135D44F705000104135D450500000002050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F90000000A000000010000000A0F350D080000000A00000004000000010F34D102000000010CFD9C090000000A0F350D080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D102000000010000000A135D8105050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F9028001000000000A0000000A000000010000000A0F350D080C9A87020F8750F90C9A87080000000A0F878D090000000A00000004000000010F878CF9000000010000000A00000004000000010F34D102000000010CFD9C090F34D10800000004028001000000000A000000050F350D080000000A0000000400000003135D4507000000030CFD9BF90F350D020CFD9C090000000A0F350D080000000A00000004000000010F34D102000000010000000A0000000200000000135D80F70000000005000104135D450500000002050000FC135D81070CFD9BF90F350D020CFD9C090000000A0F350D080000000A00000004000000010F34D102000000010000000A00000003135D4507000000030CFD9BF90000000A0000000A135D8105050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F9078001000000000A0000000A000000010000000A0F350D080C9A87020F8750F90C9A87080000000A0F878D090000000A00000004000000010F878CF9000000010000000A00000004000000010F34D102000000010CFD9C090000000A0F350D080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D1020000000100000005000000020000000400000001120701020000000108A91309120701080000000405000100135D44F705000104135D450500000002050000FC135D8107045489F91386AD0204548A09000000081386AD080280010000000008000000050000000400000001138671020000000100000005000000030000000500000005000000000000000512073D0805000100135D44F705000104135D450500000002050000FC135D8107045489F91386AD020CFD9C090F34D108000000040280010013D7B0F70000000A000000000000000A0F350D080000000A000000040000000113867102000000010CFD9C090F34D10800000004000000050F350D08000000060000000400000003135D450700000003045489F90000000A138671020000000100000005135D8105050000FC135D8107045489F91386AD020CFD9C090F34D10800000004000000050F350D0800000006000000040000000113867102000000010CFD9C09000000070000000500000003000000050000000200000000135D80F70000000005000104135D450500000002050000FC135D8107045489F90000000A1386710200000001000000050000000300000005000000050000000400000004"
theorem small_7033902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033902_right_root small_7033902_right_fuel small_7033902_right_count small_7033902_right_encoded = true := by
  decide +kernel
theorem small_7033902_right_covered : CoveredBy scale carrier boxes small_7033902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033902_right_root small_7033902_right_fuel small_7033902_right_count small_7033902_right_encoded small_7033902_right_checked

theorem cover_7033902 : CoveredBy scale carrier boxes root_7033902 := by
  apply coveredBy_split_literal root_7033902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0484.root_7033903 small_7033902_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0484.cover_7033903
  · exact small_7033902_right_covered
#print axioms cover_7033902

def root_7033896 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033896_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033896_left_fuel : Nat := 1
def small_7033896_left_count : Nat := 1
def small_7033896_left_encoded : String := "00000002"
theorem small_7033896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033896_left_root small_7033896_left_fuel small_7033896_left_count small_7033896_left_encoded = true := by
  decide +kernel
theorem small_7033896_left_covered : CoveredBy scale carrier boxes small_7033896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033896_left_root small_7033896_left_fuel small_7033896_left_count small_7033896_left_encoded small_7033896_left_checked

theorem cover_7033896 : CoveredBy scale carrier boxes root_7033896 := by
  apply coveredBy_split_literal root_7033896 small_7033896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7033902 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7033896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7033902
#print axioms cover_7033896

def root_7038476 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7038476 : CoveredBy scale carrier boxes root_7038476 := by
  apply coveredBy_split_literal root_7038476 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2645.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2646.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2645.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2646.covered
#print axioms cover_7038476

def root_7038471 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7038471_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7038471_right_fuel : Nat := 1
def small_7038471_right_count : Nat := 1
def small_7038471_right_encoded : String := "00000002"
theorem small_7038471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7038471_right_root small_7038471_right_fuel small_7038471_right_count small_7038471_right_encoded = true := by
  decide +kernel
theorem small_7038471_right_covered : CoveredBy scale carrier boxes small_7038471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7038471_right_root small_7038471_right_fuel small_7038471_right_count small_7038471_right_encoded small_7038471_right_checked

theorem cover_7038471 : CoveredBy scale carrier boxes root_7038471 := by
  apply coveredBy_split_literal root_7038471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7038476 small_7038471_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7038476
  · exact small_7038471_right_covered
#print axioms cover_7038471

def root_7033895 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7033895 : CoveredBy scale carrier boxes root_7033895 := by
  apply coveredBy_split_literal root_7033895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7033896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7038471 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7033896
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7038471
#print axioms cover_7033895

def root_7033889 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033889_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7033889_left_fuel : Nat := 1
def small_7033889_left_count : Nat := 1
def small_7033889_left_encoded : String := "00000001"
theorem small_7033889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7033889_left_root small_7033889_left_fuel small_7033889_left_count small_7033889_left_encoded = true := by
  decide +kernel
theorem small_7033889_left_covered : CoveredBy scale carrier boxes small_7033889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7033889_left_root small_7033889_left_fuel small_7033889_left_count small_7033889_left_encoded small_7033889_left_checked

theorem cover_7033889 : CoveredBy scale carrier boxes root_7033889 := by
  apply coveredBy_split_literal root_7033889 small_7033889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7033895 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7033889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7033895
#print axioms cover_7033889

def root_6962991 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6962991 : CoveredBy scale carrier boxes root_6962991 := by
  apply coveredBy_split_literal root_6962991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0484.root_6962992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7033889 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0484.cover_6962992
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7033889
#print axioms cover_6962991

def root_6962986 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6962986_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6962986_right_fuel : Nat := 1
def small_6962986_right_count : Nat := 1
def small_6962986_right_encoded : String := "00000000"
theorem small_6962986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6962986_right_root small_6962986_right_fuel small_6962986_right_count small_6962986_right_encoded = true := by
  decide +kernel
theorem small_6962986_right_covered : CoveredBy scale carrier boxes small_6962986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6962986_right_root small_6962986_right_fuel small_6962986_right_count small_6962986_right_encoded small_6962986_right_checked

theorem cover_6962986 : CoveredBy scale carrier boxes root_6962986 := by
  apply coveredBy_split_literal root_6962986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6962991 small_6962986_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6962991
  · exact small_6962986_right_covered
#print axioms cover_6962986

def root_7044004 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7044004 : CoveredBy scale carrier boxes root_7044004 := by
  apply coveredBy_split_literal root_7044004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2648.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2649.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2648.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2649.covered
#print axioms cover_7044004

def root_7043999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043999_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043999_right_fuel : Nat := 1
def small_7043999_right_count : Nat := 1
def small_7043999_right_encoded : String := "00000003"
theorem small_7043999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7043999_right_root small_7043999_right_fuel small_7043999_right_count small_7043999_right_encoded = true := by
  decide +kernel
theorem small_7043999_right_covered : CoveredBy scale carrier boxes small_7043999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7043999_right_root small_7043999_right_fuel small_7043999_right_count small_7043999_right_encoded small_7043999_right_checked

theorem cover_7043999 : CoveredBy scale carrier boxes root_7043999 := by
  apply coveredBy_split_literal root_7043999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7044004 small_7043999_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7044004
  · exact small_7043999_right_covered
#print axioms cover_7043999

def root_7043998 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7043998 : CoveredBy scale carrier boxes root_7043998 := by
  apply coveredBy_split_literal root_7043998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7043999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2650.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7043999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2650.covered
#print axioms cover_7043998

def root_7043993 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043993_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7043993_right_fuel : Nat := 1
def small_7043993_right_count : Nat := 1
def small_7043993_right_encoded : String := "00000002"
theorem small_7043993_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7043993_right_root small_7043993_right_fuel small_7043993_right_count small_7043993_right_encoded = true := by
  decide +kernel
theorem small_7043993_right_covered : CoveredBy scale carrier boxes small_7043993_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7043993_right_root small_7043993_right_fuel small_7043993_right_count small_7043993_right_encoded small_7043993_right_checked

theorem cover_7043993 : CoveredBy scale carrier boxes root_7043993 := by
  apply coveredBy_split_literal root_7043993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7043998 small_7043993_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7043998
  · exact small_7043993_right_covered
#print axioms cover_7043993

def root_7042465 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7042465 : CoveredBy scale carrier boxes root_7042465 := by
  apply coveredBy_split_literal root_7042465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2647.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7043993 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2647.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7043993
#print axioms cover_7042465

def root_7042460 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042460_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042460_right_fuel : Nat := 1
def small_7042460_right_count : Nat := 1
def small_7042460_right_encoded : String := "00000001"
theorem small_7042460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7042460_right_root small_7042460_right_fuel small_7042460_right_count small_7042460_right_encoded = true := by
  decide +kernel
theorem small_7042460_right_covered : CoveredBy scale carrier boxes small_7042460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7042460_right_root small_7042460_right_fuel small_7042460_right_count small_7042460_right_encoded small_7042460_right_checked

theorem cover_7042460 : CoveredBy scale carrier boxes root_7042460 := by
  apply coveredBy_split_literal root_7042460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7042465 small_7042460_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7042465
  · exact small_7042460_right_covered
#print axioms cover_7042460

def root_7051005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7051005 : CoveredBy scale carrier boxes root_7051005 := by
  apply coveredBy_split_literal root_7051005 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2651.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2652.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2651.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2652.covered
#print axioms cover_7051005

def root_7050999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7050999_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7050999_left_fuel : Nat := 1
def small_7050999_left_count : Nat := 1
def small_7050999_left_encoded : String := "00000001"
theorem small_7050999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7050999_left_root small_7050999_left_fuel small_7050999_left_count small_7050999_left_encoded = true := by
  decide +kernel
theorem small_7050999_left_covered : CoveredBy scale carrier boxes small_7050999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7050999_left_root small_7050999_left_fuel small_7050999_left_count small_7050999_left_encoded small_7050999_left_checked

theorem cover_7050999 : CoveredBy scale carrier boxes root_7050999 := by
  apply coveredBy_split_literal root_7050999 small_7050999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7051005 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7050999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7051005
#print axioms cover_7050999

def root_7042459 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7042459 : CoveredBy scale carrier boxes root_7042459 := by
  apply coveredBy_split_literal root_7042459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7042460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7050999 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7042460
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7050999
#print axioms cover_7042459

def root_7042453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042453_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7042453_left_fuel : Nat := 1
def small_7042453_left_count : Nat := 1
def small_7042453_left_encoded : String := "00000000"
theorem small_7042453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7042453_left_root small_7042453_left_fuel small_7042453_left_count small_7042453_left_encoded = true := by
  decide +kernel
theorem small_7042453_left_covered : CoveredBy scale carrier boxes small_7042453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7042453_left_root small_7042453_left_fuel small_7042453_left_count small_7042453_left_encoded small_7042453_left_checked

theorem cover_7042453 : CoveredBy scale carrier boxes root_7042453 := by
  apply coveredBy_split_literal root_7042453 small_7042453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7042459 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7042453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7042459
#print axioms cover_7042453

def root_6962985 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6962985 : CoveredBy scale carrier boxes root_6962985 := by
  apply coveredBy_split_literal root_6962985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6962986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7042453 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6962986
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7042453
#print axioms cover_6962985

def root_6957103 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6957103 : CoveredBy scale carrier boxes root_6957103 := by
  apply coveredBy_split_literal root_6957103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0478.root_6957104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6962985 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0478.cover_6957104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6962985
#print axioms cover_6957103

def root_6921607 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6921607 : CoveredBy scale carrier boxes root_6921607 := by
  apply coveredBy_split_literal root_6921607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6921608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6957103 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6921608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6957103
#print axioms cover_6921607

def root_6815211 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815211 : CoveredBy scale carrier boxes root_6815211 := by
  apply coveredBy_split_literal root_6815211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6815212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6921607 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6815212
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6921607
#print axioms cover_6815211

def root_7056555 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056555 : CoveredBy scale carrier boxes root_7056555 := by
  apply coveredBy_split_literal root_7056555 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2653.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2654.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2653.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2654.covered
#print axioms cover_7056555

def root_7060824 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7060824 : CoveredBy scale carrier boxes root_7060824 := by
  apply coveredBy_split_literal root_7060824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2655.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2656.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2655.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2656.covered
#print axioms cover_7060824

def root_7056554 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056554 : CoveredBy scale carrier boxes root_7056554 := by
  apply coveredBy_split_literal root_7056554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7056555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7060824 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7056555
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7060824
#print axioms cover_7056554

def root_7056553 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056553 : CoveredBy scale carrier boxes root_7056553 := by
  apply coveredBy_split_literal root_7056553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7056554 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2657.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7056554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2657.covered
#print axioms cover_7056553

def root_7067902 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7067902 : CoveredBy scale carrier boxes root_7067902 := by
  apply coveredBy_split_literal root_7067902 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2659.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2660.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2659.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2660.covered
#print axioms cover_7067902

def root_7067896 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7067896_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7067896_left_fuel : Nat := 1
def small_7067896_left_count : Nat := 1
def small_7067896_left_encoded : String := "00000000"
theorem small_7067896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7067896_left_root small_7067896_left_fuel small_7067896_left_count small_7067896_left_encoded = true := by
  decide +kernel
theorem small_7067896_left_covered : CoveredBy scale carrier boxes small_7067896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7067896_left_root small_7067896_left_fuel small_7067896_left_count small_7067896_left_encoded small_7067896_left_checked

theorem cover_7067896 : CoveredBy scale carrier boxes root_7067896 := by
  apply coveredBy_split_literal root_7067896 small_7067896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7067902 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7067896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7067902
#print axioms cover_7067896

def root_7065478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7065478 : CoveredBy scale carrier boxes root_7065478 := by
  apply coveredBy_split_literal root_7065478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2658.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7067896 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2658.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7067896
#print axioms cover_7065478

def root_7065477 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7065477 : CoveredBy scale carrier boxes root_7065477 := by
  apply coveredBy_split_literal root_7065477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7065478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2661.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7065478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2661.covered
#print axioms cover_7065477

def root_7065476 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7065476 : CoveredBy scale carrier boxes root_7065476 := by
  apply coveredBy_split_literal root_7065476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7065477 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2662.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7065477
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2662.covered
#print axioms cover_7065476

def root_7056552 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7056552 : CoveredBy scale carrier boxes root_7056552 := by
  apply coveredBy_split_literal root_7056552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7056553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7065476 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7056553
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7065476
#print axioms cover_7056552

def root_6815210 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815210 : CoveredBy scale carrier boxes root_6815210 := by
  apply coveredBy_split_literal root_6815210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6815211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7056552 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6815211
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7056552
#print axioms cover_6815210

def root_6684590 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684590 : CoveredBy scale carrier boxes root_6684590 := by
  apply coveredBy_split_literal root_6684590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.root_6684591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6815210 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0467.cover_6684591
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6815210
#print axioms cover_6684590

def root_6455930 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455930 : CoveredBy scale carrier boxes root_6455930 := by
  apply coveredBy_split_literal root_6455930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.root_6455931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_6684590 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0460.cover_6455931
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_6684590
#print axioms cover_6455930

def root_7075999 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075999 : CoveredBy scale carrier boxes root_7075999 := by
  apply coveredBy_split_literal root_7075999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2663.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2664.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2663.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2664.covered
#print axioms cover_7075999

def root_7075998 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075998 : CoveredBy scale carrier boxes root_7075998 := by
  apply coveredBy_split_literal root_7075998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7075999 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2665.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7075999
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2665.covered
#print axioms cover_7075998

def root_7081856 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081856_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081856_right_fuel : Nat := 18
def small_7081856_right_count : Nat := 163
def small_7081856_right_encoded : String := "1151E8FD0A0001081151E8FF08A91303120701020000000108A912FB00000005120700FA05000100135D44F7050000FC135D80FD0000000305000108135D44FF000000090000000400000007135D44FD000000050000000300000000135D80F700000000050000FC135D80FD0000000305000108135D44FF000000070000000400000007135D44FD05000108135D44FF000000050000000400000005000000030000000212073D0208A912FB12073CFA0000000205000100135D44F7050000FC135D80FD0000000305000108135D44FF0CFD9C03000000050F350D02000000090000000100000004135D80FF000000040CFD9C030000000500000009135D44FD000000090000000300000000135D80F700000000050000FC135D80FD0000000305000108135D44FF0CFD9C03000000050000000600000004135D80FF000000040CFD9C03000000050F350D020CFD9BFB000000050000000600000001135D44FD05000108135D44FF0CFD9C03000000050F350D02000000060000000100000004135D80FF000000040CFD9C03000000050000000900000003120700FA050001000000000900000006000000020000000100000004115224FF0000000408A91303120701020000000108A912FB12073CFA0000000208A912FF12073D080500010000000009000000050000000400000009120700FA08A912FF000000091207010800000004000000090000000212073D0208A912FB12073CFA0000000208A912FF12073D080500010000000009135D80F700000000050000FC135D80FD000000030CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000005000000090F350D020000000900000001135D44FD00000009000000030000000400000009000000090000000100000003"
theorem small_7081856_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081856_right_root small_7081856_right_fuel small_7081856_right_count small_7081856_right_encoded = true := by
  decide +kernel
theorem small_7081856_right_covered : CoveredBy scale carrier boxes small_7081856_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081856_right_root small_7081856_right_fuel small_7081856_right_count small_7081856_right_encoded small_7081856_right_checked

theorem cover_7081856 : CoveredBy scale carrier boxes root_7081856 := by
  apply coveredBy_split_literal root_7081856 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2666.root small_7081856_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2666.covered
  · exact small_7081856_right_covered
#print axioms cover_7081856

def root_7081850 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081850_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081850_left_fuel : Nat := 1
def small_7081850_left_count : Nat := 1
def small_7081850_left_encoded : String := "00000002"
theorem small_7081850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081850_left_root small_7081850_left_fuel small_7081850_left_count small_7081850_left_encoded = true := by
  decide +kernel
theorem small_7081850_left_covered : CoveredBy scale carrier boxes small_7081850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081850_left_root small_7081850_left_fuel small_7081850_left_count small_7081850_left_encoded small_7081850_left_checked

theorem cover_7081850 : CoveredBy scale carrier boxes root_7081850 := by
  apply coveredBy_split_literal root_7081850 small_7081850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7081856 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7081850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7081856
#print axioms cover_7081850

def root_7081849 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081849_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081849_right_fuel : Nat := 20
def small_7081849_right_count : Nat := 217
def small_7081849_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF08A91303120701020000000108A912FD00000005120700FC05000100135D44F7050000FA135D80FB00000002050001080000000800000007135D44FB000000050000000200000000135D80F700000000050000FA135D80FB00000002050001080000000800000007135D44FB00000008000000020000000312073D0208A912FD12073CFC0000000305000100135D44F7050000FA135D80FB0000000205000108135D44FF0CFD9C03000000050F350D02000000080000000100000004135D80FF000000040CFD9C03000000050000000A135D44FB0500010800000008135D80FF000000040CFD9C03000000050F350D0200000008000000010000000200000000135D80F700000000050000FA135D80FB0000000205000108135D44FF0CFD9C03000000050000000800000004135D80FF000000040CFD9C03000000050F350D020CFD9BFD000000050000000800000001135D44FB0500010800000008135D80FF000000040CFD9C03000000050000000800000002120700FC05000100135D44F70000000A0000000000000008000000030000000100000004115224FF0000000408A91303120701020000000108A912FD12073CFC0000000308A912FF12073D0805000100135D44F70000000500000000000000050000000412070108000000040500010000000006135D80F700000000050000FA0000000600000005120700FC08A912FF12073D08050001000000000A135D80F700000000050000FA0000000A135D44FB04548A03000000050000000A00000002000000041207010800000004000000060000000312073D0208A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000FA0000000A135D44FB0000000A0000000200000000135D80F700000000050000FA135D80FB000000020CFD9C030F34D102000000010CFD9BFD0F350CFC00000003000000050000000A0000000A135D44FB0CFD9C030F34D10200000001000000050000000A000000020000000412070108000000040000000A0000000A000000011151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A9130312070102000000010000000512073D0208A912FF12073D0805000100135D44F70000000500000000000000050000000400000009000000010000000300000002"
theorem small_7081849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081849_right_root small_7081849_right_fuel small_7081849_right_count small_7081849_right_encoded = true := by
  decide +kernel
theorem small_7081849_right_covered : CoveredBy scale carrier boxes small_7081849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081849_right_root small_7081849_right_fuel small_7081849_right_count small_7081849_right_encoded small_7081849_right_checked

theorem cover_7081849 : CoveredBy scale carrier boxes root_7081849 := by
  apply coveredBy_split_literal root_7081849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7081850 small_7081849_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7081850
  · exact small_7081849_right_covered
#print axioms cover_7081849

def root_7081844 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081844_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081844_right_fuel : Nat := 1
def small_7081844_right_count : Nat := 1
def small_7081844_right_encoded : String := "00000001"
theorem small_7081844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081844_right_root small_7081844_right_fuel small_7081844_right_count small_7081844_right_encoded = true := by
  decide +kernel
theorem small_7081844_right_covered : CoveredBy scale carrier boxes small_7081844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081844_right_root small_7081844_right_fuel small_7081844_right_count small_7081844_right_encoded small_7081844_right_checked

theorem cover_7081844 : CoveredBy scale carrier boxes root_7081844 := by
  apply coveredBy_split_literal root_7081844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7081849 small_7081844_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7081849
  · exact small_7081844_right_covered
#print axioms cover_7081844

def root_7081632 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081632_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081632_left_fuel : Nat := 19
def small_7081632_left_count : Nat := 103
def small_7081632_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A912FB12073CFA0000000208A912FD12073CFC0000000305000100135D44F7050001020000000A135D810305000108135D44FF0CFD9BFB0000000A00000006000000040000000A0000000100000000135D80F7000000000500010200000006135D81030500010800000006135D80FF000000040CFD9BFB0000000A00000006000000010000000A120700FA08A912FD00000006000000050000000200000004115224FF0000000408A912FB0000000A120700FA0000000A000000021151E8FD0A0001081151E8FF08A912FB12073CFA000000020500010000000009000000060000000600000004115224FF0000000400000009000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A912FD12073CFC0000000305000100000000080000000800000008000000040000000A1151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912FF12073D0805000100000000090000000900000004000000090000000300000002"
theorem small_7081632_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081632_left_root small_7081632_left_fuel small_7081632_left_count small_7081632_left_encoded = true := by
  decide +kernel
theorem small_7081632_left_covered : CoveredBy scale carrier boxes small_7081632_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081632_left_root small_7081632_left_fuel small_7081632_left_count small_7081632_left_encoded small_7081632_left_checked

theorem cover_7081632 : CoveredBy scale carrier boxes root_7081632 := by
  apply coveredBy_split_literal root_7081632 small_7081632_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7081844 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7081632_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7081844
#print axioms cover_7081632

def root_7081627 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081627_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7081627_right_fuel : Nat := 1
def small_7081627_right_count : Nat := 1
def small_7081627_right_encoded : String := "00000000"
theorem small_7081627_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7081627_right_root small_7081627_right_fuel small_7081627_right_count small_7081627_right_encoded = true := by
  decide +kernel
theorem small_7081627_right_covered : CoveredBy scale carrier boxes small_7081627_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7081627_right_root small_7081627_right_fuel small_7081627_right_count small_7081627_right_encoded small_7081627_right_checked

theorem cover_7081627 : CoveredBy scale carrier boxes root_7081627 := by
  apply coveredBy_split_literal root_7081627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7081632 small_7081627_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7081632
  · exact small_7081627_right_covered
#print axioms cover_7081627

def root_7088486 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088486_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088486_right_fuel : Nat := 27
def small_7088486_right_count : Nat := 339
def small_7088486_right_encoded : String := "12070108000000040CFD9BF70F350D0004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000005000000060F34D0FA0CFD9BFD000000090F34D0FC045489FF1386AD080C9A8700000000060F878CF700000000022A45830000000600000009000000040000000600000003000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF00000005000000090F34D0FC045489FF1386AD080C9A87000000000A0F878CF7000000000C9A86FA0000000A0F8750FB00000005000000020000000400000006000000030F34D0FA0CFD9BFD000000090F34D0FC045489FF1386AD080C9A8700000000090F878CF700000000067ECE83000000090000000A0000000400000009000000030000000200000001000000000F34D1000000000004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD000000050F34D0FC00000006000000030F34D0FA0CFD9BFD0F350CFC00000003000000090F34D0FC045489FF1386AD080AD3577710D13D00022A458313E1C502000000010AD3577B000000050000000913E201020AD3577B10D13CFA000000020AD3577D000000050000000600000009000000010000000010D1010000000000022A458313E1C502000000010AD3577B0000000510D100FA000000070000000213E201020AD3577B10D13CFA000000020AD3577D000000050000000610D100FA0AD3577D0000000910D100FC000000070000000300000002000000010000000413867108000000040000000600000003000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF000000051386710800000004000000050F34D0FC045489FF1386AD080C9A86FA0F878CFB000000020AD3577710D13D00067ECE8312EA5902000000010000000512EA95020000000A000000010000000010D1010000000000067ECE8312EA5902000000010000000512EA95020AD3577D10D13CFC000000030000000510D100FC0000000A00000003000000010F8750FB00000005000000020000000413867108000000040C9A86FA0000000600000006000000030F34D0FA0CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030AD3577700000009000000090000000900000004000000090F34D0FC045489FF1386AD080AD3577710D13D00067ECE8312EA5902000000010AD3577B10D13CFA000000020AD3577D0000000910D100FC0000000A000000030000000912EA95020AD3577B10D13CFA000000020AD3577D000000090000000A00000009000000010000000010D1010000000000067ECE8312EA5902000000010AD3577B10D13CFA000000020AD3577D10D13CFC000000030000000510D100FC067ECE7F12EA950809BE353711777D000569AC4300000005134111020BE879BB0000000500000009000000010000000011774100000000000569AC430000000513411102000000080000000100000004000000060000000310D100FA0AD3577D0000000910D100FC067ECE7F12EA950809BE353700000009000000090000000400000007000000030000000212EA95020AD3577B10D13CFA000000020AD3577D10D13CFC00000003067ECE7F12EA950800000009000000040000000910D100FC067ECE7F12EA950809BE35370000000A11774100000000000793F0C3000000080000000A0000000412EA590800000004000000090000000310D100FA0AD3577D0000000910D100FC067ECE7F12EA950809BE3537000000090000000900000004000000090000000300000002000000010000000413867108000000040AD357770000000900000009000000030000000200000001"
theorem small_7088486_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088486_right_root small_7088486_right_fuel small_7088486_right_count small_7088486_right_encoded = true := by
  decide +kernel
theorem small_7088486_right_covered : CoveredBy scale carrier boxes small_7088486_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088486_right_root small_7088486_right_fuel small_7088486_right_count small_7088486_right_encoded small_7088486_right_checked

theorem cover_7088486 : CoveredBy scale carrier boxes root_7088486 := by
  apply coveredBy_split_literal root_7088486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2669.root small_7088486_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2669.covered
  · exact small_7088486_right_covered
#print axioms cover_7088486

def root_7088480 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088480_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088480_left_fuel : Nat := 1
def small_7088480_left_count : Nat := 1
def small_7088480_left_encoded : String := "00000003"
theorem small_7088480_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088480_left_root small_7088480_left_fuel small_7088480_left_count small_7088480_left_encoded = true := by
  decide +kernel
theorem small_7088480_left_covered : CoveredBy scale carrier boxes small_7088480_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088480_left_root small_7088480_left_fuel small_7088480_left_count small_7088480_left_encoded small_7088480_left_checked

theorem cover_7088480 : CoveredBy scale carrier boxes root_7088480 := by
  apply coveredBy_split_literal root_7088480 small_7088480_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7088486 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7088480_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7088486
#print axioms cover_7088480

def root_7088479 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088479 : CoveredBy scale carrier boxes root_7088479 := by
  apply coveredBy_split_literal root_7088479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7088480 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2670.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7088480
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2670.covered
#print axioms cover_7088479

def root_7088473 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088473_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088473_left_fuel : Nat := 1
def small_7088473_left_count : Nat := 1
def small_7088473_left_encoded : String := "00000002"
theorem small_7088473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088473_left_root small_7088473_left_fuel small_7088473_left_count small_7088473_left_encoded = true := by
  decide +kernel
theorem small_7088473_left_covered : CoveredBy scale carrier boxes small_7088473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088473_left_root small_7088473_left_fuel small_7088473_left_count small_7088473_left_encoded small_7088473_left_checked

theorem cover_7088473 : CoveredBy scale carrier boxes root_7088473 := by
  apply coveredBy_split_literal root_7088473 small_7088473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7088479 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7088473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7088479
#print axioms cover_7088473

def root_7101935 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7101935 : CoveredBy scale carrier boxes root_7101935 := by
  apply coveredBy_split_literal root_7101935 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2673.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2674.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2673.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2674.covered
#print axioms cover_7101935

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485
