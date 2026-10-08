import TaoBundleAssembly0306
import TaoBundleChunkBatch0395
import TaoBundleChunkBatch0396
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307
def root_4214969 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214969_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214969_left_fuel : Nat := 8
def small_4214969_left_count : Nat := 17
def small_4214969_left_encoded : String := "120700FA08A91307120701060000000308A912FF12073D080500010200000005135D80F90000000100000005000000040000000512073D06000000050000000300000002"
theorem small_4214969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214969_left_root small_4214969_left_fuel small_4214969_left_count small_4214969_left_encoded = true := by
  decide +kernel
theorem small_4214969_left_covered : CoveredBy scale carrier boxes small_4214969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214969_left_root small_4214969_left_fuel small_4214969_left_count small_4214969_left_encoded small_4214969_left_checked

theorem cover_4214969 : CoveredBy scale carrier boxes root_4214969 := by
  apply coveredBy_split_literal root_4214969 small_4214969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4215007 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4214969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4215007
#print axioms cover_4214969

def root_4214963 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214963_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214963_left_fuel : Nat := 1
def small_4214963_left_count : Nat := 1
def small_4214963_left_encoded : String := "00000000"
theorem small_4214963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214963_left_root small_4214963_left_fuel small_4214963_left_count small_4214963_left_encoded = true := by
  decide +kernel
theorem small_4214963_left_covered : CoveredBy scale carrier boxes small_4214963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214963_left_root small_4214963_left_fuel small_4214963_left_count small_4214963_left_encoded small_4214963_left_checked

theorem cover_4214963 : CoveredBy scale carrier boxes root_4214963 := by
  apply coveredBy_split_literal root_4214963 small_4214963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214969 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4214963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214969
#print axioms cover_4214963

def root_4214915 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214915_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214915_left_fuel : Nat := 7
def small_4214915_left_count : Nat := 23
def small_4214915_left_encoded : String := "120700F608A91305120700FA08A91307120701060000000308A912FF0000000700000005000000050000000212073CFA0000000208A91307120701060000000308A912FF000000070000000512073D06000000050000000300000000"
theorem small_4214915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214915_left_root small_4214915_left_fuel small_4214915_left_count small_4214915_left_encoded = true := by
  decide +kernel
theorem small_4214915_left_covered : CoveredBy scale carrier boxes small_4214915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214915_left_root small_4214915_left_fuel small_4214915_left_count small_4214915_left_encoded small_4214915_left_checked

theorem cover_4214915 : CoveredBy scale carrier boxes root_4214915 := by
  apply coveredBy_split_literal root_4214915 small_4214915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214963 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4214915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214963
#print axioms cover_4214915

def root_4214909 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214909_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214909_left_fuel : Nat := 1
def small_4214909_left_count : Nat := 1
def small_4214909_left_encoded : String := "00000004"
theorem small_4214909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214909_left_root small_4214909_left_fuel small_4214909_left_count small_4214909_left_encoded = true := by
  decide +kernel
theorem small_4214909_left_covered : CoveredBy scale carrier boxes small_4214909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214909_left_root small_4214909_left_fuel small_4214909_left_count small_4214909_left_encoded small_4214909_left_checked

theorem cover_4214909 : CoveredBy scale carrier boxes root_4214909 := by
  apply coveredBy_split_literal root_4214909 small_4214909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214915 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4214909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214915
#print axioms cover_4214909

def root_4214877 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214877_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214877_left_fuel : Nat := 6
def small_4214877_left_count : Nat := 15
def small_4214877_left_encoded : String := "1151E8FF08A91301120700F608A9130500000007000000050000000012073CF60000000008A91305120700FA00000005000000020000000500000004"
theorem small_4214877_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214877_left_root small_4214877_left_fuel small_4214877_left_count small_4214877_left_encoded = true := by
  decide +kernel
theorem small_4214877_left_covered : CoveredBy scale carrier boxes small_4214877_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214877_left_root small_4214877_left_fuel small_4214877_left_count small_4214877_left_encoded small_4214877_left_checked

theorem cover_4214877 : CoveredBy scale carrier boxes root_4214877 := by
  apply coveredBy_split_literal root_4214877 small_4214877_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214909 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4214877_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214909
#print axioms cover_4214877

