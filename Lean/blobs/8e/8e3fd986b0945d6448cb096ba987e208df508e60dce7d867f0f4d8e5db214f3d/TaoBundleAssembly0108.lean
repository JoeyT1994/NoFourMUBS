import TaoBundleAssembly0107
import TaoBundleChunkBatch0395
import TaoBundleChunkBatch0396
import TaoBundleChunkBatch0397
import TaoBundleChunkBatch0398
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108
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
  apply coveredBy_split_literal root_4218695 small_4218695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0107.root_4218773 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4218695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0107.cover_4218773
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
  apply coveredBy_split_literal root_4218689 small_4218689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4218695 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4218689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4218695
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
  apply coveredBy_split_literal root_4218657 small_4218657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4218689 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4218657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4218689
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
  apply coveredBy_split_literal root_4218652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4218657 small_4218652_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4218657
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
  apply coveredBy_split_literal root_4218402 small_4218402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4218652 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4218402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4218652
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
  apply coveredBy_split_literal root_4218396 small_4218396_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4218402 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4218396_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4218402
#print axioms cover_4218396

def root_4214508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214508 : CoveredBy scale carrier boxes root_4214508 := by
  apply coveredBy_split_literal root_4214508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0107.root_4214509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4218396 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0107.cover_4214509
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4218396
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
  apply coveredBy_split_literal root_4214503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4214508 small_4214503_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4214508
  · exact small_4214503_right_covered
#print axioms cover_4214503

def root_4214502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214502 : CoveredBy scale carrier boxes root_4214502 := by
  apply coveredBy_split_literal root_4214502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4214503 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1579.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4214503
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
  apply coveredBy_split_literal root_4214497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4214502 small_4214497_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4214502
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
  apply coveredBy_split_literal root_4226417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4226422 small_4226417_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4226422
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
  apply coveredBy_split_literal root_4226416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4226417 small_4226416_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4226417
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
  apply coveredBy_split_literal root_4226410 small_4226410_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4226416 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4226410_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4226416
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
  apply coveredBy_split_literal root_4225914 small_4225914_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4226410 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4225914_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4226410
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
  apply coveredBy_split_literal root_4225909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225914 small_4225909_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225914
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
  apply coveredBy_split_literal root_4225411 small_4225411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225909 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4225411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225909
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
  apply coveredBy_split_literal root_4225405 small_4225405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225411 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4225405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225411
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
  apply coveredBy_split_literal root_4225179 small_4225179_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225405 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4225179_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225405
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
  apply coveredBy_split_literal root_4225173 small_4225173_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225179 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4225173_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225179
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
  apply coveredBy_split_literal root_4225095 small_4225095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225173 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4225095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225173
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
  apply coveredBy_split_literal root_4225090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225095 small_4225090_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225095
  · exact small_4225090_right_covered
#print axioms cover_4225090

def root_4224672 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224672_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224672_left_fuel : Nat := 21
def small_4224672_left_count : Nat := 193
def small_4224672_left_encoded : String := "1151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91305120700FA08A912FF000000051207010800000004050000F600000005135D450100000000000000070000000212073CFA0000000208A912FF12073D08050000F6135D81010500010200000005135D80F9000000010500010600000005135D81070CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0F350D0800000005000000040F34D10800000004000000090000000300000000135D45010000000005000102135D44F90500010600000005135D81070CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF000000080F34D10800000004000000090000000300000001135D80F90000000105000106135D4507000000030CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0000000800000009135D81070CFD9C050F34D0FA0CFD9BFF000000050F34D1080000000400000009000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A870800000005000000090000000200000008000000040F34D108000000040000000900000003000000041207010800000004050000F6135D810105000102135D44F905000106135D4507000000030CFD9C050000000500000007135D81070CFD9C050F34D0FA00000005000000020F350CFA00000002045489FF1386AD080C9A86FA0F878D05000000050000000200000009000000041386710800000004000000070000000300000001135D80F90000000105000106135D4507000000030CFD9C050000000900000007135D81070CFD9C050F34D0FA045489FF00000009138671080000000400000007000000020F350CFA00000002045489FF0000000913867108000000040C9A86FA00000007000000090000000300000000135D45010000000005000102135D44F90500010600000007135D81070CFD9C050F34D0FA0000000700000002000000070000000300000001135D80F9000000010500010600000007135D81070CFD9C050F34D0FA00000007000000020000000700000003"
theorem small_4224672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224672_left_root small_4224672_left_fuel small_4224672_left_count small_4224672_left_encoded = true := by
  decide +kernel
theorem small_4224672_left_covered : CoveredBy scale carrier boxes small_4224672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224672_left_root small_4224672_left_fuel small_4224672_left_count small_4224672_left_encoded small_4224672_left_checked

theorem cover_4224672 : CoveredBy scale carrier boxes root_4224672 := by
  apply coveredBy_split_literal root_4224672 small_4224672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4225090 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4224672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4225090
#print axioms cover_4224672

def root_4224667 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224667_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224667_right_fuel : Nat := 1
def small_4224667_right_count : Nat := 1
def small_4224667_right_encoded : String := "00000002"
theorem small_4224667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224667_right_root small_4224667_right_fuel small_4224667_right_count small_4224667_right_encoded = true := by
  decide +kernel
theorem small_4224667_right_covered : CoveredBy scale carrier boxes small_4224667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224667_right_root small_4224667_right_fuel small_4224667_right_count small_4224667_right_encoded small_4224667_right_checked

theorem cover_4224667 : CoveredBy scale carrier boxes root_4224667 := by
  apply coveredBy_split_literal root_4224667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4224672 small_4224667_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4224672
  · exact small_4224667_right_covered
#print axioms cover_4224667

def root_4237254 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237254_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237254_left_fuel : Nat := 20
def small_4237254_left_count : Nat := 183
def small_4237254_left_encoded : String := "13E201080DE7CA060E5FD9070000000308C000F611FC250103C0010200000008000000080000000011FBE9010000000003C0010213A510F90000000900000001000000090E60150708C000F611FC250103C0010213A510F908C000FA11FC2505033F67BF13BC31080DAED8870E9625060000000300000007000000080000000413BBF508000000040DAED8870E96250600000003096000F60000000711AA8101000000000320010213C108F9096000FA00000005000000060000000113C144F900000001096000FA11AABD050000000600000002000000070E966106096000F60000000811AA810100000000032001020000000800000008000000030000000211FBE90500000002033F67BF0000000813BBF50800000004000000080000000113A54CF90000000108C000FA11FC2505033F67BF13BC31080DAED8870E96250600000003000000070E96610600000008000000030000000413BBF508000000040DAED8870E96250600000003096000F60000000711AA810100000000046001021383DCF9096000FA11AABD0500000009000000020000000700000001000000090E966106096000F60000000800000009000000030000000211FBE90500000002033F67BF0000000713BBF508000000040DAED88700000008000000080000000011FBE9010000000003C0010213A510F908C000FA11FC2505033F67BF0000000913BBF508000000040DAED8870E96250600000003082000F612469901032001020000000613C144F900000001096000FA00000006000000090000000012465D01000000000320010200000006000000090E96610600000009000000030000000211FBE90500000002033F67BF0000000813BBF508000000040DAED8870E96250600000003082000F60000000812465D01000000000320010213C108F90000000800000001000000090E96610600000008000000030000000113A54CF90000000108C000FA11FC25050000000900000002000000090000000300000004"
theorem small_4237254_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237254_left_root small_4237254_left_fuel small_4237254_left_count small_4237254_left_encoded = true := by
  decide +kernel
