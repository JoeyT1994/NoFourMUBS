import TaoBundleAssembly0628
import TaoBundleAssembly0629
import TaoBundleAssembly0630
import TaoBundleChunkBatch0864
import TaoBundleChunkBatch0865
import TaoBundleChunkBatch0866
import TaoBundleChunkBatch0867
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631
def root_9221280 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9221280_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9221280_left_fuel : Nat := 19
def small_9221280_left_count : Nat := 95
def small_9221280_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FF00000008120700FE00000008000000040000000800000001120701020000000108A912FB12073CFA0000000208A912FF00000008120700FE0000000700000004120700FA08A912FF00000008120700FE00000008000000040000000212073D0008A912F912073D0208A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D44FD0CFD9C01000000080000000700000003135D80FD000000030CFD9C010F34D10000000000000000080F350D000CFD9BF90F350D020CFD9BFB0000000700000008000000010F34D102000000010000000700000000120700FE0000000700000004120700FA08A912FF00000008000000080000000200000001120701020000000108A912FB0000000700000008000000001151E8FF08A913010000000812073D0008A912F912073D02000000080000000100000008000000000000000400000003"
theorem small_9221280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9221280_left_root small_9221280_left_fuel small_9221280_left_count small_9221280_left_encoded = true := by
  decide +kernel
theorem small_9221280_left_covered : CoveredBy scale carrier boxes small_9221280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9221280_left_root small_9221280_left_fuel small_9221280_left_count small_9221280_left_encoded small_9221280_left_checked

theorem cover_9221280 : CoveredBy scale carrier boxes root_9221280 := by
  apply coveredBy_split_literal root_9221280 small_9221280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0630.root_9221484 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9221280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0630.cover_9221484
#print axioms cover_9221280

def root_9221274 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9221274_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9221274_left_fuel : Nat := 1
def small_9221274_left_count : Nat := 1
def small_9221274_left_encoded : String := "00000002"
theorem small_9221274_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9221274_left_root small_9221274_left_fuel small_9221274_left_count small_9221274_left_encoded = true := by
  decide +kernel
theorem small_9221274_left_covered : CoveredBy scale carrier boxes small_9221274_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9221274_left_root small_9221274_left_fuel small_9221274_left_count small_9221274_left_encoded small_9221274_left_checked

theorem cover_9221274 : CoveredBy scale carrier boxes root_9221274 := by
  apply coveredBy_split_literal root_9221274 small_9221274_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9221280 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9221274_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9221280
#print axioms cover_9221274

def root_9221273 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9221273 : CoveredBy scale carrier boxes root_9221273 := by
  apply coveredBy_split_literal root_9221273 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9221274 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3454.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9221274
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3454.covered
#print axioms cover_9221273

def root_9221267 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9221267_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9221267_left_fuel : Nat := 1
def small_9221267_left_count : Nat := 1
def small_9221267_left_encoded : String := "00000001"
theorem small_9221267_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9221267_left_root small_9221267_left_fuel small_9221267_left_count small_9221267_left_encoded = true := by
  decide +kernel
theorem small_9221267_left_covered : CoveredBy scale carrier boxes small_9221267_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9221267_left_root small_9221267_left_fuel small_9221267_left_count small_9221267_left_encoded small_9221267_left_checked

theorem cover_9221267 : CoveredBy scale carrier boxes root_9221267 := by
  apply coveredBy_split_literal root_9221267 small_9221267_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9221273 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9221267_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9221273
#print axioms cover_9221267

def root_9213111 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9213111 : CoveredBy scale carrier boxes root_9213111 := by
  apply coveredBy_split_literal root_9213111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0629.root_9213112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9221267 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0629.cover_9213112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9221267
#print axioms cover_9213111

def root_9213106 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213106_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213106_right_fuel : Nat := 1
def small_9213106_right_count : Nat := 1
def small_9213106_right_encoded : String := "00000000"
theorem small_9213106_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213106_right_root small_9213106_right_fuel small_9213106_right_count small_9213106_right_encoded = true := by
  decide +kernel
theorem small_9213106_right_covered : CoveredBy scale carrier boxes small_9213106_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213106_right_root small_9213106_right_fuel small_9213106_right_count small_9213106_right_encoded small_9213106_right_checked

theorem cover_9213106 : CoveredBy scale carrier boxes root_9213106 := by
  apply coveredBy_split_literal root_9213106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9213111 small_9213106_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9213111
  · exact small_9213106_right_covered