def root_4214872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214872_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214872_right_fuel : Nat := 1
def small_4214872_right_count : Nat := 1
def small_4214872_right_encoded : String := "00000003"
theorem small_4214872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214872_right_root small_4214872_right_fuel small_4214872_right_count small_4214872_right_encoded = true := by
  decide +kernel
theorem small_4214872_right_covered : CoveredBy scale carrier boxes small_4214872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214872_right_root small_4214872_right_fuel small_4214872_right_count small_4214872_right_encoded small_4214872_right_checked

theorem cover_4214872 : CoveredBy scale carrier boxes root_4214872 := by
  apply coveredBy_split_literal root_4214872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214877 small_4214872_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214877
  · exact small_4214872_right_covered
#print axioms cover_4214872

def root_4214514 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214514_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214514_left_fuel : Nat := 31
def small_4214514_left_count : Nat := 165
def small_4214514_left_encoded : String := "1151E907000000030A00010800000005115224FF0000000408A91301120700F6000000050000000012073CF60000000008A91305120700FA000000050000000212073CFA0000000208A912FF12073D080000000500000004120701080000000405000102135D44F90500010600000005135D81070CFD9C01000000050F350CF6000000000CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86F6000000050F875101000000000C9A86FA000000050F87510500000002028001020000000513D7ECF9000000010780010600000005128A7D0700000005000000030000000300000001135D80F90000000105000106135D4507000000030CFD9C01000000050F350CF6000000000CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86F60F878D0100000005000000000F8751010000000000000007135D81070CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA00000002045489FF1386AD080C9A86F60F878D0100000005000000000F875101000000000C9A86FA0F878D050000000500000002000000090000000413867108000000040C9A86F60F878D010C9A86FA0F878D0500000005000000020F8751050000000207800102128A40F90000000500000001128A7CF9000000010780010600000006128A7D07022A457F0000000813E1C508000000040DE7C9F6000000080000000600000003000000000F875101000000000C9A86FA0F878D0507800102128A40F9000000050000000100000009000000020F8751050000000207800102128A40F90780010600000008128A7D07022A457F0000000813E1C508000000040000000900000003000000010000000900000003"
theorem small_4214514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214514_left_root small_4214514_left_fuel small_4214514_left_count small_4214514_left_encoded = true := by
  decide +kernel
theorem small_4214514_left_covered : CoveredBy scale carrier boxes small_4214514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214514_left_root small_4214514_left_fuel small_4214514_left_count small_4214514_left_encoded small_4214514_left_checked

theorem cover_4214514 : CoveredBy scale carrier boxes root_4214514 := by
  apply coveredBy_split_literal root_4214514 small_4214514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214872 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4214514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214872
#print axioms cover_4214514

def root_4214509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214509_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214509_right_fuel : Nat := 1
def small_4214509_right_count : Nat := 1
def small_4214509_right_encoded : String := "00000002"
theorem small_4214509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214509_right_root small_4214509_right_fuel small_4214509_right_count small_4214509_right_encoded = true := by
  decide +kernel
theorem small_4214509_right_covered : CoveredBy scale carrier boxes small_4214509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214509_right_root small_4214509_right_fuel small_4214509_right_count small_4214509_right_encoded small_4214509_right_checked

theorem cover_4214509 : CoveredBy scale carrier boxes root_4214509 := by
  apply coveredBy_split_literal root_4214509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214514 small_4214509_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214514
  · exact small_4214509_right_covered
#print axioms cover_4214509

def root_4219040 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4219040 : CoveredBy scale carrier boxes root_4219040 := by
  apply coveredBy_split_literal root_4219040 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1577.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1578.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1577.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1578.covered
#print axioms cover_4219040

def root_4219034 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4219034_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4219034_left_fuel : Nat := 1
def small_4219034_left_count : Nat := 1
def small_4219034_left_encoded : String := "00000004"
theorem small_4219034_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4219034_left_root small_4219034_left_fuel small_4219034_left_count small_4219034_left_encoded = true := by
  decide +kernel
theorem small_4219034_left_covered : CoveredBy scale carrier boxes small_4219034_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4219034_left_root small_4219034_left_fuel small_4219034_left_count small_4219034_left_encoded small_4219034_left_checked

theorem cover_4219034 : CoveredBy scale carrier boxes root_4219034 := by
  apply coveredBy_split_literal root_4219034 small_4219034_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4219040 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4219034_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4219040
#print axioms cover_4219034

