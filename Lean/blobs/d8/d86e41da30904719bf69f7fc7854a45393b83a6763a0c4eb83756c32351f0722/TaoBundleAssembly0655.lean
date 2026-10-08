import TaoBundleAssembly0653
import TaoBundleAssembly0654
import TaoBundleChunkBatch0896
import TaoBundleChunkBatch0897
import TaoBundleChunkBatch0902
import TaoBundleChunkBatch0903
import TaoBundleChunkBatch0904
import TaoBundleChunkBatch0905
import TaoBundleChunkBatch0906
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655
def root_9591627 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591627_left_fuel : Nat := 1
def small_9591627_left_count : Nat := 1
def small_9591627_left_encoded : String := "00000004"
theorem small_9591627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591627_left_root small_9591627_left_fuel small_9591627_left_count small_9591627_left_encoded = true := by
  decide +kernel
theorem small_9591627_left_covered : CoveredBy scale carrier boxes small_9591627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591627_left_root small_9591627_left_fuel small_9591627_left_count small_9591627_left_encoded small_9591627_left_checked

theorem cover_9591627 : CoveredBy scale carrier boxes root_9591627 := by
  apply coveredBy_split_literal root_9591627 small_9591627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.root_9591633 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9591627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0654.cover_9591633
#print axioms cover_9591627

def root_9591626 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591626 : CoveredBy scale carrier boxes root_9591626 := by
  apply coveredBy_split_literal root_9591626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9591627 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3606.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9591627
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3606.covered
#print axioms cover_9591626

def root_9591620 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591620_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591620_left_fuel : Nat := 1
def small_9591620_left_count : Nat := 1
def small_9591620_left_encoded : String := "00000003"
theorem small_9591620_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591620_left_root small_9591620_left_fuel small_9591620_left_count small_9591620_left_encoded = true := by
  decide +kernel
theorem small_9591620_left_covered : CoveredBy scale carrier boxes small_9591620_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591620_left_root small_9591620_left_fuel small_9591620_left_count small_9591620_left_encoded small_9591620_left_checked

theorem cover_9591620 : CoveredBy scale carrier boxes root_9591620 := by
  apply coveredBy_split_literal root_9591620 small_9591620_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9591626 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9591620_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9591626
#print axioms cover_9591620

def root_9591619 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9591619 : CoveredBy scale carrier boxes root_9591619 := by
  apply coveredBy_split_literal root_9591619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9591620 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3607.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9591620
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3607.covered
#print axioms cover_9591619

def root_9591613 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591613_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9591613_left_fuel : Nat := 1
def small_9591613_left_count : Nat := 1
def small_9591613_left_encoded : String := "00000002"
theorem small_9591613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9591613_left_root small_9591613_left_fuel small_9591613_left_count small_9591613_left_encoded = true := by
  decide +kernel
theorem small_9591613_left_covered : CoveredBy scale carrier boxes small_9591613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9591613_left_root small_9591613_left_fuel small_9591613_left_count small_9591613_left_encoded small_9591613_left_checked

theorem cover_9591613 : CoveredBy scale carrier boxes root_9591613 := by
  apply coveredBy_split_literal root_9591613 small_9591613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9591619 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9591613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9591619
#print axioms cover_9591613

def root_9589645 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9589645 : CoveredBy scale carrier boxes root_9589645 := by
  apply coveredBy_split_literal root_9589645 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3586.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9591613 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3586.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9591613
#print axioms cover_9589645

def root_9589639 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9589639_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9589639_left_fuel : Nat := 1
def small_9589639_left_count : Nat := 1
def small_9589639_left_encoded : String := "00000001"
theorem small_9589639_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9589639_left_root small_9589639_left_fuel small_9589639_left_count small_9589639_left_encoded = true := by
  decide +kernel
theorem small_9589639_left_covered : CoveredBy scale carrier boxes small_9589639_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9589639_left_root small_9589639_left_fuel small_9589639_left_count small_9589639_left_encoded small_9589639_left_checked

theorem cover_9589639 : CoveredBy scale carrier boxes root_9589639 := by
  apply coveredBy_split_literal root_9589639 small_9589639_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9589645 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9589639_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9589645
#print axioms cover_9589639

def root_9585951 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9585951 : CoveredBy scale carrier boxes root_9585951 := by
  apply coveredBy_split_literal root_9585951 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9585952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9589639 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9585952
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9589639
#print axioms cover_9585951