#print axioms cover_9213106

def root_9179618 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179618 : CoveredBy scale carrier boxes root_9179618 := by
  apply coveredBy_split_literal root_9179618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.root_9179619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9213106 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0628.cover_9179619
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9213106
#print axioms cover_9179618

def root_9233002 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9233002 : CoveredBy scale carrier boxes root_9233002 := by
  apply coveredBy_split_literal root_9233002 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3455.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3456.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3455.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3456.covered
#print axioms cover_9233002

def root_9232997 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9232997_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9232997_right_fuel : Nat := 1
def small_9232997_right_count : Nat := 1
def small_9232997_right_encoded : String := "00000001"
theorem small_9232997_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9232997_right_root small_9232997_right_fuel small_9232997_right_count small_9232997_right_encoded = true := by
  decide +kernel
theorem small_9232997_right_covered : CoveredBy scale carrier boxes small_9232997_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9232997_right_root small_9232997_right_fuel small_9232997_right_count small_9232997_right_encoded small_9232997_right_checked

theorem cover_9232997 : CoveredBy scale carrier boxes root_9232997 := by
  apply coveredBy_split_literal root_9232997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9233002 small_9232997_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9233002
  · exact small_9232997_right_covered
#print axioms cover_9232997

def root_9232996 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9232996 : CoveredBy scale carrier boxes root_9232996 := by
  apply coveredBy_split_literal root_9232996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9232997 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3457.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9232997
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3457.covered
#print axioms cover_9232996

def root_9232991 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9232991_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9232991_right_fuel : Nat := 1
def small_9232991_right_count : Nat := 1
def small_9232991_right_encoded : String := "00000000"
theorem small_9232991_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9232991_right_root small_9232991_right_fuel small_9232991_right_count small_9232991_right_encoded = true := by
  decide +kernel
theorem small_9232991_right_covered : CoveredBy scale carrier boxes small_9232991_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9232991_right_root small_9232991_right_fuel small_9232991_right_count small_9232991_right_encoded small_9232991_right_checked

theorem cover_9232991 : CoveredBy scale carrier boxes root_9232991 := by
  apply coveredBy_split_literal root_9232991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9232996 small_9232991_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9232996
  · exact small_9232991_right_covered
#print axioms cover_9232991

def root_9232641 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9232641_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9232641_left_fuel : Nat := 20
def small_9232641_left_count : Nat := 161
def small_9232641_left_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0000FE000000071151E909000000040000000500000003115224FD000000030A0000FE1152250908A912FB12073CFA0000000208A912FD12073D0608A91309120700FE00000005000000040000000500000003120701060000000308A91309120700FE000000050000000400000005120700FA0000000500000002000000041151E9090000000408A912FB12073CFA0000000208A912FD000000070000000A120700FA00000005000000021151E8FB0A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE00000007000000040000000700000003120701060000000308A91309120700FE0500010000000005135D8101050001020000000500000007000000000000000412073CFE000000040500010000000007135D810105000102135D44F9050000FA00000005135D44FB0000000700000002000000010000000700000000000000041151E90900000004000000070000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A912F912073D0208A912FB12073CFA0000000208A912FD00000007120701060000000308A91309120700FE000000050000000400000007120700FA08A912FD00000005120701060000000308A9130900000005000000070000000200000001120701020000000108A912FB00000007120700FA0000000700000002000000041151E90900000004000000071151E8FB0A00010600000007115224FD000000030A0000FE000000071151E909000000040000000700000002"
theorem small_9232641_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9232641_left_root small_9232641_left_fuel small_9232641_left_count small_9232641_left_encoded = true := by
  decide +kernel
theorem small_9232641_left_covered : CoveredBy scale carrier boxes small_9232641_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9232641_left_root small_9232641_left_fuel small_9232641_left_count small_9232641_left_encoded small_9232641_left_checked

theorem cover_9232641 : CoveredBy scale carrier boxes root_9232641 := by
  apply coveredBy_split_literal root_9232641 small_9232641_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9232991 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9232641_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9232991
#print axioms cover_9232641

def root_9179617 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179617 : CoveredBy scale carrier boxes root_9179617 := by
  apply coveredBy_split_literal root_9179617 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9179618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9232641 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9179618
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9232641
#print axioms cover_9179617

def root_9238256 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9238256 : CoveredBy scale carrier boxes root_9238256 := by
  apply coveredBy_split_literal root_9238256 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3458.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3459.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3458.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3459.covered