def root_4218848 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218848_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218848_left_fuel : Nat := 15
def small_4218848_left_count : Nat := 85
def small_4218848_left_encoded : String := "12073D0805000102135D44F9050000FA135D81050CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C070F34D10600000003000000070F350D060CFD9BFF000000050F34D108000000040C9A86F6000000050F87510100000000000000080000000300000002135D4505000000020CFD9C010F34D0F60CFD9C070000000700000008000000000F350CF6000000000CFD9C070F34D10600000003000000070000000800000001135D80F900000001050000FA135D81050CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C070F34D10600000003000000070F350D060CFD9BFF0000000A0F34D108000000040C9A86F6000000070F875101000000000C9A870600000008000000070000000300000002135D4505000000020CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C07000000070F350D06000000080000000300000004"
theorem small_4218848_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218848_left_root small_4218848_left_fuel small_4218848_left_count small_4218848_left_encoded = true := by
  decide +kernel
theorem small_4218848_left_covered : CoveredBy scale carrier boxes small_4218848_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218848_left_root small_4218848_left_fuel small_4218848_left_count small_4218848_left_encoded small_4218848_left_checked

theorem cover_4218848 : CoveredBy scale carrier boxes root_4218848 := by
  apply coveredBy_split_literal root_4218848 small_4218848_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4219034 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4218848_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4219034
#print axioms cover_4218848

def root_4218843 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218843_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218843_right_fuel : Nat := 1
def small_4218843_right_count : Nat := 1
def small_4218843_right_encoded : String := "00000003"
theorem small_4218843_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218843_right_root small_4218843_right_fuel small_4218843_right_count small_4218843_right_encoded = true := by
  decide +kernel
theorem small_4218843_right_covered : CoveredBy scale carrier boxes small_4218843_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218843_right_root small_4218843_right_fuel small_4218843_right_count small_4218843_right_encoded small_4218843_right_checked

theorem cover_4218843 : CoveredBy scale carrier boxes root_4218843 := by
  apply coveredBy_split_literal root_4218843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218848 small_4218843_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218848
  · exact small_4218843_right_covered
#print axioms cover_4218843

def root_4218779 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218779_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218779_left_fuel : Nat := 11
def small_4218779_left_count : Nat := 31
def small_4218779_left_encoded : String := "120701060000000308A912FF00000007120701080000000405000102135D44F9050000FA135D81050CFD9C01000000070F350CF60000000000000007000000020000000700000001135D80F900000001050000FA135D81050CFD9C01000000070F350CF60000000004548A0700000007000000070000000200000007"
theorem small_4218779_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218779_left_root small_4218779_left_fuel small_4218779_left_count small_4218779_left_encoded = true := by
  decide +kernel
theorem small_4218779_left_covered : CoveredBy scale carrier boxes small_4218779_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218779_left_root small_4218779_left_fuel small_4218779_left_count small_4218779_left_encoded small_4218779_left_checked

theorem cover_4218779 : CoveredBy scale carrier boxes root_4218779 := by
  apply coveredBy_split_literal root_4218779 small_4218779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218843 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4218779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218843
#print axioms cover_4218779

def root_4218773 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218773_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218773_left_fuel : Nat := 1
def small_4218773_left_count : Nat := 1
def small_4218773_left_encoded : String := "00000000"
theorem small_4218773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218773_left_root small_4218773_left_fuel small_4218773_left_count small_4218773_left_encoded = true := by
  decide +kernel
theorem small_4218773_left_covered : CoveredBy scale carrier boxes small_4218773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218773_left_root small_4218773_left_fuel small_4218773_left_count small_4218773_left_encoded small_4218773_left_checked

theorem cover_4218773 : CoveredBy scale carrier boxes root_4218773 := by
  apply coveredBy_split_literal root_4218773 small_4218773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218779 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4218773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218779
#print axioms cover_4218773

def root_4218695 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218695_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218695_left_fuel : Nat := 11
def small_4218695_left_count : Nat := 37
def small_4218695_left_encoded : String := "120700F608A9130712070106000000030000000712073D0608A912FF12073D080500010200000005135D80F900000001050000FA000000050000000700000004120701080000000405000102135D44F9050000FA00000005135D45050000000204548A01000000070000000700000001135D80F900000001050000FA135D81050000000700000002000000070000000300000000"
theorem small_4218695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218695_left_root small_4218695_left_fuel small_4218695_left_count small_4218695_left_encoded = true := by
  decide +kernel