theorem small_4237254_left_covered : CoveredBy scale carrier boxes small_4237254_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237254_left_root small_4237254_left_fuel small_4237254_left_count small_4237254_left_encoded small_4237254_left_checked

theorem cover_4237254 : CoveredBy scale carrier boxes root_4237254 := by
  apply coveredBy_split_literal root_4237254 small_4237254_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1583.root coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4237254_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1583.covered
#print axioms cover_4237254

def root_4237249 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237249_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237249_right_fuel : Nat := 1
def small_4237249_right_count : Nat := 1
def small_4237249_right_encoded : String := "00000002"
theorem small_4237249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237249_right_root small_4237249_right_fuel small_4237249_right_count small_4237249_right_encoded = true := by
  decide +kernel
theorem small_4237249_right_covered : CoveredBy scale carrier boxes small_4237249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237249_right_root small_4237249_right_fuel small_4237249_right_count small_4237249_right_encoded small_4237249_right_checked

theorem cover_4237249 : CoveredBy scale carrier boxes root_4237249 := by
  apply coveredBy_split_literal root_4237249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4237254 small_4237249_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4237254
  · exact small_4237249_right_covered
#print axioms cover_4237249

def root_4237248 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237248_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237248_right_fuel : Nat := 14
def small_4237248_right_count : Nat := 65
def small_4237248_right_encoded : String := "128A410500000002022A457F13E201080DE7CA06000000080E60150708C000F60000000811FBE9010000000003C001020000000800000008000000030000000413E1C508000000040DE7CA060E5FD9070000000308C000F60000000811FBE9010000000003C0010200000008000000050E60150708C000F611FC250103C0010213A510F9064000FA12FFAD050115233F000000080000000A00000002000000080000000113A54CF900000001064000FA12FFAD050115233F0000000813F85908000000040000000500000002000000050000000011FBE9010000000003C0010213A510F9064000FA12FFAD050000000A0000000200000005000000010000000500000003"
theorem small_4237248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237248_right_root small_4237248_right_fuel small_4237248_right_count small_4237248_right_encoded = true := by
  decide +kernel
theorem small_4237248_right_covered : CoveredBy scale carrier boxes small_4237248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237248_right_root small_4237248_right_fuel small_4237248_right_count small_4237248_right_encoded small_4237248_right_checked

theorem cover_4237248 : CoveredBy scale carrier boxes root_4237248 := by
  apply coveredBy_split_literal root_4237248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4237249 small_4237248_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4237249
  · exact small_4237248_right_covered
#print axioms cover_4237248

def root_4237242 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237242_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237242_left_fuel : Nat := 1
def small_4237242_left_count : Nat := 1
def small_4237242_left_encoded : String := "00000001"
theorem small_4237242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237242_left_root small_4237242_left_fuel small_4237242_left_count small_4237242_left_encoded = true := by
  decide +kernel
theorem small_4237242_left_covered : CoveredBy scale carrier boxes small_4237242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237242_left_root small_4237242_left_fuel small_4237242_left_count small_4237242_left_encoded small_4237242_left_checked

theorem cover_4237242 : CoveredBy scale carrier boxes root_4237242 := by
  apply coveredBy_split_literal root_4237242 small_4237242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4237248 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_4237242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4237248
#print axioms cover_4237242

def root_4236546 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236546_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236546_left_fuel : Nat := 23
def small_4236546_left_count : Nat := 327
def small_4236546_left_encoded : String := "13D7B0F9078000FA128A7D05022A457F13E201080DE7CA060E5FD9070000000308C000F611FC2501000000080000000011FBE901000000000140010213F5D8F9000000080000000113F614F90000000108C000FA11FC2505033F67BF0000000813BBF508000000040D412886000000080EFA4D07000000080000000300000002000000080E60150708C000F611FC25010140010213F5D8F908C000FA0000000511FBE90500000002000000080000000113F614F90000000108C000FA11FC2505033F67BF0000000513BBF508000000040DAED887000000050E96610600000005000000030000000211FBE90500000002000000080000000011FBE901000000000140010213F5D8F908C000FA11FC2505000000060000000211FBE90500000002033F67BF000000080000000A0000000113F614F90000000108C000FA11FC2505033F67BF13BC31080DAED8870E96250600000003000000060E96610600000008000000030000000413BBF508000000040DAED8870E96250600000003000000060E966106082000F61246990101E001020000000513E994F900000001096000FA00000005000000080000000012465D010000000001E001020000000600000009000000030000000211FBE90500000002033F67BF0000000813BBF508000000040DAED8870E96250600000003082000F6000000080000000A0E9661060000000800000003000000030000000413E1C508000000040DE7CA060E5FD9070000000308C000F611FC25010140010213F5D8F908C000FA11FC25050115233F000000050000000A000000020000000A0000000113F614F90000000108C000FA11FC25050115233F13F895080D412886000000050EFA4D07096000F60000000511AA81010000000000000008000000030000000413F85908000000040D4128860000000A0EFA4D070000000A000000030000000211FBE905000000020115233F000000080000000A0000000011FBE90100000000014001020000000A13F614F90000000108C000FA11FC25050115233F13F895080D412886000000070EFA4D070000000A000000030000000400000007000000020000000A0E60150708C000F611FC25010140010213F5D8F908C000FA11FC25050115233F000000050000000A000000020000000A0000000113F614F90000000108C000FA11FC25050115233F13F895080DAED8870E96250600000003096000F60000000511AA810100000000000000060E966106096000F60000000511AA81010000000001E001020000000513E994F900000001096000FA000000050000000A000000030000000413F85908000000040DAED8870E96250600000003096000F611AABD010000000A000000000000000A0E966106096000F611AABD010000000A000000000000000A000000030000000211FBE905000000020115233F13F895080DAED8870E96250600000003096000F6000000070000000A0E9661060000000800000003000000040000000A0000000011FBE90100000000014001020000000A13F614F90000000108C000FA11FC25050115233F13F895080DAED8870E96250600000003000000060E966106082000F61246990101E00102000000060000000A000000000000000A00000003000000040000000A000000020000000A0000000300000002128A410500000002022A457F13E201080DE7CA06000000080E60150708C000F60000000811FBE9010000000000000008000000030000000413E1C508000000040DE7CA060000000A0E60150708C000F611FC25010000000A000000000000000A0000000300000001"
theorem small_4236546_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236546_left_root small_4236546_left_fuel small_4236546_left_count small_4236546_left_encoded = true := by
  decide +kernel
theorem small_4236546_left_covered : CoveredBy scale carrier boxes small_4236546_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236546_left_root small_4236546_left_fuel small_4236546_left_count small_4236546_left_encoded small_4236546_left_checked