#print axioms cover_9238256

def root_9179616 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179616 : CoveredBy scale carrier boxes root_9179616 := by
  apply coveredBy_split_literal root_9179616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9179617 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9238256 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9179617
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9238256
#print axioms cover_9179616

def root_9246219 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9246219 : CoveredBy scale carrier boxes root_9246219 := by
  apply coveredBy_split_literal root_9246219 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3462.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3463.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3462.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3463.covered
#print axioms cover_9246219

def root_9246213 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246213_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246213_left_fuel : Nat := 1
def small_9246213_left_count : Nat := 1
def small_9246213_left_encoded : String := "00000003"
theorem small_9246213_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246213_left_root small_9246213_left_fuel small_9246213_left_count small_9246213_left_encoded = true := by
  decide +kernel
theorem small_9246213_left_covered : CoveredBy scale carrier boxes small_9246213_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246213_left_root small_9246213_left_fuel small_9246213_left_count small_9246213_left_encoded small_9246213_left_checked

theorem cover_9246213 : CoveredBy scale carrier boxes root_9246213 := by
  apply coveredBy_split_literal root_9246213 small_9246213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246219 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9246213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246219
#print axioms cover_9246213

def root_9246212 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246212_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246212_right_fuel : Nat := 19
def small_9246212_right_count : Nat := 247
def small_9246212_right_encoded : String := "12073D0605000100135D450100000000050000FE135D80FF000000040CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A8702000000050F878CF9000000010C9A86FA000000050F8750FB028001000000000513D7ED01078000FE000000050000000700000000000000020000000500000005000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA000000050F8750FB028001000000000513D7ED01078000FE00000005128A40FF000000070000000400000000000000020F350D0600000005000000030F34D0FA0000000500000002135D44FF0CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A8702000000070F878CF9000000010C9A86FA0F878CFB0000000200000007000000070F350D060C9A8702000000050F878CF9000000010C9A86FA000000050F8750FB0C9A8706000000050000000700000002000000030F34D0FA0000000500000002000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0000000A0F8750FB028001000000000700000007000000020F350D060C9A86FA0F878CFB00000002000000050F8750FB0C9A87060F87510700000003000000050000000700000002000000030F34D0FA0000000A0000000200000004135D8101050000FE135D80FF000000040CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87020F8750F90C9A86FA0000000900000007000000010F878CF9000000010C9A86FA000000090F8750FB0000000700000002000000090F34D0FA0CFD9C070F34D106000000030C9A870200000005000000090000000500000002000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA000000090F8750FB0000000900000002000000090F34D0FA0000000900000002135D44FF0CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A8702000000070F878CF9000000010C9A86FA0F878CFB0000000200000007000000070F350D060C9A87020F8750F90C9A86FA00000009000000070000000100000009000000030F34D0FA0CFD9C070F34D106000000030C9A8702000000070F878CF9000000010780010000000007000000070000000900000002000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0F878CFB0000000207800100000000070000000700000007000000090F34D0FA0CFD9C070F34D106000000030000000A0000000900000002000000040000000000000003"
theorem small_9246212_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246212_right_root small_9246212_right_fuel small_9246212_right_count small_9246212_right_encoded = true := by
  decide +kernel
theorem small_9246212_right_covered : CoveredBy scale carrier boxes small_9246212_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246212_right_root small_9246212_right_fuel small_9246212_right_count small_9246212_right_encoded small_9246212_right_checked

theorem cover_9246212 : CoveredBy scale carrier boxes root_9246212 := by
  apply coveredBy_split_literal root_9246212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246213 small_9246212_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246213
  · exact small_9246212_right_covered
#print axioms cover_9246212

def root_9246206 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246206_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246206_left_fuel : Nat := 1
def small_9246206_left_count : Nat := 1
def small_9246206_left_encoded : String := "00000002"
theorem small_9246206_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246206_left_root small_9246206_left_fuel small_9246206_left_count small_9246206_left_encoded = true := by
  decide +kernel
theorem small_9246206_left_covered : CoveredBy scale carrier boxes small_9246206_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246206_left_root small_9246206_left_fuel small_9246206_left_count small_9246206_left_encoded small_9246206_left_checked

theorem cover_9246206 : CoveredBy scale carrier boxes root_9246206 := by
  apply coveredBy_split_literal root_9246206 small_9246206_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246212 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9246206_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246212