theorem small_4218695_left_covered : CoveredBy scale carrier boxes small_4218695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218695_left_root small_4218695_left_fuel small_4218695_left_count small_4218695_left_encoded small_4218695_left_checked

theorem cover_4218695 : CoveredBy scale carrier boxes root_4218695 := by
  apply coveredBy_split_literal root_4218695 small_4218695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218773 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4218695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218773
#print axioms cover_4218695

def root_4218689 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218689_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218689_left_fuel : Nat := 1
def small_4218689_left_count : Nat := 1
def small_4218689_left_encoded : String := "00000004"
theorem small_4218689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218689_left_root small_4218689_left_fuel small_4218689_left_count small_4218689_left_encoded = true := by
  decide +kernel
theorem small_4218689_left_covered : CoveredBy scale carrier boxes small_4218689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218689_left_root small_4218689_left_fuel small_4218689_left_count small_4218689_left_encoded small_4218689_left_checked

theorem cover_4218689 : CoveredBy scale carrier boxes root_4218689 := by
  apply coveredBy_split_literal root_4218689 small_4218689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218695 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4218689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218695
#print axioms cover_4218689

def root_4218657 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218657_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218657_left_fuel : Nat := 7
def small_4218657_left_count : Nat := 15
def small_4218657_left_encoded : String := "1151E8FF08A91301120700F6000000050000000012073CF60000000008A913070000000712073D060500010200000005000000070000000300000004"
theorem small_4218657_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218657_left_root small_4218657_left_fuel small_4218657_left_count small_4218657_left_encoded = true := by
  decide +kernel
theorem small_4218657_left_covered : CoveredBy scale carrier boxes small_4218657_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218657_left_root small_4218657_left_fuel small_4218657_left_count small_4218657_left_encoded small_4218657_left_checked

theorem cover_4218657 : CoveredBy scale carrier boxes root_4218657 := by
  apply coveredBy_split_literal root_4218657 small_4218657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218689 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4218657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218689
#print axioms cover_4218657

def root_4218652 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218652_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218652_right_fuel : Nat := 1
def small_4218652_right_count : Nat := 1
def small_4218652_right_encoded : String := "00000003"
theorem small_4218652_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218652_right_root small_4218652_right_fuel small_4218652_right_count small_4218652_right_encoded = true := by
  decide +kernel
theorem small_4218652_right_covered : CoveredBy scale carrier boxes small_4218652_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218652_right_root small_4218652_right_fuel small_4218652_right_count small_4218652_right_encoded small_4218652_right_checked

theorem cover_4218652 : CoveredBy scale carrier boxes root_4218652 := by
  apply coveredBy_split_literal root_4218652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218657 small_4218652_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218657
  · exact small_4218652_right_covered
#print axioms cover_4218652

def root_4218402 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218402_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218402_left_fuel : Nat := 21
def small_4218402_left_count : Nat := 117
def small_4218402_left_encoded : String := "1151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91301120700F608A912FF0000000512070108000000040500010200000005135D80F900000001050000FA00000005000000080000000012073CF60000000008A912FF12073D0805000102135D44F90000000800000001135D80F900000001050000FA135D81050500010600000005135D81070CFD9C01000000080000000800000003000000020000000800000004120701080000000405000102135D44F9050000FA135D810505000106135D45070000000300000008135D81070CFD9C010F34D0F600000005000000000F350CF600000000045489FF0000000813867108000000040C9A86F6000000080F87510100000000000000080000000300000002135D4505000000020000000800000001135D80F900000001050000FA135D810505000106135D4507000000030CFD9C010000000600000008135D81070CFD9C010F34D0F600000008000000000F350CF600000000045489FF0000000813867108000000040C9A86F60F878D0100000008000000000F875101000000000780010200000008000000080000000300000002135D4505000000020500010600000006135D81070CFD9C01000000080000000800000003"
theorem small_4218402_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218402_left_root small_4218402_left_fuel small_4218402_left_count small_4218402_left_encoded = true := by
  decide +kernel
theorem small_4218402_left_covered : CoveredBy scale carrier boxes small_4218402_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218402_left_root small_4218402_left_fuel small_4218402_left_count small_4218402_left_encoded small_4218402_left_checked

theorem cover_4218402 : CoveredBy scale carrier boxes root_4218402 := by
  apply coveredBy_split_literal root_4218402 small_4218402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218652 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4218402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218652
#print axioms cover_4218402