def root_9585946 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9585946_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9585946_right_fuel : Nat := 1
def small_9585946_right_count : Nat := 1
def small_9585946_right_encoded : String := "00000000"
theorem small_9585946_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9585946_right_root small_9585946_right_fuel small_9585946_right_count small_9585946_right_encoded = true := by
  decide +kernel
theorem small_9585946_right_covered : CoveredBy scale carrier boxes small_9585946_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9585946_right_root small_9585946_right_fuel small_9585946_right_count small_9585946_right_encoded small_9585946_right_checked

theorem cover_9585946 : CoveredBy scale carrier boxes root_9585946 := by
  apply coveredBy_split_literal root_9585946 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9585951 small_9585946_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9585951
  · exact small_9585946_right_covered
#print axioms cover_9585946

def root_9584504 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584504 : CoveredBy scale carrier boxes root_9584504 := by
  apply coveredBy_split_literal root_9584504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3583.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9585946 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3583.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9585946
#print axioms cover_9584504

def root_9584503 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584503 : CoveredBy scale carrier boxes root_9584503 := by
  apply coveredBy_split_literal root_9584503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9584504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3608.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9584504
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3608.covered
#print axioms cover_9584503

def root_9643741 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9643741 : CoveredBy scale carrier boxes root_9643741 := by
  apply coveredBy_split_literal root_9643741 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3609.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3610.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3609.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3610.covered
#print axioms cover_9643741

def root_9643740 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9643740 : CoveredBy scale carrier boxes root_9643740 := by
  apply coveredBy_split_literal root_9643740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9643741 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3611.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9643741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3611.covered
#print axioms cover_9643740

def root_9584502 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584502 : CoveredBy scale carrier boxes root_9584502 := by
  apply coveredBy_split_literal root_9584502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9584503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9643740 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9584503
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9643740
#print axioms cover_9584502

def root_9652885 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652885_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652885_left_fuel : Nat := 20
def small_9652885_left_count : Nat := 269
def small_9652885_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A91307120700FC08A91309120700FE0000000500000004000000050000000312073CFC0000000308A91309120700FE00000005000000040000000512073D0008A91307000000060000000500000000000000041151E9090000000408A91301120701000000000008A913070000000612073CFC000000030500010200000005135D80F9000000010500010400000005135D80FB00000002050000FE00000005135D45090000000404548A0113867100000000000CFD9C07000000060F350CFC00000003000000060000000612073D0008A913070000000612073CFC000000030500010200000005135D80F9000000010500010400000005135D80FB00000002050000FE00000005135D4509000000040000000700000000000000031151E907000000030A0000FE1152250908A91301120701000000000008A913090000000612073CFE000000040500010200000005135D80F9000000010500010400000005135D80FB00000002050000FC00000005135D45070000000304548A0113867100000000000CFD9C09000000060F350CFE00000004000000060000000612073D0008A913090000000612073CFE000000040500010200000005135D80F9000000010500010400000005135D80FB00000002050000FC00000005135D4507000000030000000800000000000000041151E9090000000408A91301120701000000000005000102135D44F90500010400000006135D80FB00000002050000FC000000060000000600000001135D80F90000000105000104135D44FB050000FC000000060000000600000002135D80FB00000002050000FC135D8107050000FE135D810904548A0113867100000000000780010200000005128A7CF900000001000000060000000600000004135D45090000000404548A011386710000000000000000060000000600000003135D450700000003050000FE135D810904548A011386710000000000000000060000000600000004135D45090000000404548A011386710000000000000000060000000612073D0005000102135D44F90500010400000006135D80FB00000002050000FC135D81070000000600000003135D450700000003050000FE000000060000000600000001135D80F90000000105000104135D44FB050000FC135D81070000000600000003135D450700000003050000FE000000060000000600000002135D80FB00000002050000FC135D8107050000FE135D81090CFD9C010F34D10000000000000000060000000600000004135D4509000000040CFD9C010F34D10000000000000000060000000700000003135D450700000003050000FE135D81090CFD9C010F34D10000000000000000060000000800000004135D4509000000040CFD9C010F34D10000000000000000060F350D000C9A87000000000700000006000000000000000000000002"
theorem small_9652885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9652885_left_root small_9652885_left_fuel small_9652885_left_count small_9652885_left_encoded = true := by
  decide +kernel