theorem cover_4236546 : CoveredBy scale carrier boxes root_4236546 := by
  apply coveredBy_split_literal root_4236546 small_4236546_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4237242 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_4236546_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4237242
#print axioms cover_4236546

def root_4236541 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236541_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236541_right_fuel : Nat := 1
def small_4236541_right_count : Nat := 1
def small_4236541_right_encoded : String := "00000000"
theorem small_4236541_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236541_right_root small_4236541_right_fuel small_4236541_right_count small_4236541_right_encoded = true := by
  decide +kernel
theorem small_4236541_right_covered : CoveredBy scale carrier boxes small_4236541_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236541_right_root small_4236541_right_fuel small_4236541_right_count small_4236541_right_encoded small_4236541_right_checked

theorem cover_4236541 : CoveredBy scale carrier boxes root_4236541 := by
  apply coveredBy_split_literal root_4236541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236546 small_4236541_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236546
  · exact small_4236541_right_covered
#print axioms cover_4236541

def root_4236540 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236540_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236540_right_fuel : Nat := 23
def small_4236540_right_count : Nat := 229
def small_4236540_right_encoded : String := "128A4101000000000280010213D7B0F9078000FA128A7D05022A457F13E201080DE7CA060E5FD90700000003064000F612FFAD010140010213F5D8F908C000FA11FC2505000000090000000200000008000000010000000900000000000000090E601507064000F612FFAD010140010213F5D8F908C000FA000000060000000A0000000113F614F90000000108C000FA11FC2505033F67BF0000000913BBF508000000040DAED887000000060E96610600000009000000030000000211FBE90500000002033F67BF000000090000000A0000000012FF7101000000000140010213F5D8F908C000FA000000060000000A0000000113F614F90000000108C000FA0000000900000009000000030000000413E1C508000000040DE7CA060000000A0E601507064000F612FFAD01014001020000000A0000000A000000000000000A0000000300000002128A410500000002022A457F13E201080DE7CA060E5FD90700000003000000080E601507064000F612FFAD01014001020000000813F614F900000001064000FA12FFAD05033F67BF000000080000000A0000000200000008000000000000000A00000003000000040000000A0000000113D7ECF900000001078000FA128A7D05022A457F13E201080DE7CA06000000090E601507064000F612FFAD0103C0010213A510F908C000FA11FC250500000009000000020000000900000001000000090000000000000009000000030000000413E1C508000000040DE7CA060E5FD90700000003064000F612FFAD0103C0010213A510F908C000FA000000070000000A000000010000000900000000000000070E601507064000F612FFAD0103C0010213A510F908C000FA11FC25050115233F13F895080DAED8870E9625060000000306E000F612C8210103200102000000060000000900000000000000090E9661060000000700000003000000040000000A000000020000000A0000000113A54CF90000000108C000FA11FC25050115233F0000000913F85908000000040000000500000002000000050000000012FF71010000000003C0010213A510F908C000FA000000070000000500000001000000050000000300000002128A410500000002022A457F13E201080DE7CA06000000090E601507064000F612FFAD0103C0010213A510F9064000FA12FFAD0500000009000000020000000500000001000000050000000000000005000000030000000413E1C508000000040DE7CA060E5FD907000000030000000500000005"
theorem small_4236540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236540_right_root small_4236540_right_fuel small_4236540_right_count small_4236540_right_encoded = true := by
  decide +kernel
theorem small_4236540_right_covered : CoveredBy scale carrier boxes small_4236540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236540_right_root small_4236540_right_fuel small_4236540_right_count small_4236540_right_encoded small_4236540_right_checked

theorem cover_4236540 : CoveredBy scale carrier boxes root_4236540 := by
  apply coveredBy_split_literal root_4236540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236541 small_4236540_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236541
  · exact small_4236540_right_covered
#print axioms cover_4236540

def root_4236535 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236535_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236535_right_fuel : Nat := 1
def small_4236535_right_count : Nat := 1
def small_4236535_right_encoded : String := "00000003"
theorem small_4236535_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236535_right_root small_4236535_right_fuel small_4236535_right_count small_4236535_right_encoded = true := by
  decide +kernel
theorem small_4236535_right_covered : CoveredBy scale carrier boxes small_4236535_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236535_right_root small_4236535_right_fuel small_4236535_right_count small_4236535_right_encoded small_4236535_right_checked

theorem cover_4236535 : CoveredBy scale carrier boxes root_4236535 := by
  apply coveredBy_split_literal root_4236535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236540 small_4236535_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236540
  · exact small_4236535_right_covered
#print axioms cover_4236535

def root_4236351 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236351_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236351_left_fuel : Nat := 19
def small_4236351_left_count : Nat := 87
def small_4236351_left_encoded : String := "0F87510700000003078000F6128A7D010280010213D7B0F9078000FA128A7D05022A457F0000000813E1C508000000040B4D44060000000710804D0708C000F611FC250101400102000000080000000800000000000000070000000300000002000000080000000113D7ECF900000001078000FA128A7D05022A457F0000000913E1C508000000040B4D440610801107000000030000000710804D0708C000F611FC250103C0010213A510F9000000080000000113A54CF90000000108C000FA11FC25050115233F000000080000000700000002000000080000000011FBE9010000000003C0010213A510F90000000700000001000000090000000300000002128A4105000000020000000800000000128A4101000000000280010213D7B0F9078000FA00000007128A410500000002022A457F000000080000000A0000000113D7ECF900000001078000FA128A7D05000000090000000200000009"
theorem small_4236351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236351_left_root small_4236351_left_fuel small_4236351_left_count small_4236351_left_encoded = true := by
  decide +kernel
theorem small_4236351_left_covered : CoveredBy scale carrier boxes small_4236351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236351_left_root small_4236351_left_fuel small_4236351_left_count small_4236351_left_encoded small_4236351_left_checked

theorem cover_4236351 : CoveredBy scale carrier boxes root_4236351 := by
  apply coveredBy_split_literal root_4236351 small_4236351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236535 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4236351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236535
#print axioms cover_4236351

def root_4236345 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236345_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236345_left_fuel : Nat := 1
def small_4236345_left_count : Nat := 1
def small_4236345_left_encoded : String := "00000004"
theorem small_4236345_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236345_left_root small_4236345_left_fuel small_4236345_left_count small_4236345_left_encoded = true := by
  decide +kernel
theorem small_4236345_left_covered : CoveredBy scale carrier boxes small_4236345_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236345_left_root small_4236345_left_fuel small_4236345_left_count small_4236345_left_encoded small_4236345_left_checked

theorem cover_4236345 : CoveredBy scale carrier boxes root_4236345 := by
  apply coveredBy_split_literal root_4236345 small_4236345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236351 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4236345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236351
#print axioms cover_4236345