def root_4218396 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218396_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4218396_left_fuel : Nat := 1
def small_4218396_left_count : Nat := 1
def small_4218396_left_encoded : String := "00000002"
theorem small_4218396_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4218396_left_root small_4218396_left_fuel small_4218396_left_count small_4218396_left_encoded = true := by
  decide +kernel
theorem small_4218396_left_covered : CoveredBy scale carrier boxes small_4218396_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4218396_left_root small_4218396_left_fuel small_4218396_left_count small_4218396_left_encoded small_4218396_left_checked

theorem cover_4218396 : CoveredBy scale carrier boxes root_4218396 := by
  apply coveredBy_split_literal root_4218396 small_4218396_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218402 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4218396_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218402
#print axioms cover_4218396

def root_4214508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214508 : CoveredBy scale carrier boxes root_4214508 := by
  apply coveredBy_split_literal root_4214508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4218396 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214509
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4218396
#print axioms cover_4214508

def root_4214503 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214503_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214503_right_fuel : Nat := 1
def small_4214503_right_count : Nat := 1
def small_4214503_right_encoded : String := "00000001"
theorem small_4214503_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214503_right_root small_4214503_right_fuel small_4214503_right_count small_4214503_right_encoded = true := by
  decide +kernel
theorem small_4214503_right_covered : CoveredBy scale carrier boxes small_4214503_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214503_right_root small_4214503_right_fuel small_4214503_right_count small_4214503_right_encoded small_4214503_right_checked

theorem cover_4214503 : CoveredBy scale carrier boxes root_4214503 := by
  apply coveredBy_split_literal root_4214503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214508 small_4214503_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214508
  · exact small_4214503_right_covered
#print axioms cover_4214503

def root_4214502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214502 : CoveredBy scale carrier boxes root_4214502 := by
  apply coveredBy_split_literal root_4214502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214503 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1579.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214503
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1579.covered
#print axioms cover_4214502

def root_4214497 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214497_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4214497_right_fuel : Nat := 1
def small_4214497_right_count : Nat := 1
def small_4214497_right_encoded : String := "00000000"
theorem small_4214497_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4214497_right_root small_4214497_right_fuel small_4214497_right_count small_4214497_right_encoded = true := by
  decide +kernel
theorem small_4214497_right_covered : CoveredBy scale carrier boxes small_4214497_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4214497_right_root small_4214497_right_fuel small_4214497_right_count small_4214497_right_encoded small_4214497_right_checked

theorem cover_4214497 : CoveredBy scale carrier boxes root_4214497 := by
  apply coveredBy_split_literal root_4214497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4214502 small_4214497_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4214502
  · exact small_4214497_right_covered
#print axioms cover_4214497

def root_4226422 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4226422 : CoveredBy scale carrier boxes root_4226422 := by
  apply coveredBy_split_literal root_4226422 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1580.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1581.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1580.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1581.covered
#print axioms cover_4226422

def root_4226417 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4226417_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4226417_right_fuel : Nat := 1
def small_4226417_right_count : Nat := 1
def small_4226417_right_encoded : String := "00000000"
theorem small_4226417_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4226417_right_root small_4226417_right_fuel small_4226417_right_count small_4226417_right_encoded = true := by
  decide +kernel
theorem small_4226417_right_covered : CoveredBy scale carrier boxes small_4226417_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4226417_right_root small_4226417_right_fuel small_4226417_right_count small_4226417_right_encoded small_4226417_right_checked

theorem cover_4226417 : CoveredBy scale carrier boxes root_4226417 := by
  apply coveredBy_split_literal root_4226417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4226422 small_4226417_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4226422
  · exact small_4226417_right_covered
#print axioms cover_4226417