theorem small_9652885_left_covered : CoveredBy scale carrier boxes small_9652885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9652885_left_root small_9652885_left_fuel small_9652885_left_count small_9652885_left_encoded small_9652885_left_checked

theorem cover_9652885 : CoveredBy scale carrier boxes root_9652885 := by
  apply coveredBy_split_literal root_9652885 small_9652885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3613.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9652885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3613.covered
#print axioms cover_9652885

def root_9652880 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652880_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652880_right_fuel : Nat := 1
def small_9652880_right_count : Nat := 1
def small_9652880_right_encoded : String := "00000001"
theorem small_9652880_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9652880_right_root small_9652880_right_fuel small_9652880_right_count small_9652880_right_encoded = true := by
  decide +kernel
theorem small_9652880_right_covered : CoveredBy scale carrier boxes small_9652880_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9652880_right_root small_9652880_right_fuel small_9652880_right_count small_9652880_right_encoded small_9652880_right_checked

theorem cover_9652880 : CoveredBy scale carrier boxes root_9652880 := by
  apply coveredBy_split_literal root_9652880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9652885 small_9652880_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9652885
  · exact small_9652880_right_covered
#print axioms cover_9652880

def root_9659882 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659882_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659882_left_fuel : Nat := 22
def small_9659882_left_count : Nat := 105
def small_9659882_left_encoded : String := "0E5FD8F90DE7CA04000000050E6014FB000000020B4D43FC0000000510801107000000030B4D43FE0000000510801109000000040115234113F85900000000000DAED87B0E9661040D412882000000050EFA4CF9000000010AA6A27C0000000510ED7107000000030AA6A27E0000000500000088000000020E962504000000020D4128820EFA10F90AA6A27C0000000510ED7107000000030AA6A27E0000000500000088000000010EFA4CF9000000010AA6A27C10EDAD070AA6A27E0000000510ED710900000004008A92210000000A000000090000000310ED7107000000030AA6A27E10EDAD09008A922113FDF900000000000D563A3B000000050EE75104000000020000000800000008000000040000008813F895000DAED87B0E9661040D412882000000050EFA4CF9000000010AA6A27C0000000510ED7107000000030AA6A27E0000000510ED71090000000400000008000000020E962504000000020D4128820EFA10F900000008000000010EFA4CF9000000010AA6A27C10EDAD070AA6A27E00000005000000090000000310ED710700000003000000080000000000000001"
theorem small_9659882_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659882_left_root small_9659882_left_fuel small_9659882_left_count small_9659882_left_encoded = true := by
  decide +kernel
theorem small_9659882_left_covered : CoveredBy scale carrier boxes small_9659882_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659882_left_root small_9659882_left_fuel small_9659882_left_count small_9659882_left_encoded small_9659882_left_checked

theorem cover_9659882 : CoveredBy scale carrier boxes root_9659882 := by
  apply coveredBy_split_literal root_9659882 small_9659882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3615.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact small_9659882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3615.covered
#print axioms cover_9659882

def root_9659876 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659876_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659876_left_fuel : Nat := 1
def small_9659876_left_count : Nat := 1
def small_9659876_left_encoded : String := "00000000"
theorem small_9659876_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659876_left_root small_9659876_left_fuel small_9659876_left_count small_9659876_left_encoded = true := by
  decide +kernel
theorem small_9659876_left_covered : CoveredBy scale carrier boxes small_9659876_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659876_left_root small_9659876_left_fuel small_9659876_left_count small_9659876_left_encoded small_9659876_left_checked

theorem cover_9659876 : CoveredBy scale carrier boxes root_9659876 := by
  apply coveredBy_split_literal root_9659876 small_9659876_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659882 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9659876_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659882
#print axioms cover_9659876

