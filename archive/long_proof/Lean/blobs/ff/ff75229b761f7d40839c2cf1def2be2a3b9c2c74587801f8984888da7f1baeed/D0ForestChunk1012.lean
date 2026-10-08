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
def state_1543240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 9)))
def hex_1543240 : String := "4341444009064009414442430640090606424305400941050A05440609094144400743410A060740434108070743410A440A420A090A07"
theorem cover_1543240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1543240)
  decide +kernel
#print axioms cover_1543240

def state_1543299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
def hex_1543299 : String := "40424144064306400706060606"
theorem cover_1543299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1543299)
  decide +kernel
#print axioms cover_1543299

def state_1543314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 19)))
def hex_1543314 : String := "4144430840420A0A42080A4340424144080508410544060508404241090A410A0A42090A444306400706430840424144070A0741440A0A07420806"
theorem cover_1543314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543314 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1543314)
  decide +kernel
#print axioms cover_1543314

def state_1543373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 19)))
def hex_1543373 : String := "4144430640420A06064340050540420A0A420A064406430640424144060A060606"
theorem cover_1543373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1543373)
  decide +kernel
#print axioms cover_1543373

def state_1543406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 19)))
def hex_1543406 : String := "42414408430809064144060606"
theorem cover_1543406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1543406)
  decide +kernel
#print axioms cover_1543406

def state_1543419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 9)))
def hex_1543419 : String := "44064042440641430606060606"
theorem cover_1543419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1543419)
  decide +kernel
#print axioms cover_1543419

def state_1543432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 9)))
def hex_1543432 : String := "414440420543410A0505420906404243410A44050A0743410A44060A0A420943410A06094405404205074243060506"
theorem cover_1543432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1543432)
  decide +kernel
#print axioms cover_1543432
end Mub6.Numerical.CircleFullD0.Forest