#print axioms cover_9246206

def root_9246205 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246205_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246205_right_fuel : Nat := 16
def small_9246205_right_count : Nat := 81
def small_9246205_right_encoded : String := "120700FA08A91307120701060000000305000100135D4501000000000000000A135D8101050000FE135D80FF000000040CFD9BF90F350D02045489FB1386ACFA0000000204548A0713867106000000030C9A8702000000050F878CF900000001000000080000000500000005000000010F34D102000000010000000A135D44FF0CFD9BF90F350D02045489FB1386ACFA0000000204548A07000000081386AD060C9A8702000000070000000A00000003138670FA0000000A00000002000000010F34D1020000000100000008000000040000000012073D060500010000000005135D8101050000FE00000005135D44FF0CFD9BF90F350D02045489FB1386ACFA000000020CFD9C070F34D106000000030C9A8702000000050000000A0000000500000005000000010F34D102000000010000000A00000004000000000000000300000002"
theorem small_9246205_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246205_right_root small_9246205_right_fuel small_9246205_right_count small_9246205_right_encoded = true := by
  decide +kernel
theorem small_9246205_right_covered : CoveredBy scale carrier boxes small_9246205_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246205_right_root small_9246205_right_fuel small_9246205_right_count small_9246205_right_encoded small_9246205_right_checked

theorem cover_9246205 : CoveredBy scale carrier boxes root_9246205 := by
  apply coveredBy_split_literal root_9246205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246206 small_9246205_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246206
  · exact small_9246205_right_covered
#print axioms cover_9246205

def root_9246200 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246200_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246200_right_fuel : Nat := 1
def small_9246200_right_count : Nat := 1
def small_9246200_right_encoded : String := "00000001"
theorem small_9246200_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246200_right_root small_9246200_right_fuel small_9246200_right_count small_9246200_right_encoded = true := by
  decide +kernel
theorem small_9246200_right_covered : CoveredBy scale carrier boxes small_9246200_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246200_right_root small_9246200_right_fuel small_9246200_right_count small_9246200_right_encoded small_9246200_right_checked

theorem cover_9246200 : CoveredBy scale carrier boxes root_9246200 := by
  apply coveredBy_split_literal root_9246200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246205 small_9246200_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246205
  · exact small_9246200_right_covered
#print axioms cover_9246200

def root_9246199 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246199_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246199_right_fuel : Nat := 25
def small_9246199_right_count : Nat := 245
def small_9246199_right_encoded : String := "120701020000000108A912FB12073CFA0000000208A91307120701060000000305000100135D4501000000000000000A135D8101050000FE135D80FF00000004045489F91386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002078001000000000A128A7D0100000008000000000F8750FB07800100128A410100000000078000FE128A7CFF00000004067ECE7912EA9502022A4587000000080000000A000000010000000A128A40FF0000000A00000004128A7D01078000FE128A7CFF00000004067ECE7912EA9502022A458700000008000000090000000112EA590200000001022A45870000000800000006128A40FF067ECE7900000008000000080000000400000000000000021386AD060C9A86FA0F878CFB000000020000000A0F8750FB07800100128A4101000000000000000A128A7D01078000FE00000006128A40FF00000009000000040000000000000002000000030F34D0FA0000000A000000020000000113867102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0000000A0F8750FB078001000000000A128A7D01078000FE128A7CFF00000004022A457900000006000000060000000800000000000000020000000A0000000A135D44FF045489F91386AD020CFD9BFB0F350CFA0000000204548A071386710600000003000000081386AD060C9A86FA0000000A0F8750FB078001000000000A0000000700000002000000030F34D0FA00000008000000020000000113867102000000010000000A000000040000000012073D0605000100135D450100000000050000FE135D80FF00000004045489F91386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A000000060000000A000000010000000A135D44FF045489F91386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0000000A0000000A000000010000000A00000004135D8101050000FE135D80FF00000004045489F91386AD020CFD9BFB000000090F34D0FA00000009000000020000000113867102000000010CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000006000000060F34D0FA0000000900000002135D44FF045489F91386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0000000A00000007000000090F34D0FA0000000A000000020000000113867102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A000000090000000A000000040000000000000003120700FA08A9130712070106000000030000000A0000000A00000002"
theorem small_9246199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246199_right_root small_9246199_right_fuel small_9246199_right_count small_9246199_right_encoded = true := by
  decide +kernel
