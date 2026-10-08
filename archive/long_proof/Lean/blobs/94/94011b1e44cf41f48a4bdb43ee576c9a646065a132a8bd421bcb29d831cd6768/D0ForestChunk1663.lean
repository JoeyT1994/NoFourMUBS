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
def state_2272322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
def hex_2272322 : String := "424307054340074144424307400741440906050942070907400941444205090605"
theorem cover_2272322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_2272322)
  decide +kernel
#print axioms cover_2272322

def state_2272355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2272355 : String := "44424307050807"
theorem cover_2272355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2272355)
  decide +kernel
#print axioms cover_2272355

def state_2272365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_2272365 : String := "4440414405090A094041080709"
theorem cover_2272365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2272365)
  decide +kernel
#print axioms cover_2272365

def state_2272379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_2272379 : String := "404143444209050944424108430606410943440A094440420807070909430A444206430A444041420643060606060642064309064109430A06"
theorem cover_2272379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_2272379)
  decide +kernel
#print axioms cover_2272379

def state_2272436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_2272436 : String := "4041084342074409080609"
theorem cover_2272436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272436 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2272436)
  decide +kernel
#print axioms cover_2272436

def state_2272449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 6)))
def hex_2272449 : String := "4041420505420A4405430642400505054105420A4405430505"
theorem cover_2272449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2272449)
  decide +kernel
#print axioms cover_2272449

def state_2272476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_2272476 : String := "4243440908444105400808084344054108424006080644054105420805"
theorem cover_2272476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2272476)
  decide +kernel
#print axioms cover_2272476

def state_2272506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 7)))
def hex_2272506 : String := "430744404142074307440507074109094007410807"
theorem cover_2272506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2272506)
  decide +kernel
#print axioms cover_2272506

def state_2272528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 7)))
def hex_2272528 : String := "44424006060607"
theorem cover_2272528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2272528)
  decide +kernel
#print axioms cover_2272528

def state_2272536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 14)))
def hex_2272536 : String := "4240414305054306444207050741430505434406064405420740060540410506410506"
theorem cover_2272536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2272536)
  decide +kernel
#print axioms cover_2272536
end Mub6.Numerical.CircleFullD0.Forest