def root_4226416 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4226416_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4226416_right_fuel : Nat := 19
def small_4226416_right_count : Nat := 179
def small_4226416_right_encoded : String := "135D45010000000005000102135D44F90CFD9C050F34D0FA0CFD9C07000000060F350D06045489FF0000000613867108000000040000000700000003000000020F350CFA000000020CFD9C070F34D10600000003045489FF0000000613867108000000040C9A86FA000000060F87510500000002028000F613D7ED01028001020000000613D7ECF9000000010AD357870000000610D13D06022A457F0000000600000008000000030000000013D7B10100000000028001020000000613D7ECF9000000010AD3578700000006000000080F350D06045489FF1386AD080C9A86FA0F878D050C9A8706000000090F878D07028000F6000000090000000900000003000000020F87510500000002000000090000000413867108000000040C9A86FA000000070F87510500000002000000070000000300000001135D80F9000000010CFD9C050F34D0FA0CFD9C070F34D10600000003045489FF00000006000000080F350D06045489FF1386AD080C9A8706000000090F878D07028000F60000000900000009000000030000000413867108000000040C9A8706000000070F878D07000000080000000300000003000000020F350CFA000000020CFD9C070F34D10600000003045489FF1386AD080C9A86FA0F878D05028000F6000000090000000900000002000000090000000413867108000000040C9A86FA0F878D05028000F613D7ED010780010200000008000000080000000000000008000000020F87510500000002028000F613D7ED0107800102128A40F90AD3578710D10106000000030000000810D13D06000000090000000300000001000000090000000013D7B10100000000000000050F350D06045489FF1386AD080C9A86FA0F878D050000000900000002000000090000000413867108000000040C9A86FA0F878D050C9A8706000000070F878D07028000F6000000090000000700000003000000020F875105000000020000000900000003"
theorem small_4226416_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4226416_right_root small_4226416_right_fuel small_4226416_right_count small_4226416_right_encoded = true := by
  decide +kernel
theorem small_4226416_right_covered : CoveredBy scale carrier boxes small_4226416_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4226416_right_root small_4226416_right_fuel small_4226416_right_count small_4226416_right_encoded small_4226416_right_checked

theorem cover_4226416 : CoveredBy scale carrier boxes root_4226416 := by
  apply coveredBy_split_literal root_4226416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4226417 small_4226416_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4226417
  · exact small_4226416_right_covered
#print axioms cover_4226416

def root_4226410 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4226410_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4226410_left_fuel : Nat := 1
def small_4226410_left_count : Nat := 1
def small_4226410_left_encoded : String := "00000004"
theorem small_4226410_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4226410_left_root small_4226410_left_fuel small_4226410_left_count small_4226410_left_encoded = true := by
  decide +kernel
theorem small_4226410_left_covered : CoveredBy scale carrier boxes small_4226410_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4226410_left_root small_4226410_left_fuel small_4226410_left_count small_4226410_left_encoded small_4226410_left_checked

theorem cover_4226410 : CoveredBy scale carrier boxes root_4226410 := by
  apply coveredBy_split_literal root_4226410 small_4226410_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4226416 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4226410_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4226416
#print axioms cover_4226410

def root_4225914 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225914_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225914_left_fuel : Nat := 18
def small_4225914_left_count : Nat := 235
def small_4225914_left_encoded : String := "12073D08050000F6135D810105000102135D44F90CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A86FA000000050F87510500000002078000F600000005128A410100000000028001020000000513D7ECF900000001000000090F350D060CFD9BFF000000050F34D108000000040C9A86FA000000050F875105000000020C9A8706000000050F878D07078000F600000005128A41010000000000000009000000030000000300000001135D80F9000000010CFD9C050F34D0FA0CFD9C070F34D106000000030000000A0F350D060CFD9BFF000000050F34D108000000040C9A8706000000050000000A00000003000000020F350CFA000000020CFD9C070F34D106000000030CFD9BFF0000000A0F34D108000000040C9A86FA0000000A0F875105000000020000000A0F350D060CFD9BFF0000000A0F34D108000000040C9A86FA0F878D050C9A8706000000090000000A000000020F875105000000020C9A8706000000090000000A0000000300000000135D45010000000005000102135D44F90CFD9C050F34D0FA0CFD9C070F34D10600000003000000060F350D060000000500000003000000020F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A86FA0F878D0500000005000000020F875105000000020C9A87080F8750FF000000050000000400000009000000040F34D108000000040C9A86FA000000060F87510500000002028000F600000009000000090F350D060CFD9BFF0F350D080C9A86FA000000050F875105000000020C9A8706000000050F878D070C9A8708000000050000000900000003000000040F34D108000000040C9A86FA0F878D050C9A8706000000090F878D07000000090000000300000002000000090000000300000001135D80F9000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9BFF0000000A0F34D10800000004000000060F350D060CFD9BFF0000000A0F34D108000000040C9A8706000000090F878D07028000F600000009000000090000000300000003000000020F350CFA000000020CFD9C070F34D106000000030CFD9BFF0000000A0F34D108000000040C9A86FA0F878D05028000F6000000090000000900000002000000090F350D060CFD9BFF0F350D080C9A86FA0000000A0F875105000000020C9A8706000000090000000A000000040F34D108000000040C9A86FA0F878D050000000900000002000000090000000300000004"
theorem small_4225914_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225914_left_root small_4225914_left_fuel small_4225914_left_count small_4225914_left_encoded = true := by
  decide +kernel
