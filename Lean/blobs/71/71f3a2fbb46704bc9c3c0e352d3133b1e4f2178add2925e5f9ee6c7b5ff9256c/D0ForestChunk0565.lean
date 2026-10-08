import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1324533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
def hex_1324533 : String := "43414244404341060741420506420744070643060A0606424407074407064142440A05440A404306050642440A4009430505440A40434106090843070A"
theorem cover_1324533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1324533)
  decide +kernel
#print axioms cover_1324533

def state_1324594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
def hex_1324594 : String := "4043410609094306410542054440090605"
theorem cover_1324594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1324594)
  decide +kernel
#print axioms cover_1324594

def state_1324611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_1324611 : String := "44404341064405060843064144420A060644420A08424008060606"
theorem cover_1324611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1324611)
  decide +kernel
#print axioms cover_1324611

def state_1324639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
def hex_1324639 : String := "44404342094405070943074244410A070944410A07414009070709"
theorem cover_1324639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1324639)
  decide +kernel
#print axioms cover_1324639

def state_1324666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_1324666 : String := "44404305440508434405074441420A08074142400807080740434106090943064142444008060606420707"
theorem cover_1324666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324666 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1324666)
  decide +kernel
#print axioms cover_1324666

def state_1324709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_1324709 : String := "414244434041420908094142050A420A0A40080A434009050544084340084106080842444340094209440A0909094443400844080808434008434108080808"
theorem cover_1324709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_1324709)
  decide +kernel
#print axioms cover_1324709
end Mub6.Numerical.CircleFullD0.Forest
