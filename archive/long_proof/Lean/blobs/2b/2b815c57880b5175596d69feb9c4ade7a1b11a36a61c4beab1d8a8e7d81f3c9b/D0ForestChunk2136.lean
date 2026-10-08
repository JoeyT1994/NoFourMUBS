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
def state_2593260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
def hex_2593260 : String := "43440A404108060A44404143440A4240050905444207050543094409420705414309440942090509404105434208050541434208050509"
theorem cover_2593260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2593260)
  decide +kernel
#print axioms cover_2593260

def state_2593315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_2593315 : String := "4208430805"
theorem cover_2593315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2593315)
  decide +kernel
#print axioms cover_2593315

def state_2593320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_2593320 : String := "43440A0544430A440A0505"
theorem cover_2593320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2593320)
  decide +kernel
#print axioms cover_2593320

def state_2593331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2593331 : String := "424344064106064441424309094309090941420943080909430A444143090909410506"
theorem cover_2593331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593331 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2593331)
  decide +kernel
#print axioms cover_2593331

def state_2593376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
def hex_2593376 : String := "4440054206054005424344410642434005060505410A42434005440A0A05050505"
theorem cover_2593376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_2593376)
  decide +kernel
#print axioms cover_2593376

def state_2593410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
def hex_2593410 : String := "400542434144064243400506050544074243400541070705050505"
theorem cover_2593410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_2593410)
  decide +kernel
#print axioms cover_2593410

def state_2593438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
def hex_2593438 : String := "42434105050505"
theorem cover_2593438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2593438)
  decide +kernel
#print axioms cover_2593438

def state_2593449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 18)))
def hex_2593449 : String := "42434041050541064406424340414406420A0544424307050542434005DC050541064406DC40050643400506054005064340050605"
theorem cover_2593449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 53) (hex := hex_2593449)
  decide +kernel
#print axioms cover_2593449

def state_2593505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
def hex_2593505 : String := "440505"
theorem cover_2593505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2593505)
  decide +kernel
#print axioms cover_2593505

def state_2593510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
def hex_2593510 : String := "4243400A0A0A4340050605"
theorem cover_2593510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2593510)
  decide +kernel
#print axioms cover_2593510
end Mub6.Numerical.CircleFullD0.Forest