def root_9659875 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659875_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659875_right_fuel : Nat := 20
def small_9659875_right_count : Nat := 173
def small_9659875_right_encoded : String := "13E201000DE7CA020E5FD8F90DE7CA040E5FD8FB00000005000000020E6014FB000000020B4D43FC10804D07000000050000000310801107000000030B4D43FE000000081080110900000004033F67C113BBF500000000000DAED87B000000080E962504000000020000000800000008000000010E6014F9000000010DE7CA040E5FD8FB0B4D43FC10804D07000000050000000310801107000000030B4D43FE10804D0900000005000000041080110900000004033F67C113BBF500000000000DAED879000000070E962502000000010000000700000007000000020E6014FB000000020B4D43FC10804D070B4D43FE10804D09033F67C10000000513BC31000000000500000000000000041080110900000004033F67C113BBF500000000000DAED8790E9661020DAED87B000000070E9625040000000200000009000000010E962502000000010DAED87B0000000700000007000000070000000310801107000000030B4D43FE10804D09033F67C113BBF500000000000DAED8790E96610200000008000000010E962502000000010000000A00000008000000041080110900000004033F67C113BBF500000000000DAED8790E9661020DAED87B0E9661040AA6A27C10EDAD07000000070000000310ED7107000000030AA6A27E0000000810ED71090000000400000007000000020E962504000000020AA6A27C10EDAD07000000090000000310ED71070000000300000008000000010E962502000000010DAED87B0E9661040AA6A27C10EDAD0700000007000000030000000A000000020E962504000000020AA6A27C10EDAD070AA6A27E10EDAD09000000090000000400000009000000030000000A13BC31000DAED8790E9661020DAED87B000000080E9625040000000200000008000000010E962502000000010DAED87B0E96610400000007000000020000000A0000000000000000"
theorem small_9659875_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659875_right_root small_9659875_right_fuel small_9659875_right_count small_9659875_right_encoded = true := by
  decide +kernel
theorem small_9659875_right_covered : CoveredBy scale carrier boxes small_9659875_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659875_right_root small_9659875_right_fuel small_9659875_right_count small_9659875_right_encoded small_9659875_right_checked

theorem cover_9659875 : CoveredBy scale carrier boxes root_9659875 := by
  apply coveredBy_split_literal root_9659875 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659876 small_9659875_right_root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659876
  · exact small_9659875_right_covered
#print axioms cover_9659875

def root_9659869 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659869_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659869_left_fuel : Nat := 1
def small_9659869_left_count : Nat := 1
def small_9659869_left_encoded : String := "00000004"
theorem small_9659869_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659869_left_root small_9659869_left_fuel small_9659869_left_count small_9659869_left_encoded = true := by
  decide +kernel
theorem small_9659869_left_covered : CoveredBy scale carrier boxes small_9659869_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659869_left_root small_9659869_left_fuel small_9659869_left_count small_9659869_left_encoded small_9659869_left_checked

theorem cover_9659869 : CoveredBy scale carrier boxes root_9659869 := by
  apply coveredBy_split_literal root_9659869 small_9659869_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659875 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9659869_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659875
#print axioms cover_9659869

def root_9659829 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659829_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659829_left_fuel : Nat := 10
def small_9659829_left_count : Nat := 19
def small_9659829_left_encoded : String := "0F878D09022A45810000000513E201000DE7CA02000000050E6014F9000000010DE7CA04000000050E6014FB000000020B4D43FC000000051080110700000003000000080000000000000004"
theorem small_9659829_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659829_left_root small_9659829_left_fuel small_9659829_left_count small_9659829_left_encoded = true := by
  decide +kernel
theorem small_9659829_left_covered : CoveredBy scale carrier boxes small_9659829_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659829_left_root small_9659829_left_fuel small_9659829_left_count small_9659829_left_encoded small_9659829_left_checked

theorem cover_9659829 : CoveredBy scale carrier boxes root_9659829 := by
  apply coveredBy_split_literal root_9659829 small_9659829_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659869 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9659829_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659869
#print axioms cover_9659829

def root_9659823 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659823_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659823_left_fuel : Nat := 1
def small_9659823_left_count : Nat := 1
def small_9659823_left_encoded : String := "00000003"
theorem small_9659823_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659823_left_root small_9659823_left_fuel small_9659823_left_count small_9659823_left_encoded = true := by
  decide +kernel
theorem small_9659823_left_covered : CoveredBy scale carrier boxes small_9659823_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659823_left_root small_9659823_left_fuel small_9659823_left_count small_9659823_left_encoded small_9659823_left_checked

theorem cover_9659823 : CoveredBy scale carrier boxes root_9659823 := by
  apply coveredBy_split_literal root_9659823 small_9659823_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659829 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9659823_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659829
#print axioms cover_9659823

