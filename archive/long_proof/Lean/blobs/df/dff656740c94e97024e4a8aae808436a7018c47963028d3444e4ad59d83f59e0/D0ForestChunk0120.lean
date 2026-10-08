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
def state_966329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_966329 : String := "4143094244064041430944060A09060909"
theorem cover_966329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966329 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_966329)
  decide +kernel
#print axioms cover_966329

def state_966351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 54)))
def hex_966351 : String := "404143420644064041080806060606"
theorem cover_966351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966351 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_966351)
  decide +kernel
#print axioms cover_966351

def state_966367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 55)))
def hex_966367 : String := "41434442054041434442050505054307054143440905054309064205050543444206404143070A07064240050640074143070507440605"
theorem cover_966367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_966367)
  decide +kernel
#print axioms cover_966367

def state_966422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 55)))
def hex_966422 : String := "41434406420540410543440605054105060643440642064041430906060606"
theorem cover_966422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_966422)
  decide +kernel
#print axioms cover_966422

def state_966454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 54)))
def hex_966454 : String := "40414309424406400806080909"
theorem cover_966454 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966454 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_966454)
  decide +kernel
#print axioms cover_966454

def state_966468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 55)))
def hex_966468 : String := "414342444007090707424440410543070541434205090543090505444007090743424409070742444007060707"
theorem cover_966468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966468 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_966468)
  decide +kernel
#print axioms cover_966468

def state_966513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 55)))
def hex_966513 : String := "414342440940410A09090942440640050644094041430905090943094244060609"
theorem cover_966513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_966513)
  decide +kernel
#print axioms cover_966513
end Mub6.Numerical.CircleFullD0.Forest