theorem small_9246199_right_covered : CoveredBy scale carrier boxes small_9246199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246199_right_root small_9246199_right_fuel small_9246199_right_count small_9246199_right_encoded small_9246199_right_checked

theorem cover_9246199 : CoveredBy scale carrier boxes root_9246199 := by
  apply coveredBy_split_literal root_9246199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246200 small_9246199_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246200
  · exact small_9246199_right_covered
#print axioms cover_9246199

def root_9246194 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246194_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9246194_right_fuel : Nat := 1
def small_9246194_right_count : Nat := 1
def small_9246194_right_encoded : String := "00000004"
theorem small_9246194_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9246194_right_root small_9246194_right_fuel small_9246194_right_count small_9246194_right_encoded = true := by
  decide +kernel
theorem small_9246194_right_covered : CoveredBy scale carrier boxes small_9246194_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9246194_right_root small_9246194_right_fuel small_9246194_right_count small_9246194_right_encoded small_9246194_right_checked

theorem cover_9246194 : CoveredBy scale carrier boxes root_9246194 := by
  apply coveredBy_split_literal root_9246194 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246199 small_9246194_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246199
  · exact small_9246194_right_covered
#print axioms cover_9246194

def root_9243228 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9243228 : CoveredBy scale carrier boxes root_9243228 := by
  apply coveredBy_split_literal root_9243228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3461.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9246194 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3461.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9246194
#print axioms cover_9243228

def root_9243223 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243223_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243223_right_fuel : Nat := 1
def small_9243223_right_count : Nat := 1
def small_9243223_right_encoded : String := "00000003"
theorem small_9243223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9243223_right_root small_9243223_right_fuel small_9243223_right_count small_9243223_right_encoded = true := by
  decide +kernel
theorem small_9243223_right_covered : CoveredBy scale carrier boxes small_9243223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9243223_right_root small_9243223_right_fuel small_9243223_right_count small_9243223_right_encoded small_9243223_right_checked

theorem cover_9243223 : CoveredBy scale carrier boxes root_9243223 := by
  apply coveredBy_split_literal root_9243223 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9243228 small_9243223_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9243228
  · exact small_9243223_right_covered
#print axioms cover_9243223

def root_9243087 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243087_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243087_left_fuel : Nat := 16
def small_9243087_left_count : Nat := 63
def small_9243087_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FB00000005120700FA000000050000000200000001120701020000000108A912FB00000006120700FA08A912FF0000000500000006000000021151E8FF08A912F912073D0208A912FB12073CFA000000020500010000000005135D81010500010600000005135D8107050000FE00000005135D44FF0CFD9BF9000000090F34D1020000000100000009000000040000000300000000120700FA000000050000000200000001120701020000000108A912FB12073CFA000000020500010000000005135D81010000000900000000120700FA000000050000000200000004"
theorem small_9243087_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9243087_left_root small_9243087_left_fuel small_9243087_left_count small_9243087_left_encoded = true := by
  decide +kernel
theorem small_9243087_left_covered : CoveredBy scale carrier boxes small_9243087_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9243087_left_root small_9243087_left_fuel small_9243087_left_count small_9243087_left_encoded small_9243087_left_checked

theorem cover_9243087 : CoveredBy scale carrier boxes root_9243087 := by
  apply coveredBy_split_literal root_9243087 small_9243087_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9243223 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9243087_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9243223
#print axioms cover_9243087

def root_9243081 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243081_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9243081_left_fuel : Nat := 1
def small_9243081_left_count : Nat := 1
def small_9243081_left_encoded : String := "00000002"
theorem small_9243081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9243081_left_root small_9243081_left_fuel small_9243081_left_count small_9243081_left_encoded = true := by
  decide +kernel
theorem small_9243081_left_covered : CoveredBy scale carrier boxes small_9243081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9243081_left_root small_9243081_left_fuel small_9243081_left_count small_9243081_left_encoded small_9243081_left_checked

theorem cover_9243081 : CoveredBy scale carrier boxes root_9243081 := by
  apply coveredBy_split_literal root_9243081 small_9243081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9243087 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9243081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9243087
#print axioms cover_9243081