def root_9659767 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659767_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659767_left_fuel : Nat := 14
def small_9659767_left_count : Nat := 27
def small_9659767_left_encoded : String := "0F878D070C9A86FE000000050F87510900000004022A45810000000513E201000DE7CA02000000050E6014F9000000010DE7CA04000000050E6014FB000000020DE7C9FC000000050E5FD907000000030B4D43FE000000051080110900000004000000070000000000000003"
theorem small_9659767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659767_left_root small_9659767_left_fuel small_9659767_left_count small_9659767_left_encoded = true := by
  decide +kernel
theorem small_9659767_left_covered : CoveredBy scale carrier boxes small_9659767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659767_left_root small_9659767_left_fuel small_9659767_left_count small_9659767_left_encoded small_9659767_left_checked

theorem cover_9659767 : CoveredBy scale carrier boxes root_9659767 := by
  apply coveredBy_split_literal root_9659767 small_9659767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659823 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9659767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659823
#print axioms cover_9659767

def root_9659761 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659761_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659761_left_fuel : Nat := 1
def small_9659761_left_count : Nat := 1
def small_9659761_left_encoded : String := "00000002"
theorem small_9659761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659761_left_root small_9659761_left_fuel small_9659761_left_count small_9659761_left_encoded = true := by
  decide +kernel
theorem small_9659761_left_covered : CoveredBy scale carrier boxes small_9659761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659761_left_root small_9659761_left_fuel small_9659761_left_count small_9659761_left_encoded small_9659761_left_checked

theorem cover_9659761 : CoveredBy scale carrier boxes root_9659761 := by
  apply coveredBy_split_literal root_9659761 small_9659761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659767 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9659761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659767
#print axioms cover_9659761

def root_9659753 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659753_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659753_left_fuel : Nat := 2
def small_9659753_left_count : Nat := 3
def small_9659753_left_encoded : String := "0F8750FB0000000500000002"
theorem small_9659753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659753_left_root small_9659753_left_fuel small_9659753_left_count small_9659753_left_encoded = true := by
  decide +kernel
theorem small_9659753_left_covered : CoveredBy scale carrier boxes small_9659753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659753_left_root small_9659753_left_fuel small_9659753_left_count small_9659753_left_encoded small_9659753_left_checked

theorem cover_9659753 : CoveredBy scale carrier boxes root_9659753 := by
  apply coveredBy_split_literal root_9659753 small_9659753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659761 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9659753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659761
#print axioms cover_9659753

def root_9659747 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659747_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659747_left_fuel : Nat := 1
def small_9659747_left_count : Nat := 1
def small_9659747_left_encoded : String := "00000001"
theorem small_9659747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659747_left_root small_9659747_left_fuel small_9659747_left_count small_9659747_left_encoded = true := by
  decide +kernel
theorem small_9659747_left_covered : CoveredBy scale carrier boxes small_9659747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659747_left_root small_9659747_left_fuel small_9659747_left_count small_9659747_left_encoded small_9659747_left_checked

theorem cover_9659747 : CoveredBy scale carrier boxes root_9659747 := by
  apply coveredBy_split_literal root_9659747 small_9659747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659753 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9659747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659753
#print axioms cover_9659747

def root_9659739 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659739_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659739_left_fuel : Nat := 2
def small_9659739_left_count : Nat := 3
def small_9659739_left_encoded : String := "0F8750F90000000500000001"
theorem small_9659739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659739_left_root small_9659739_left_fuel small_9659739_left_count small_9659739_left_encoded = true := by
  decide +kernel
theorem small_9659739_left_covered : CoveredBy scale carrier boxes small_9659739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659739_left_root small_9659739_left_fuel small_9659739_left_count small_9659739_left_encoded small_9659739_left_checked

theorem cover_9659739 : CoveredBy scale carrier boxes root_9659739 := by
  apply coveredBy_split_literal root_9659739 small_9659739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659747 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9659739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659747
#print axioms cover_9659739

def root_9659733 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659733_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659733_left_fuel : Nat := 1
def small_9659733_left_count : Nat := 1
def small_9659733_left_encoded : String := "00000004"
theorem small_9659733_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659733_left_root small_9659733_left_fuel small_9659733_left_count small_9659733_left_encoded = true := by
  decide +kernel
theorem small_9659733_left_covered : CoveredBy scale carrier boxes small_9659733_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659733_left_root small_9659733_left_fuel small_9659733_left_count small_9659733_left_encoded small_9659733_left_checked