def root_4236141 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236141_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236141_left_fuel : Nat := 19
def small_4236141_left_count : Nat := 99
def small_4236141_left_encoded : String := "1386AD080C9A87060F87510700000003078000F600000008000000090F878D07078000F6128A7D010280010213D7B0F9078000FA128A7D05067ECE7F0000000812EA5908000000040DE7CA060E5FD90700000003000000080E60150708C000F60000000811FBE901000000000140010200000008000000080000000300000002000000080000000113D7ECF900000001078000FA128A7D05067ECE7F0000000912EA5908000000040DE7CA06000000090E60150708C000F611FC250103C0010200000008000000080000000011FBE901000000000000000900000003000000020000000800000000128A4101000000000280010213D7B0F9078000FA128A7D05067ECE7F0000000912EA5908000000040DE7CA06000000090E601507064000F612FFAD010140010213F5D8F908C000FA0000000600000008000000010000000900000000000000090000000300000002128A410500000002067ECE7F0000000812EA590800000004000000080000000113D7ECF900000001078000FA00000009000000090000000300000004"
theorem small_4236141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236141_left_root small_4236141_left_fuel small_4236141_left_count small_4236141_left_encoded = true := by
  decide +kernel
theorem small_4236141_left_covered : CoveredBy scale carrier boxes small_4236141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236141_left_root small_4236141_left_fuel small_4236141_left_count small_4236141_left_encoded small_4236141_left_checked

theorem cover_4236141 : CoveredBy scale carrier boxes root_4236141 := by
  apply coveredBy_split_literal root_4236141 small_4236141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236345 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4236141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236345
#print axioms cover_4236141

def root_4236136 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236136_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236136_right_fuel : Nat := 1
def small_4236136_right_count : Nat := 1
def small_4236136_right_encoded : String := "00000003"
theorem small_4236136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236136_right_root small_4236136_right_fuel small_4236136_right_count small_4236136_right_encoded = true := by
  decide +kernel
theorem small_4236136_right_covered : CoveredBy scale carrier boxes small_4236136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236136_right_root small_4236136_right_fuel small_4236136_right_count small_4236136_right_encoded small_4236136_right_checked

theorem cover_4236136 : CoveredBy scale carrier boxes root_4236136 := by
  apply coveredBy_split_literal root_4236136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236141 small_4236136_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236141
  · exact small_4236136_right_covered
#print axioms cover_4236136

def root_4233462 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4233462 : CoveredBy scale carrier boxes root_4233462 := by
  apply coveredBy_split_literal root_4233462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1582.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4236136 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1582.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4236136
#print axioms cover_4233462

def root_4233457 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233457_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233457_right_fuel : Nat := 1
def small_4233457_right_count : Nat := 1
def small_4233457_right_encoded : String := "00000002"
theorem small_4233457_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233457_right_root small_4233457_right_fuel small_4233457_right_count small_4233457_right_encoded = true := by
  decide +kernel
theorem small_4233457_right_covered : CoveredBy scale carrier boxes small_4233457_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233457_right_root small_4233457_right_fuel small_4233457_right_count small_4233457_right_encoded small_4233457_right_checked

theorem cover_4233457 : CoveredBy scale carrier boxes root_4233457 := by
  apply coveredBy_split_literal root_4233457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233462 small_4233457_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233462
  · exact small_4233457_right_covered
#print axioms cover_4233457

def root_4233456 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233456_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233456_right_fuel : Nat := 17
def small_4233456_right_count : Nat := 123
def small_4233456_right_encoded : String := "135D4505000000020CFD9C070F34D10600000003045489FF1386AD08078000F600000007128A4101000000000280010213D7B0F9028000FA13D7ED050AD357870000000710D13D06000000080000000300000002000000070000000113D7ECF900000001028000FA13D7ED050AD357870000000710D13D0600000007000000030000000200000005000000041386710800000004078000F6128A7D010280010213D7B0F9028000FA13D7ED05000000070000000200000007000000010000000700000000128A4101000000000280010213D7B0F9028000FA13D7ED050AD3578710D10106000000030000000510D13D060000000A00000003000000020000000500000001000000050F350D06045489FF1386AD080C9A8706000000080F878D07078000F600000008128A41010000000000000008000000030000000413867108000000040C9A87060F87510700000003078000F600000008128A410100000000000000080F878D07078000F6128A7D010280010213D7B0F9028000FA13D7ED05022A457F000000080000000A00000002000000080000000113D7ECF900000001028000FA13D7ED05022A457F0000000813E1C508000000040DE7CA060000000800000005000000020000000500000000128A410100000000028001020000000A000000050000000300000003"
theorem small_4233456_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233456_right_root small_4233456_right_fuel small_4233456_right_count small_4233456_right_encoded = true := by
  decide +kernel
theorem small_4233456_right_covered : CoveredBy scale carrier boxes small_4233456_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233456_right_root small_4233456_right_fuel small_4233456_right_count small_4233456_right_encoded small_4233456_right_checked

theorem cover_4233456 : CoveredBy scale carrier boxes root_4233456 := by
  apply coveredBy_split_literal root_4233456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233457 small_4233456_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233457
  · exact small_4233456_right_covered
#print axioms cover_4233456

def root_4233451 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233451_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233451_right_fuel : Nat := 1
def small_4233451_right_count : Nat := 1
def small_4233451_right_encoded : String := "00000001"
theorem small_4233451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233451_right_root small_4233451_right_fuel small_4233451_right_count small_4233451_right_encoded = true := by
  decide +kernel
theorem small_4233451_right_covered : CoveredBy scale carrier boxes small_4233451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233451_right_root small_4233451_right_fuel small_4233451_right_count small_4233451_right_encoded small_4233451_right_checked

theorem cover_4233451 : CoveredBy scale carrier boxes root_4233451 := by
  apply coveredBy_split_literal root_4233451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233456 small_4233451_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233456
  · exact small_4233451_right_covered
#print axioms cover_4233451

def root_4233450 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4233450 : CoveredBy scale carrier boxes root_4233450 := by
  apply coveredBy_split_literal root_4233450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233451 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1584.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233451
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1584.covered
#print axioms cover_4233450

def root_4233445 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233445_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233445_right_fuel : Nat := 1
def small_4233445_right_count : Nat := 1
def small_4233445_right_encoded : String := "00000000"
theorem small_4233445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233445_right_root small_4233445_right_fuel small_4233445_right_count small_4233445_right_encoded = true := by
  decide +kernel
theorem small_4233445_right_covered : CoveredBy scale carrier boxes small_4233445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233445_right_root small_4233445_right_fuel small_4233445_right_count small_4233445_right_encoded small_4233445_right_checked

theorem cover_4233445 : CoveredBy scale carrier boxes root_4233445 := by
  apply coveredBy_split_literal root_4233445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233450 small_4233445_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233450
  · exact small_4233445_right_covered
#print axioms cover_4233445