def root_9252805 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252805_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252805_right_fuel : Nat := 18
def small_9252805_right_count : Nat := 105
def small_9252805_right_encoded : String := "12073D0608A912FF12073CFE0000000405000100135D450100000000050000FA135D80FB000000020CFD9BF90F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A8702000000050F878CF9000000010C9A86FE000000050F8750FF00000008000000040000000500000005000000010F34D102000000010CFD9C070000000600000006135D44FB0CFD9BF90F350D020CFD9C070F34D106000000030000000800000008000000010F34D102000000010000000600000002135D8101050000FA135D80FB000000020CFD9BF90F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8750F900000008000000010F878CF900000001000000060F34D0FE00000006000000040F350D060CFD9BFF000000060000000600000003000000010F34D1020000000100000006135D44FB0CFD9BF90F350D020CFD9C070F34D106000000030CFD9BFF000000060000000600000008000000010F34D10200000001000000060000000200000000120700FE0500010000000005135D8101050000FA0000000500000006000000000000000400000003"
theorem small_9252805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252805_right_root small_9252805_right_fuel small_9252805_right_count small_9252805_right_encoded = true := by
  decide +kernel
theorem small_9252805_right_covered : CoveredBy scale carrier boxes small_9252805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252805_right_root small_9252805_right_fuel small_9252805_right_count small_9252805_right_encoded small_9252805_right_checked

theorem cover_9252805 : CoveredBy scale carrier boxes root_9252805 := by
  apply coveredBy_split_literal root_9252805 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3464.root small_9252805_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3464.covered
  · exact small_9252805_right_covered
#print axioms cover_9252805

def root_9252800 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252800_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252800_right_fuel : Nat := 1
def small_9252800_right_count : Nat := 1
def small_9252800_right_encoded : String := "00000001"
theorem small_9252800_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252800_right_root small_9252800_right_fuel small_9252800_right_count small_9252800_right_encoded = true := by
  decide +kernel
theorem small_9252800_right_covered : CoveredBy scale carrier boxes small_9252800_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252800_right_root small_9252800_right_fuel small_9252800_right_count small_9252800_right_encoded small_9252800_right_checked

theorem cover_9252800 : CoveredBy scale carrier boxes root_9252800 := by
  apply coveredBy_split_literal root_9252800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9252805 small_9252800_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9252805
  · exact small_9252800_right_covered
#print axioms cover_9252800

def root_9252799 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252799_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252799_right_fuel : Nat := 14
def small_9252799_right_count : Nat := 41
def small_9252799_right_encoded : String := "120701020000000108A91307120701060000000308A912FF12073CFE0000000405000100135D450100000000050000FA135D80FB00000002045489F9000000060000000600000006135D8101050000FA135D80FB00000002045489F91386AD0204548A07138671060000000300000006000000060000000113867102000000010000000600000006000000000000000612073D0608A912FF000000060000000600000003"
theorem small_9252799_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252799_right_root small_9252799_right_fuel small_9252799_right_count small_9252799_right_encoded = true := by
  decide +kernel
theorem small_9252799_right_covered : CoveredBy scale carrier boxes small_9252799_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252799_right_root small_9252799_right_fuel small_9252799_right_count small_9252799_right_encoded small_9252799_right_checked

theorem cover_9252799 : CoveredBy scale carrier boxes root_9252799 := by
  apply coveredBy_split_literal root_9252799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9252800 small_9252799_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9252800
  · exact small_9252799_right_covered
#print axioms cover_9252799

def root_9252793 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252793_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9252793_left_fuel : Nat := 1
def small_9252793_left_count : Nat := 1
def small_9252793_left_encoded : String := "00000004"
theorem small_9252793_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9252793_left_root small_9252793_left_fuel small_9252793_left_count small_9252793_left_encoded = true := by
  decide +kernel
theorem small_9252793_left_covered : CoveredBy scale carrier boxes small_9252793_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9252793_left_root small_9252793_left_fuel small_9252793_left_count small_9252793_left_encoded small_9252793_left_checked

theorem cover_9252793 : CoveredBy scale carrier boxes root_9252793 := by
  apply coveredBy_split_literal root_9252793 small_9252793_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9252799 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9252793_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9252799
#print axioms cover_9252793

