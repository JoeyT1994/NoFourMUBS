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
def state_956169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 26)))
def hex_956169 : String := "4144430908434240410644080641440843064208060909424041080841080840084108084409434240414408430608080905424008410808400809"
theorem cover_956169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_956169)
  decide +kernel
#print axioms cover_956169

def state_956228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 26)))
def hex_956228 : String := "4041440843420808080A414408434240080808420508440843420808420808"
theorem cover_956228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_956228)
  decide +kernel
#print axioms cover_956228

def state_956261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_956261 : String := "41064306424440064106070606"
theorem cover_956261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_956261)
  decide +kernel
#print axioms cover_956261

def state_956275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_956275 : String := "4342444006410643064244400641060606060606424440410643064205064143420506054342444008410808050642054408050544400641060606"
theorem cover_956275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956275 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_956275)
  decide +kernel
#print axioms cover_956275

def state_956335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 27)))
def hex_956335 : String := "42444006414306424440060906064309424409400609090606"
theorem cover_956335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_956335)
  decide +kernel
#print axioms cover_956335

def state_956363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_956363 : String := "41434244080606424405054408054342440706074244080507"
theorem cover_956363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 25) (hex := hex_956363)
  decide +kernel
#print axioms cover_956363
end Mub6.Numerical.CircleFullD0.Forest