def root_4233444 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233444_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233444_right_fuel : Nat := 25
def small_4233444_right_count : Nat := 275
def small_4233444_right_encoded : String := "135D45010000000005000102135D44F9050000FA135D81050CFD9C070F34D10600000003045489FF1386AD08028000F613D7ED010280010213D7B0F9078000FA128A7D050AD357870000000610D13D06067ECE7F0000000612EA590800000004000000060000000300000002128A4105000000020AD3578710D1010600000003067ECE7F0000000612EA5908000000040000000610D13D06067ECE7F0000000912EA59080000000403C000F613A54D010140010213F5D8F9064000FA000000060000000900000001000000090000000000000009000000030000000113D7ECF900000001078000FA128A7D050AD3578710D1010600000003067ECE7F0000000612EA590800000004000000060000000900000002128A4105000000020AD3578710D1010600000003067ECE7F0000000900000005000000090000000013D7B101000000000280010213D7B0F9078000FA128A7D050000000600000002128A4105000000020AD3578710D101060000000300000006000000090000000100000009000000041386710800000004028000F613D7ED010280010213D7B0F9078000FA128A7D050AD357870000000610D13D06022A457F000000060000000A0000000300000002128A4105000000020AD3578710D10106000000030000000510D13D060000000A000000030000000113D7ECF900000001078000FA128A7D050AD3578710D1010600000003022A457F000000060000000510D13D06022A457F13E2010803C000F613A54D0103C0010213A510F9000000090000000100000005000000000000000500000004000000050000000300000002000000050000000013D7B101000000000280010213D7B0F9078000FA128A7D050AD357870000000610D13D060000000A00000003000000020000000500000001000000050F350D06045489FF0000000913867108000000040C9A87060F87510700000003000000070F878D07028000F613D7ED010280010213D7B0F9078000FA128A7D05022A457F0000000900000007000000020000000A0000000113D7ECF900000001078000FA128A7D05022A457F000000090000000700000002000000050000000013D7B10100000000028001020000000A00000005000000030000000300000002135D4505000000020CFD9C070F34D10600000003045489FF1386AD08028000F613D7ED010280010213D7B0F9028000FA13D7ED050AD3578710D1010600000003067ECE7F000000070000000510D13D06067ECE7F00000008000000050000000300000002000000050000000100000005000000000000000500000004000000050F350D06045489FF0000000913867108000000040C9A87060000000A000000050000000300000001135D80F900000001050000FA135D81050CFD9C070F34D10600000003045489FF000000091386710800000004000000050F350D06045489FF000000091386710800000004000000090000000300000002135D4505000000020CFD9C070F34D106000000030000000500000005"
theorem small_4233444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233444_right_root small_4233444_right_fuel small_4233444_right_count small_4233444_right_encoded = true := by
  decide +kernel
theorem small_4233444_right_covered : CoveredBy scale carrier boxes small_4233444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233444_right_root small_4233444_right_fuel small_4233444_right_count small_4233444_right_encoded small_4233444_right_checked

theorem cover_4233444 : CoveredBy scale carrier boxes root_4233444 := by
  apply coveredBy_split_literal root_4233444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233445 small_4233444_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233445
  · exact small_4233444_right_covered
#print axioms cover_4233444

def root_4233438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233438_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233438_left_fuel : Nat := 1
def small_4233438_left_count : Nat := 1
def small_4233438_left_encoded : String := "00000004"
theorem small_4233438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233438_left_root small_4233438_left_fuel small_4233438_left_count small_4233438_left_encoded = true := by
  decide +kernel
theorem small_4233438_left_covered : CoveredBy scale carrier boxes small_4233438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233438_left_root small_4233438_left_fuel small_4233438_left_count small_4233438_left_encoded small_4233438_left_checked

theorem cover_4233438 : CoveredBy scale carrier boxes root_4233438 := by
  apply coveredBy_split_literal root_4233438 small_4233438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233444 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4233438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233444
#print axioms cover_4233438

def root_4233034 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233034_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233034_left_fuel : Nat := 20
def small_4233034_left_count : Nat := 187
def small_4233034_left_encoded : String := "12073D08050000F6135D810105000102135D44F9050000FA135D81050CFD9C070F34D106000000030CFD9BFF0F350D0800000007000000040F34D10800000004078000F600000007128A4101000000000280010213D7B0F9078000FA128A7D050AD357870000000710D13D06000000090000000300000002000000070000000113D7ECF900000001078000FA128A7D050000000900000002000000070F350D060CFD9BFF000000080F34D108000000040C9A8706000000080F878D07078000F600000008128A41010000000000000009000000030000000300000002135D4505000000020CFD9C070F34D106000000030CFD9BFF00000007000000070000000800000001135D80F900000001050000FA135D81050CFD9C070F34D106000000030CFD9BFF000000070F34D10800000004078000F600000007128A410100000000000000070F350D060CFD9BFF0F350D080C9A8706000000080000000A000000040F34D10800000004000000090000000300000002135D4505000000020CFD9C070F34D10600000003000000070F350D060CFD9BFF000000080F34D10800000004000000080000000300000000135D45010000000005000102135D44F9050000FA135D81050CFD9C070F34D106000000030CFD9BFF0F350D080C9A87080F8750FF000000070000000400000009000000040F34D10800000004028000F613D7ED010280010213D7B0F9078000FA0000000900000009000000010000000900000000000000090F350D060CFD9BFF000000090F34D10800000004000000090000000300000002135D4505000000020CFD9C070F34D106000000030CFD9BFF000000090F34D10800000004000000090F350D06000000080000000300000001135D80F900000001050000FA135D81050CFD9C070F34D106000000030CFD9BFF000000090F34D10800000004000000090F350D060CFD9BFF000000090F34D10800000004000000090000000300000002135D4505000000020CFD9C07000000090F350D06000000090000000300000004"
theorem small_4233034_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233034_left_root small_4233034_left_fuel small_4233034_left_count small_4233034_left_encoded = true := by
  decide +kernel
theorem small_4233034_left_covered : CoveredBy scale carrier boxes small_4233034_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233034_left_root small_4233034_left_fuel small_4233034_left_count small_4233034_left_encoded small_4233034_left_checked

theorem cover_4233034 : CoveredBy scale carrier boxes root_4233034 := by
  apply coveredBy_split_literal root_4233034 small_4233034_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233438 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4233034_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233438
#print axioms cover_4233034

def root_4233029 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233029_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233029_right_fuel : Nat := 1
def small_4233029_right_count : Nat := 1
def small_4233029_right_encoded : String := "00000003"
theorem small_4233029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233029_right_root small_4233029_right_fuel small_4233029_right_count small_4233029_right_encoded = true := by
  decide +kernel
theorem small_4233029_right_covered : CoveredBy scale carrier boxes small_4233029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233029_right_root small_4233029_right_fuel small_4233029_right_count small_4233029_right_encoded small_4233029_right_checked

theorem cover_4233029 : CoveredBy scale carrier boxes root_4233029 := by
  apply coveredBy_split_literal root_4233029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233034 small_4233029_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233034
  · exact small_4233029_right_covered
#print axioms cover_4233029