theorem cover_9659733 : CoveredBy scale carrier boxes root_9659733 := by
  apply coveredBy_split_literal root_9659733 small_9659733_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659739 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9659733_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659739
#print axioms cover_9659733

def root_9659725 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659725_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659725_left_fuel : Nat := 2
def small_9659725_left_count : Nat := 3
def small_9659725_left_encoded : String := "0F34D0FE0000000500000004"
theorem small_9659725_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659725_left_root small_9659725_left_fuel small_9659725_left_count small_9659725_left_encoded = true := by
  decide +kernel
theorem small_9659725_left_covered : CoveredBy scale carrier boxes small_9659725_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659725_left_root small_9659725_left_fuel small_9659725_left_count small_9659725_left_encoded small_9659725_left_checked

theorem cover_9659725 : CoveredBy scale carrier boxes root_9659725 := by
  apply coveredBy_split_literal root_9659725 small_9659725_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659733 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9659725_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659733
#print axioms cover_9659725

def root_9659719 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659719_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659719_left_fuel : Nat := 1
def small_9659719_left_count : Nat := 1
def small_9659719_left_encoded : String := "00000003"
theorem small_9659719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659719_left_root small_9659719_left_fuel small_9659719_left_count small_9659719_left_encoded = true := by
  decide +kernel
theorem small_9659719_left_covered : CoveredBy scale carrier boxes small_9659719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659719_left_root small_9659719_left_fuel small_9659719_left_count small_9659719_left_encoded small_9659719_left_checked

theorem cover_9659719 : CoveredBy scale carrier boxes root_9659719 := by
  apply coveredBy_split_literal root_9659719 small_9659719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659725 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9659719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659725
#print axioms cover_9659719

def root_9659711 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659711_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659711_left_fuel : Nat := 2
def small_9659711_left_count : Nat := 3
def small_9659711_left_encoded : String := "0F34D0FC0000000500000003"
theorem small_9659711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659711_left_root small_9659711_left_fuel small_9659711_left_count small_9659711_left_encoded = true := by
  decide +kernel
theorem small_9659711_left_covered : CoveredBy scale carrier boxes small_9659711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659711_left_root small_9659711_left_fuel small_9659711_left_count small_9659711_left_encoded small_9659711_left_checked

theorem cover_9659711 : CoveredBy scale carrier boxes root_9659711 := by
  apply coveredBy_split_literal root_9659711 small_9659711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659719 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9659711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659719
#print axioms cover_9659711

def root_9659706 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659706_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659706_right_fuel : Nat := 1
def small_9659706_right_count : Nat := 1
def small_9659706_right_encoded : String := "00000002"
theorem small_9659706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659706_right_root small_9659706_right_fuel small_9659706_right_count small_9659706_right_encoded = true := by
  decide +kernel
theorem small_9659706_right_covered : CoveredBy scale carrier boxes small_9659706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659706_right_root small_9659706_right_fuel small_9659706_right_count small_9659706_right_encoded small_9659706_right_checked

theorem cover_9659706 : CoveredBy scale carrier boxes root_9659706 := by
  apply coveredBy_split_literal root_9659706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659711 small_9659706_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659711
  · exact small_9659706_right_covered
#print axioms cover_9659706

def root_9659705 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659705 : CoveredBy scale carrier boxes root_9659705 := by
  apply coveredBy_split_literal root_9659705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3616.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3616.covered
#print axioms cover_9659705

def root_9659700 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659700_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659700_right_fuel : Nat := 1
def small_9659700_right_count : Nat := 1
def small_9659700_right_encoded : String := "00000001"
theorem small_9659700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659700_right_root small_9659700_right_fuel small_9659700_right_count small_9659700_right_encoded = true := by
  decide +kernel
theorem small_9659700_right_covered : CoveredBy scale carrier boxes small_9659700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659700_right_root small_9659700_right_fuel small_9659700_right_count small_9659700_right_encoded small_9659700_right_checked

theorem cover_9659700 : CoveredBy scale carrier boxes root_9659700 := by
  apply coveredBy_split_literal root_9659700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659705 small_9659700_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659705
  · exact small_9659700_right_covered
#print axioms cover_9659700

def root_9666655 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9666655 : CoveredBy scale carrier boxes root_9666655 := by
  apply coveredBy_split_literal root_9666655 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3617.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3618.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3617.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3618.covered