theorem small_4225914_left_covered : CoveredBy scale carrier boxes small_4225914_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225914_left_root small_4225914_left_fuel small_4225914_left_count small_4225914_left_encoded small_4225914_left_checked

theorem cover_4225914 : CoveredBy scale carrier boxes root_4225914 := by
  apply coveredBy_split_literal root_4225914 small_4225914_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4226410 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4225914_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4226410
#print axioms cover_4225914

def root_4225909 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225909_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225909_right_fuel : Nat := 1
def small_4225909_right_count : Nat := 1
def small_4225909_right_encoded : String := "00000003"
theorem small_4225909_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225909_right_root small_4225909_right_fuel small_4225909_right_count small_4225909_right_encoded = true := by
  decide +kernel
theorem small_4225909_right_covered : CoveredBy scale carrier boxes small_4225909_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225909_right_root small_4225909_right_fuel small_4225909_right_count small_4225909_right_encoded small_4225909_right_checked

theorem cover_4225909 : CoveredBy scale carrier boxes root_4225909 := by
  apply coveredBy_split_literal root_4225909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225914 small_4225909_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225914
  · exact small_4225909_right_covered
#print axioms cover_4225909

def root_4225411 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225411_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225411_left_fuel : Nat := 23
def small_4225411_left_count : Nat := 233
def small_4225411_left_encoded : String := "120701060000000308A912FF12073D08050000F6135D810105000102135D44F90CFD9C05000000060F350CFA0000000204548A07000000061386AD060CFD9BFF000000060F34D10800000004000000060000000300000001135D80F9000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A0713867106000000030CFD9BFF000000070F34D10800000004000000060000000A00000000135D45010000000005000102135D44F90CFD9C05000000060F350CFA0000000204548A07000000061386AD060CFD9BFF000000060F34D10800000004000000060000000300000001135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A0713867106000000030CFD9BFF000000060F34D10800000004000000061386AD060CFD9BFF0000000A0F34D108000000040C9A86FA000000060000000900000003000000041207010800000004050000F6135D810105000102135D44F90000000600000001135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A071386710600000003045489FF0000000613867108000000040C9A86FA000000060F87510500000002078000F6128A7D010780010200000006128A7CF900000001022A4587000000060000000600000000000000081386AD06045489FF1386AD080C9A86FA0F878D0500000006000000020F87510500000002078000F6128A7D010000000700000000128A4101000000000780010200000006128A7CF9000000010000000A0000000413867108000000040C9A86FA0F878D05078000F6128A7D010780010200000006128A7CF900000001000000080000000000000008000000020F87510500000002078000F6128A7D0107800102128A40F9067ECE870000000612EA9506022A457F00000006000000080000000300000001128A7CF900000001067ECE8712EA590600000003022A457F000000070000000812EA9506022A457F0000000A000000080000000300000000128A41010000000007800102128A40F90000000600000001128A7CF900000001067ECE8700000008000000080000000300000000135D4501000000000500010200000006135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A071386710600000003000000061386AD06045489FF1386AD080C9A86FA000000060F87510500000002028000F613D7ED0107800102000000060000000900000000000000090000000413867108000000040000000800000003"
theorem small_4225411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225411_left_root small_4225411_left_fuel small_4225411_left_count small_4225411_left_encoded = true := by
  decide +kernel
theorem small_4225411_left_covered : CoveredBy scale carrier boxes small_4225411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225411_left_root small_4225411_left_fuel small_4225411_left_count small_4225411_left_encoded small_4225411_left_checked

theorem cover_4225411 : CoveredBy scale carrier boxes root_4225411 := by
  apply coveredBy_split_literal root_4225411 small_4225411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225909 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4225411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225909
#print axioms cover_4225411

def root_4225405 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225405_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225405_left_fuel : Nat := 1
def small_4225405_left_count : Nat := 1
def small_4225405_left_encoded : String := "00000002"
theorem small_4225405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225405_left_root small_4225405_left_fuel small_4225405_left_count small_4225405_left_encoded = true := by
  decide +kernel