def root_4232413 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232413_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232413_left_fuel : Nat := 24
def small_4232413_left_count : Nat := 295
def small_4232413_left_encoded : String := "120701060000000308A912FF12073D08050000F6135D81010000000700000000135D45010000000005000102135D44F9050000FA135D810504548A07000000071386AD060CFD9BFF0F350D0800000007000000040F34D10800000004028000F60000000713D7B101000000000280010200000006000000090000000300000002135D45050000000204548A07000000071386AD060CFD9BFF00000007000000070000000300000001135D80F900000001050000FA135D810504548A071386710600000003000000071386AD060CFD9BFF000000070F34D1080000000400000009000000030000000200000007000000041207010800000004050000F6135D810105000102135D44F9050000FA135D810504548A071386710600000003045489FF000000061386710800000004078000F600000007000000071386AD06045489FF000000071386710800000004078000F6128A7D01028001020000000713D7ECF9000000010000000700000000128A4101000000000280010213D7B0F9000000060000000113D7ECF900000001078000FA128A7D0500000006000000020000000700000003000000020000000700000001135D80F900000001050000FA135D810504548A071386710600000003045489FF000000071386710800000004078000F600000007128A41010000000007800102128A40F9078000FA000000060000000500000001000000051386AD06045489FF1386AD08078000F60000000700000007000000041386710800000004078000F6128A7D0107800102128A40F9078000FA128A7D0500000007000000020000000700000001128A7CF900000001078000FA128A7D0500000007000000020000000500000000128A41010000000007800102128A40F9078000FA128A7D05067ECE8712EA590600000003022A457F000000060000000512EA9506022A457F13E2010800000007000000040000000500000003000000020000000500000001000000050000000300000002135D45050000000204548A07000000070000000700000000135D45010000000005000102135D44F9050000FA135D810504548A071386710600000003000000061386AD06045489FF1386AD08028000F613D7ED01028001020000000613D7ECF900000001078000FA00000006000000070000000013D7B10100000000028001020000000613D7ECF900000001078000FA0000000600000005000000041386710800000004028000F613D7ED01028001020000000613D7ECF900000001078000FA00000006000000050000000013D7B101000000000280010200000006000000050000000300000002135D45050000000204548A071386710600000003000000071386AD06045489FF1386AD08028000F6000000070000000500000004000000050000000300000001135D80F900000001050000FA135D810504548A071386710600000003045489FF1386AD08028000F6000000070000000500000004000000051386AD06045489FF1386AD08028000F613D7ED0107800102128A40F9078000FA128A7D05067ECE870000000612EA950600000009000000030000000200000005000000010000000500000000000000050000000400000005000000030000000200000005"
theorem small_4232413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232413_left_root small_4232413_left_fuel small_4232413_left_count small_4232413_left_encoded = true := by
  decide +kernel
theorem small_4232413_left_covered : CoveredBy scale carrier boxes small_4232413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232413_left_root small_4232413_left_fuel small_4232413_left_count small_4232413_left_encoded small_4232413_left_checked

theorem cover_4232413 : CoveredBy scale carrier boxes root_4232413 := by
  apply coveredBy_split_literal root_4232413 small_4232413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4233029 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4232413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4233029
#print axioms cover_4232413

def root_4232407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232407_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232407_left_fuel : Nat := 1
def small_4232407_left_count : Nat := 1
def small_4232407_left_encoded : String := "00000004"
theorem small_4232407_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232407_left_root small_4232407_left_fuel small_4232407_left_count small_4232407_left_encoded = true := by
  decide +kernel
theorem small_4232407_left_covered : CoveredBy scale carrier boxes small_4232407_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232407_left_root small_4232407_left_fuel small_4232407_left_count small_4232407_left_encoded small_4232407_left_checked

theorem cover_4232407 : CoveredBy scale carrier boxes root_4232407 := by
  apply coveredBy_split_literal root_4232407 small_4232407_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4232413 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4232407_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4232413
#print axioms cover_4232407

def root_4232331 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232331_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232331_left_fuel : Nat := 13
def small_4232331_left_count : Nat := 35
def small_4232331_left_encoded : String := "1151E8FF08A9130712070106000000030000000712073D06050000F6135D810105000102135D44F900000008000000010000000700000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D81050500010800000007135D80FF000000040CFD9C07000000070000000800000002000000070000000300000004"
theorem small_4232331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232331_left_root small_4232331_left_fuel small_4232331_left_count small_4232331_left_encoded = true := by
  decide +kernel
theorem small_4232331_left_covered : CoveredBy scale carrier boxes small_4232331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232331_left_root small_4232331_left_fuel small_4232331_left_count small_4232331_left_encoded small_4232331_left_checked

theorem cover_4232331 : CoveredBy scale carrier boxes root_4232331 := by
  apply coveredBy_split_literal root_4232331 small_4232331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4232407 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4232331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4232407
#print axioms cover_4232331

def root_4232326 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232326_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232326_right_fuel : Nat := 1
def small_4232326_right_count : Nat := 1
def small_4232326_right_encoded : String := "00000003"
theorem small_4232326_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232326_right_root small_4232326_right_fuel small_4232326_right_count small_4232326_right_encoded = true := by
  decide +kernel
theorem small_4232326_right_covered : CoveredBy scale carrier boxes small_4232326_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232326_right_root small_4232326_right_fuel small_4232326_right_count small_4232326_right_encoded small_4232326_right_checked

theorem cover_4232326 : CoveredBy scale carrier boxes root_4232326 := by
  apply coveredBy_split_literal root_4232326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4232331 small_4232326_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4232331
  · exact small_4232326_right_covered
#print axioms cover_4232326

def root_4232172 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232172_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232172_left_fuel : Nat := 19
def small_4232172_left_count : Nat := 73
def small_4232172_left_encoded : String := "1151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912FF12073D08050000F6135D810105000102000000080000000800000000135D45010000000005000102135D44F90000000800000001135D80F900000001050000FA135D8105000000090000000200000006000000041207010800000004050000F6135D810105000102135D44F9050000FA135D81050500010600000008135D8107045489FF000000081386710800000004078000F6128A7D01028001020000000800000008000000000000000700000003000000020000000800000001135D80F900000001050000FA135D81050500010600000006135D81070000000900000003000000020000000900000000135D450100000000050001020000000900000009"
theorem small_4232172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232172_left_root small_4232172_left_fuel small_4232172_left_count small_4232172_left_encoded = true := by
  decide +kernel
theorem small_4232172_left_covered : CoveredBy scale carrier boxes small_4232172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232172_left_root small_4232172_left_fuel small_4232172_left_count small_4232172_left_encoded small_4232172_left_checked

theorem cover_4232172 : CoveredBy scale carrier boxes root_4232172 := by
  apply coveredBy_split_literal root_4232172 small_4232172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4232326 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4232172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4232326
#print axioms cover_4232172

def root_4232166 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232166_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4232166_left_fuel : Nat := 1
def small_4232166_left_count : Nat := 1
def small_4232166_left_encoded : String := "00000002"
theorem small_4232166_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4232166_left_root small_4232166_left_fuel small_4232166_left_count small_4232166_left_encoded = true := by
  decide +kernel
theorem small_4232166_left_covered : CoveredBy scale carrier boxes small_4232166_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4232166_left_root small_4232166_left_fuel small_4232166_left_count small_4232166_left_encoded small_4232166_left_checked

theorem cover_4232166 : CoveredBy scale carrier boxes root_4232166 := by
  apply coveredBy_split_literal root_4232166 small_4232166_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4232172 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4232166_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4232172
#print axioms cover_4232166

def root_4224666 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4224666 : CoveredBy scale carrier boxes root_4224666 := by
  apply coveredBy_split_literal root_4224666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4224667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4232166 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4224667
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4232166
#print axioms cover_4224666