#print axioms cover_9666655

def root_9666649 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9666649_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9666649_left_fuel : Nat := 1
def small_9666649_left_count : Nat := 1
def small_9666649_left_encoded : String := "00000001"
theorem small_9666649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9666649_left_root small_9666649_left_fuel small_9666649_left_count small_9666649_left_encoded = true := by
  decide +kernel
theorem small_9666649_left_covered : CoveredBy scale carrier boxes small_9666649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9666649_left_root small_9666649_left_fuel small_9666649_left_count small_9666649_left_encoded small_9666649_left_checked

theorem cover_9666649 : CoveredBy scale carrier boxes root_9666649 := by
  apply coveredBy_split_literal root_9666649 small_9666649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9666655 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9666649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9666655
#print axioms cover_9666649

def root_9659699 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659699 : CoveredBy scale carrier boxes root_9659699 := by
  apply coveredBy_split_literal root_9659699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9666649 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659700
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9666649
#print axioms cover_9659699

def root_9659693 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659693_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659693_left_fuel : Nat := 1
def small_9659693_left_count : Nat := 1
def small_9659693_left_encoded : String := "00000000"
theorem small_9659693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659693_left_root small_9659693_left_fuel small_9659693_left_count small_9659693_left_encoded = true := by
  decide +kernel
theorem small_9659693_left_covered : CoveredBy scale carrier boxes small_9659693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659693_left_root small_9659693_left_fuel small_9659693_left_count small_9659693_left_encoded small_9659693_left_checked

theorem cover_9659693 : CoveredBy scale carrier boxes root_9659693 := by
  apply coveredBy_split_literal root_9659693 small_9659693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659699 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9659693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659699
#print axioms cover_9659693

def root_9659692 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659692 : CoveredBy scale carrier boxes root_9659692 := by
  apply coveredBy_split_literal root_9659692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659693 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3619.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659693
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3619.covered
#print axioms cover_9659692

def root_9659686 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659686_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659686_left_fuel : Nat := 1
def small_9659686_left_count : Nat := 1
def small_9659686_left_encoded : String := "00000004"
theorem small_9659686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659686_left_root small_9659686_left_fuel small_9659686_left_count small_9659686_left_encoded = true := by
  decide +kernel
theorem small_9659686_left_covered : CoveredBy scale carrier boxes small_9659686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659686_left_root small_9659686_left_fuel small_9659686_left_count small_9659686_left_encoded small_9659686_left_checked

theorem cover_9659686 : CoveredBy scale carrier boxes root_9659686 := by
  apply coveredBy_split_literal root_9659686 small_9659686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659692 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9659686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659692
#print axioms cover_9659686

def root_9659508 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659508_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659508_left_fuel : Nat := 14
def small_9659508_left_count : Nat := 81
def small_9659508_left_encoded : String := "120700FE04548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000005000000020F34D104000000020CFD9C070F34D0FC000000050000000300000005000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000005000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A090000000A1386ACFE000000040C9A86FC000000050F875107000000030000000A1386AD000CFD9BF90F350D020CFD9BFB0F350D04000000050000000200000005000000010F34D102000000010CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09000000081386ACFE000000040C9A86FC000000050000000A0000000000000004"
theorem small_9659508_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659508_left_root small_9659508_left_fuel small_9659508_left_count small_9659508_left_encoded = true := by
  decide +kernel
theorem small_9659508_left_covered : CoveredBy scale carrier boxes small_9659508_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659508_left_root small_9659508_left_fuel small_9659508_left_count small_9659508_left_encoded small_9659508_left_checked

theorem cover_9659508 : CoveredBy scale carrier boxes root_9659508 := by
  apply coveredBy_split_literal root_9659508 small_9659508_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659686 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9659508_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659686
#print axioms cover_9659508

def root_9659502 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659502_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659502_left_fuel : Nat := 1
def small_9659502_left_count : Nat := 1
def small_9659502_left_encoded : String := "00000003"
theorem small_9659502_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659502_left_root small_9659502_left_fuel small_9659502_left_count small_9659502_left_encoded = true := by
  decide +kernel
theorem small_9659502_left_covered : CoveredBy scale carrier boxes small_9659502_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659502_left_root small_9659502_left_fuel small_9659502_left_count small_9659502_left_encoded small_9659502_left_checked