theorem small_4225405_left_covered : CoveredBy scale carrier boxes small_4225405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225405_left_root small_4225405_left_fuel small_4225405_left_count small_4225405_left_encoded small_4225405_left_checked

theorem cover_4225405 : CoveredBy scale carrier boxes root_4225405 := by
  apply coveredBy_split_literal root_4225405 small_4225405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225411 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4225405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225411
#print axioms cover_4225405

def root_4225179 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225179_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225179_left_fuel : Nat := 18
def small_4225179_left_count : Nat := 105
def small_4225179_left_encoded : String := "120700FA08A91307120701060000000308A912FF0000000612070108000000040000000612073D0608A912FF12073D08050000F600000005135D4501000000000500010200000005135D80F90000000104548A05138670FA0CFD9C07000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF000000050F34D108000000040C9A8706000000050000000600000003000000041207010800000004050000F6135D81010500010200000005135D80F90000000104548A05138670FA0CFD9C07000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000060F350D06045489FF0000000513867108000000040C9A8706000000050F878D0700000006000000030000000300000000135D4501000000000500010200000006135D80F90000000104548A05138670FA00000006000000021386ACFA000000020CFD9C070F34D10600000003000000060F350D06045489FF1386AD080C9A870600000009000000060000000400000008000000030000000300000002"
theorem small_4225179_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225179_left_root small_4225179_left_fuel small_4225179_left_count small_4225179_left_encoded = true := by
  decide +kernel
theorem small_4225179_left_covered : CoveredBy scale carrier boxes small_4225179_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225179_left_root small_4225179_left_fuel small_4225179_left_count small_4225179_left_encoded small_4225179_left_checked

theorem cover_4225179 : CoveredBy scale carrier boxes root_4225179 := by
  apply coveredBy_split_literal root_4225179 small_4225179_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225405 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4225179_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225405
#print axioms cover_4225179

def root_4225173 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225173_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225173_left_fuel : Nat := 1
def small_4225173_left_count : Nat := 1
def small_4225173_left_encoded : String := "00000004"
theorem small_4225173_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225173_left_root small_4225173_left_fuel small_4225173_left_count small_4225173_left_encoded = true := by
  decide +kernel
theorem small_4225173_left_covered : CoveredBy scale carrier boxes small_4225173_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225173_left_root small_4225173_left_fuel small_4225173_left_count small_4225173_left_encoded small_4225173_left_checked

theorem cover_4225173 : CoveredBy scale carrier boxes root_4225173 := by
  apply coveredBy_split_literal root_4225173 small_4225173_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225179 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4225173_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225179
#print axioms cover_4225173

def root_4225095 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225095_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225095_left_fuel : Nat := 14
def small_4225095_left_count : Nat := 37
def small_4225095_left_encoded : String := "1151E8FF08A91305120700FA000000050000000212073CFA0000000208A913071207010600000003050000F600000005135D45010000000005000102000000050000000A12073D06050000F600000005135D4501000000000500010200000005135D80F9000000010500010800000005135D80FF000000040CFD9C050F34D0FA00000005000000020000000A0000000300000004"
theorem small_4225095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225095_left_root small_4225095_left_fuel small_4225095_left_count small_4225095_left_encoded = true := by
  decide +kernel
theorem small_4225095_left_covered : CoveredBy scale carrier boxes small_4225095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225095_left_root small_4225095_left_fuel small_4225095_left_count small_4225095_left_encoded small_4225095_left_checked

theorem cover_4225095 : CoveredBy scale carrier boxes root_4225095 := by
  apply coveredBy_split_literal root_4225095 small_4225095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225173 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4225095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225173
#print axioms cover_4225095

def root_4225090 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225090_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4225090_right_fuel : Nat := 1
def small_4225090_right_count : Nat := 1
def small_4225090_right_encoded : String := "00000003"
theorem small_4225090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4225090_right_root small_4225090_right_fuel small_4225090_right_count small_4225090_right_encoded = true := by
  decide +kernel
theorem small_4225090_right_covered : CoveredBy scale carrier boxes small_4225090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4225090_right_root small_4225090_right_fuel small_4225090_right_count small_4225090_right_encoded small_4225090_right_checked

theorem cover_4225090 : CoveredBy scale carrier boxes root_4225090 := by
  apply coveredBy_split_literal root_4225090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225095 small_4225090_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225095
  · exact small_4225090_right_covered
#print axioms cover_4225090

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307