def root_4224661 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224661_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224661_right_fuel : Nat := 1
def small_4224661_right_count : Nat := 1
def small_4224661_right_encoded : String := "00000001"
theorem small_4224661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224661_right_root small_4224661_right_fuel small_4224661_right_count small_4224661_right_encoded = true := by
  decide +kernel
theorem small_4224661_right_covered : CoveredBy scale carrier boxes small_4224661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224661_right_root small_4224661_right_fuel small_4224661_right_count small_4224661_right_encoded small_4224661_right_checked

theorem cover_4224661 : CoveredBy scale carrier boxes root_4224661 := by
  apply coveredBy_split_literal root_4224661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4224666 small_4224661_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4224666
  · exact small_4224661_right_covered
#print axioms cover_4224661

def root_4224660 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4224660 : CoveredBy scale carrier boxes root_4224660 := by
  apply coveredBy_split_literal root_4224660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4224661 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1585.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4224661
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1585.covered
#print axioms cover_4224660

def root_4224654 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224654_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224654_left_fuel : Nat := 1
def small_4224654_left_count : Nat := 1
def small_4224654_left_encoded : String := "00000000"
theorem small_4224654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224654_left_root small_4224654_left_fuel small_4224654_left_count small_4224654_left_encoded = true := by
  decide +kernel
theorem small_4224654_left_covered : CoveredBy scale carrier boxes small_4224654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224654_left_root small_4224654_left_fuel small_4224654_left_count small_4224654_left_encoded small_4224654_left_checked

theorem cover_4224654 : CoveredBy scale carrier boxes root_4224654 := by
  apply coveredBy_split_literal root_4224654 small_4224654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4224660 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4224654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4224660
#print axioms cover_4224654

def root_4214496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4214496 : CoveredBy scale carrier boxes root_4214496 := by
  apply coveredBy_split_literal root_4214496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4214497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4224654 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4214497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4224654
#print axioms cover_4214496

def root_4257857 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4257857 : CoveredBy scale carrier boxes root_4257857 := by
  apply coveredBy_split_literal root_4257857 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1590.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1591.root coord3 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1590.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1591.covered
#print axioms cover_4257857

def root_4257851 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257851_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257851_left_fuel : Nat := 1
def small_4257851_left_count : Nat := 1
def small_4257851_left_encoded : String := "00000002"
theorem small_4257851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4257851_left_root small_4257851_left_fuel small_4257851_left_count small_4257851_left_encoded = true := by
  decide +kernel
theorem small_4257851_left_covered : CoveredBy scale carrier boxes small_4257851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4257851_left_root small_4257851_left_fuel small_4257851_left_count small_4257851_left_encoded small_4257851_left_checked

theorem cover_4257851 : CoveredBy scale carrier boxes root_4257851 := by
  apply coveredBy_split_literal root_4257851 small_4257851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4257857 coord2 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4257851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4257857
#print axioms cover_4257851

def root_4257289 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257289_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257289_left_fuel : Nat := 19
def small_4257289_left_count : Nat := 269
def small_4257289_left_encoded : String := "10804D050DE7CA060E5FD907000000030640010212FF70F90115234913F85908000000040AA6A27610EDAD010BF3E57A000000051008ED05000000020D412886000000050EFA4D0700000005000000030000000010ED7101000000000BF3E57A000000071008ED05000000020D412886000000070EFA4D0705A00102133134F90000000700000001133170F900000001008A922913FDF908000000040A5351B60000000A00000007000000070000000313F895080AA6A27610EDAD010BF3E57A1009290500000007000000021008ED05000000020D412886000000070EFA4D0705A00102133134F90000000500000001133170F900000001019FB46913EEF908000000040AF9F336000000050000000700000007000000030000000010ED71010000000000000007000000040000000112FFACF9000000010115234913F85908000000040AA6A27610EDAD010BF3E57A0000000A1008ED05000000020D4128860EFA1107000000030000000A0000000A0000000010ED7101000000000BF3E57A100929050D412886000000070000000A000000021008ED05000000020D412886000000070EFA4D0706E0010212C7E4F9008A92290000000900000007000000010000000A0000000313F895080AA6A27610EDAD010BF3E57A100929050D412886000000070EFA4D070000000800000003000000021008ED05000000020D4128860EFA110700000003000000070EFA4D0706E0010212C7E4F9019FB46913EEF908000000040AF9F3360000000A00000008000000070000000112C820F900000001019FB4690000000A00000008000000030000000010ED7101000000000BF3E57A000000071008ED050000000200000007000000040E6015070640010212FF70F90115234913F85908000000040DAED8870E962506000000030AA6A27610EDAD010BF3E57A000000051008ED050000000205A00102000000050000000800000000000000080E9661060AA6A27610EDAD010BF3E57A000000051008ED050000000205A0010200000005133170F900000001008A92290000000513FE35080E0776C70000000500000008000000040000000010ED7101000000000BF3E57A1009290500000008000000021008ED050000000205A00102133134F9008A9229000000050000000800000001133170F900000001008A922913FDF908000000040E0776C7000000080000000A000000080000000313F895080DAED887000000080E9661060AA6A27610EDAD0100000008000000000000000800000003000000040000000112FFACF9000000010115234913F85908000000040DAED8870E962506000000030AA6A2760000000A000000080E9661060AA6A2760000000A10ED7101000000000BF3E57A000000081008ED050000000206E001020000000A0000000A0000000313F895080DAED887000000080E9661060AA6A27610EDAD0100000008000000000000000800000003000000040000000300000002"
theorem small_4257289_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4257289_left_root small_4257289_left_fuel small_4257289_left_count small_4257289_left_encoded = true := by
  decide +kernel
theorem small_4257289_left_covered : CoveredBy scale carrier boxes small_4257289_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4257289_left_root small_4257289_left_fuel small_4257289_left_count small_4257289_left_encoded small_4257289_left_checked

theorem cover_4257289 : CoveredBy scale carrier boxes root_4257289 := by
  apply coveredBy_split_literal root_4257289 small_4257289_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4257851 coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_4257289_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4257851
#print axioms cover_4257289

def root_4257283 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257283_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4257283_left_fuel : Nat := 1
def small_4257283_left_count : Nat := 1
def small_4257283_left_encoded : String := "00000000"
theorem small_4257283_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4257283_left_root small_4257283_left_fuel small_4257283_left_count small_4257283_left_encoded = true := by
  decide +kernel
theorem small_4257283_left_covered : CoveredBy scale carrier boxes small_4257283_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4257283_left_root small_4257283_left_fuel small_4257283_left_count small_4257283_left_encoded small_4257283_left_checked

theorem cover_4257283 : CoveredBy scale carrier boxes root_4257283 := by
  apply coveredBy_split_literal root_4257283 small_4257283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4257289 coord0 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4257283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4257289
#print axioms cover_4257283

def root_4255833 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4255833 : CoveredBy scale carrier boxes root_4255833 := by
  apply coveredBy_split_literal root_4255833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1589.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4257283 coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1589.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4257283
#print axioms cover_4255833

def root_4255827 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255827_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255827_left_fuel : Nat := 1
def small_4255827_left_count : Nat := 1
def small_4255827_left_encoded : String := "00000004"
theorem small_4255827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4255827_left_root small_4255827_left_fuel small_4255827_left_count small_4255827_left_encoded = true := by
  decide +kernel