theorem cover_9659502 : CoveredBy scale carrier boxes root_9659502 := by
  apply coveredBy_split_literal root_9659502 small_9659502_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659508 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9659502_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659508
#print axioms cover_9659502

def root_9659238 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659238_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659238_left_fuel : Nat := 16
def small_9659238_left_count : Nat := 119
def small_9659238_left_encoded : String := "120700FC08A91309120700FE04548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D04000000050000000200000005000000010F34D102000000010CFD9BFB0F350D040000000500000002000000051386AD000CFD9BF90F350D02000000050000000100000005000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D0404548A07138670FC000000050000000300000005000000020F34D1040000000204548A07138670FC000000050000000300000005000000010F34D102000000010CFD9BFB0F350D0404548A07138670FC000000050000000300000005000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE000000050000000400000005000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000050F87510900000004000000091386AD000CFD9BF90F350D020CFD9BFB0F350D04000000050000000200000005000000010F34D102000000010CFD9BFB0F350D0400000005000000020F34D1040000000204548A07138670FC00000005000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE00000005000000090000000000000003"
theorem small_9659238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659238_left_root small_9659238_left_fuel small_9659238_left_count small_9659238_left_encoded = true := by
  decide +kernel
theorem small_9659238_left_covered : CoveredBy scale carrier boxes small_9659238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659238_left_root small_9659238_left_fuel small_9659238_left_count small_9659238_left_encoded small_9659238_left_checked

theorem cover_9659238 : CoveredBy scale carrier boxes root_9659238 := by
  apply coveredBy_split_literal root_9659238 small_9659238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659502 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9659238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659502
#print axioms cover_9659238

def root_9659233 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659233_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659233_right_fuel : Nat := 1
def small_9659233_right_count : Nat := 1
def small_9659233_right_encoded : String := "00000002"
theorem small_9659233_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659233_right_root small_9659233_right_fuel small_9659233_right_count small_9659233_right_encoded = true := by
  decide +kernel
theorem small_9659233_right_covered : CoveredBy scale carrier boxes small_9659233_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659233_right_root small_9659233_right_fuel small_9659233_right_count small_9659233_right_encoded small_9659233_right_checked

theorem cover_9659233 : CoveredBy scale carrier boxes root_9659233 := by
  apply coveredBy_split_literal root_9659233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659238 small_9659233_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659238
  · exact small_9659233_right_covered
#print axioms cover_9659233

def root_9659232 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659232 : CoveredBy scale carrier boxes root_9659232 := by
  apply coveredBy_split_literal root_9659232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659233 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3620.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659233
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3620.covered
#print axioms cover_9659232

def root_9659227 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659227_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659227_right_fuel : Nat := 1
def small_9659227_right_count : Nat := 1
def small_9659227_right_encoded : String := "00000001"
theorem small_9659227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659227_right_root small_9659227_right_fuel small_9659227_right_count small_9659227_right_encoded = true := by
  decide +kernel
theorem small_9659227_right_covered : CoveredBy scale carrier boxes small_9659227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659227_right_root small_9659227_right_fuel small_9659227_right_count small_9659227_right_encoded small_9659227_right_checked

theorem cover_9659227 : CoveredBy scale carrier boxes root_9659227 := by
  apply coveredBy_split_literal root_9659227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659232 small_9659227_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659232
  · exact small_9659227_right_covered
#print axioms cover_9659227

def root_9659226 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659226 : CoveredBy scale carrier boxes root_9659226 := by
  apply coveredBy_split_literal root_9659226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3621.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659227
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3621.covered
#print axioms cover_9659226

def root_9659220 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659220_left_fuel : Nat := 1
def small_9659220_left_count : Nat := 1
def small_9659220_left_encoded : String := "00000000"
theorem small_9659220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659220_left_root small_9659220_left_fuel small_9659220_left_count small_9659220_left_encoded = true := by
  decide +kernel
theorem small_9659220_left_covered : CoveredBy scale carrier boxes small_9659220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659220_left_root small_9659220_left_fuel small_9659220_left_count small_9659220_left_encoded small_9659220_left_checked

theorem cover_9659220 : CoveredBy scale carrier boxes root_9659220 := by
  apply coveredBy_split_literal root_9659220 small_9659220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659226 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9659220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659226
#print axioms cover_9659220

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655
