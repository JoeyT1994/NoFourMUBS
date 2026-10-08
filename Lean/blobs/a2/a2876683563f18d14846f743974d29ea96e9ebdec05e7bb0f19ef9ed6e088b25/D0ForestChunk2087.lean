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
def state_2581332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
def hex_2581332 : String := "40414443054205404108080508444342054041050505420840414443420505080844434205400A054208400A080808434205404105050508410505"
theorem cover_2581332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2581332)
  decide +kernel
#print axioms cover_2581332

def state_2581391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
def hex_2581391 : String := "404108444208434041080808080808"
theorem cover_2581391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2581391)
  decide +kernel
#print axioms cover_2581391

def state_2581410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 36)))
def hex_2581410 : String := "42434041440643050644074305420540410607050540410644064208060643404106440642430706060606"
theorem cover_2581410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2581410)
  decide +kernel
#print axioms cover_2581410

def state_2581454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 37)))
def hex_2581454 : String := "43404144430508084443054205404108440505054305080540410844080808"
theorem cover_2581454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2581454)
  decide +kernel
#print axioms cover_2581454

def state_2581486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2581486 : String := "404144424340410505050606DC44424340414405054405050540414406DC444243050606DC410644050543404107070940410644060A06DC41064406420509"
theorem cover_2581486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2581486)
  decide +kernel
#print axioms cover_2581486

def state_2581549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
def hex_2581549 : String := "40414406084442434041064406080606064208434041064442080608060606"
theorem cover_2581549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2581549)
  decide +kernel
#print axioms cover_2581549
end Mub6.Numerical.CircleFullD0.Forest