theorem small_4255827_left_covered : CoveredBy scale carrier boxes small_4255827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4255827_left_root small_4255827_left_fuel small_4255827_left_count small_4255827_left_encoded small_4255827_left_checked

theorem cover_4255827 : CoveredBy scale carrier boxes root_4255827 := by
  apply coveredBy_split_literal root_4255827 small_4255827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4255833 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4255827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4255833
#print axioms cover_4255827

def root_4255826 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255826_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255826_right_fuel : Nat := 24
def small_4255826_right_count : Nat := 447
def small_4255826_right_encoded : String := "13E201080B4D43F610804D010B4D43FA10804D050DE7CA060E5FD907000000030640010212FF70F9033F67C913BBF508000000040BF3E5761009290100000005000000001008ED01000000000BF3E57A1009290500000005000000021008ED05000000020D4128860EFA1107000000030000000700000009000000090000000112FFACF900000001033F67C913BBF508000000040BF3E576100929010BF3E57A100929050D4128860000000500000009000000021008ED05000000020D4128860EFA11070000000306E0010212C7E4F9000000090000000112C820F90000000102B4D6A90000000A0000000900000009000000001008ED01000000000BF3E57A100929050D4128860000000700000008000000021008ED05000000020D4128860EFA110700000003000000070EFA4D0706E0010200000008000000080000000313BC31080BF3E5761009290100000009000000001008ED010000000000000008000000040E601507064001020000000912FFACF900000001033F67C913BBF508000000040DAED887000000080E9661060BF3E57600000009000000080000000300000008000000030000000210801105000000020DE7CA060E5FD907000000030640010212FF70F9033F67C913BBF508000000040BF3E576000000091008ED01000000000AA6A27A10EDAD050D4128860EFA11070000000305A0010200000009133170F90000000100000009000000090000000210ED71050000000200000009000000090000000112FFACF900000001033F67C913BBF508000000040BF3E576100929010AA6A27A10EDAD050D4128860EFA11070000000306E001020000000900000006000000090000000210ED7105000000020D4128860000000600000009000000001008ED01000000000AA6A27A10EDAD050D4128860EFA11070000000306E0010212C7E4F902B4D6A9000000060000000600000001000000060EFA4D0706E0010212C7E4F9000000090000000112C820F90000000102B4D6A913D0D108000000040BA094B61046050100000006000000000000000600000008000000030000000210ED7105000000020D412886000000060EFA4D0706E0010200000009000000060000000313BC31080BF3E5761009290100000009000000001008ED01000000000AA6A27A10EDAD050D4128860EFA11070000000300000007000000090000000210ED71050000000200000009000000040E601507064001020000000912FFACF900000001033F67C913BBF508000000040DAED887000000090E9661060BF3E576000000091008ED01000000000AA6A27A00000009000000090000000300000009000000030000000010801101000000000B4D43FA10804D050DE7CA060E5FD907000000030640010212FF70F9033F67C913BBF508000000040AA6A27610EDAD010BF3E57A000000071008ED0500000002000000070000000000000007000000070000000112FFACF900000001033F67C913BBF508000000040AA6A27610EDAD010BF3E57A000000071008ED05000000020D41288600000007000000080000000000000007000000070E601507064001020000000800000008000000030000000210801105000000020DE7CA060E5FD907000000030640010212FF70F9033F67C913BBF508000000040AA6A27610EDAD010AA6A27A10EDAD050D412886000000070EFA4D0705A0010200000009133170F90000000102B4D6A913D0D108000000040AF9F336000000070000000700000007000000030000000210ED7105000000020D4128860EFA11070000000300000007000000090000000010ED7101000000000AA6A27A0000000710ED7105000000020000000713BC31080AA6A27610EDAD010AA6A27A00000007000000090000000000000007000000040000000112FFACF900000001033F67C913BBF508000000040AA6A27610EDAD010AA6A27A10EDAD050D412886000000070EFA4D0706E001020000000812C820F90000000100000008000000030000000210ED7105000000020D412886000000060EFA4D0706E0010212C7E4F902B4D6A900000006000000060000000100000006000000030000000010ED7101000000000AA6A27A0000000710ED7105000000020D412886000000060000000513BC31080AA6A27610EDAD010AA6A27A10EDAD05000000070000000210ED7105000000020D41288600000006000000050000000010ED71010000000000000007000000040E6015070640010212FF70F9033F67C913BBF508000000040DAED8870E96250600000003000000080E9661060AA6A2760000000910ED7101000000000000000800000003000000080000000112FFACF900000001033F67C913BBF508000000040DAED8870E96250600000003000000080E9661060AA6A27610EDAD010AA6A27A0000000810ED71050000000206E001020000000800000005000000000000000800000003000000080000000300000004"
theorem small_4255826_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4255826_right_root small_4255826_right_fuel small_4255826_right_count small_4255826_right_encoded = true := by
  decide +kernel
theorem small_4255826_right_covered : CoveredBy scale carrier boxes small_4255826_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4255826_right_root small_4255826_right_fuel small_4255826_right_count small_4255826_right_encoded small_4255826_right_checked

theorem cover_4255826 : CoveredBy scale carrier boxes root_4255826 := by
  apply coveredBy_split_literal root_4255826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4255827 small_4255826_right_root coord4 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4255827
  · exact small_4255826_right_covered
#print axioms cover_4255826

def root_4255821 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255821_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255821_right_fuel : Nat := 1
def small_4255821_right_count : Nat := 1
def small_4255821_right_encoded : String := "00000001"
theorem small_4255821_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4255821_right_root small_4255821_right_fuel small_4255821_right_count small_4255821_right_encoded = true := by
  decide +kernel
theorem small_4255821_right_covered : CoveredBy scale carrier boxes small_4255821_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4255821_right_root small_4255821_right_fuel small_4255821_right_count small_4255821_right_encoded small_4255821_right_checked

theorem cover_4255821 : CoveredBy scale carrier boxes root_4255821 := by
  apply coveredBy_split_literal root_4255821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4255826 small_4255821_right_root coord1 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4255826
  · exact small_4255821_right_covered
#print axioms cover_4255821

def root_4255820 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4255820 : CoveredBy scale carrier boxes root_4255820 := by
  apply coveredBy_split_literal root_4255820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4255821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1592.root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4255821
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1592.covered
#print axioms cover_4255820

def root_4255815 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255815_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4255815_right_fuel : Nat := 1
def small_4255815_right_count : Nat := 1
def small_4255815_right_encoded : String := "00000003"
theorem small_4255815_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4255815_right_root small_4255815_right_fuel small_4255815_right_count small_4255815_right_encoded = true := by
  decide +kernel
theorem small_4255815_right_covered : CoveredBy scale carrier boxes small_4255815_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4255815_right_root small_4255815_right_fuel small_4255815_right_count small_4255815_right_encoded small_4255815_right_checked

theorem cover_4255815 : CoveredBy scale carrier boxes root_4255815 := by
  apply coveredBy_split_literal root_4255815 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.root_4255820 small_4255815_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108.cover_4255820
  · exact small_4255815_right_covered
#print axioms cover_4255815

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0108