def root_9257330 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257330_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257330_right_fuel : Nat := 17
def small_9257330_right_count : Nat := 77
def small_9257330_right_encoded : String := "128A40FF022A458713E1C506000000030DE7CA020E5FD8F903C0010013A511010000000008C000FA000000060000000900000007000000010E6014F90000000103C0010013A511010000000008C000FA11FC24FB00000002064000FE12FFACFF00000004011523470000000913F895060DAED8790E96610200000006000000010E96250200000001032001000000000900000007000000030000000611FBE8FB064000FE12FFACFF0000000400000009000000050000000213A54D0108C000FA11FC24FB00000002064000FE12FFACFF000000040115234713F8590600000003000000050000000700000005000000050000000013E201060DE7CA02000000070E6014F90000000103C0010013A511010000000008C000FA11FC24FB000000020000000700000007000000070000000300000004"
theorem small_9257330_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9257330_right_root small_9257330_right_fuel small_9257330_right_count small_9257330_right_encoded = true := by
  decide +kernel
theorem small_9257330_right_covered : CoveredBy scale carrier boxes small_9257330_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9257330_right_root small_9257330_right_fuel small_9257330_right_count small_9257330_right_encoded small_9257330_right_checked

theorem cover_9257330 : CoveredBy scale carrier boxes root_9257330 := by
  apply coveredBy_split_literal root_9257330 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3465.root small_9257330_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3465.covered
  · exact small_9257330_right_covered
#print axioms cover_9257330

def root_9257324 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257324_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257324_left_fuel : Nat := 1
def small_9257324_left_count : Nat := 1
def small_9257324_left_encoded : String := "00000002"
theorem small_9257324_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9257324_left_root small_9257324_left_fuel small_9257324_left_count small_9257324_left_encoded = true := by
  decide +kernel
theorem small_9257324_left_covered : CoveredBy scale carrier boxes small_9257324_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9257324_left_root small_9257324_left_fuel small_9257324_left_count small_9257324_left_encoded small_9257324_left_checked

theorem cover_9257324 : CoveredBy scale carrier boxes root_9257324 := by
  apply coveredBy_split_literal root_9257324 small_9257324_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9257330 coord2 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_9257324_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9257330
#print axioms cover_9257324

def root_9257323 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257323_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257323_right_fuel : Nat := 16
def small_9257323_right_count : Nat := 111
def small_9257323_right_encoded : String := "128A40FB078000FE128A7CFF00000004022A458713E1C506000000030DE7CA020E5FD8F903C0010013A5110100000000064000FA12FFACFB0000000208C000FE00000008000000090000000813A54D01064000FA12FFACFB0000000208C000FE00000008000000050000000500000000000000010E6014F90000000103C0010013A5110100000000064000FA12FFACFB0000000208C000FE11FC24FF000000040115234700000009000000080000000912FF70FB08C000FE00000008000000050000000213A54D01064000FA12FFACFB0000000208C000FE11FC24FF000000040115234713F8590600000003000000050000000800000005000000050000000013E201060DE7CA02000000080E6014F90000000103C0010013A51101000000000000000813A54D01064000FA12FFACFB0000000208C000FE0000000611FBE8FF0000000800000004000000080000000000000003128A40FF022A458713E1C506000000030DE7CA020E5FD8F900000005000000010000000513E201060DE7CA02000000070E6014F90000000103C0010013A5110100000000064000FA12FFACFB00000002000000070000000500000005000000030000000400000002"
theorem small_9257323_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9257323_right_root small_9257323_right_fuel small_9257323_right_count small_9257323_right_encoded = true := by
  decide +kernel
theorem small_9257323_right_covered : CoveredBy scale carrier boxes small_9257323_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9257323_right_root small_9257323_right_fuel small_9257323_right_count small_9257323_right_encoded small_9257323_right_checked

theorem cover_9257323 : CoveredBy scale carrier boxes root_9257323 := by
  apply coveredBy_split_literal root_9257323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9257324 small_9257323_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9257324
  · exact small_9257323_right_covered
#print axioms cover_9257323

def root_9257318 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257318_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9257318_right_fuel : Nat := 1
def small_9257318_right_count : Nat := 1
def small_9257318_right_encoded : String := "00000000"
theorem small_9257318_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9257318_right_root small_9257318_right_fuel small_9257318_right_count small_9257318_right_encoded = true := by
  decide +kernel
theorem small_9257318_right_covered : CoveredBy scale carrier boxes small_9257318_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9257318_right_root small_9257318_right_fuel small_9257318_right_count small_9257318_right_encoded small_9257318_right_checked

theorem cover_9257318 : CoveredBy scale carrier boxes root_9257318 := by
  apply coveredBy_split_literal root_9257318 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9257323 small_9257318_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9257323
  · exact small_9257318_right_covered
#print axioms cover_9257318

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631
