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
def state_1488254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 28)))
def hex_1488254 : String := "410A4442400A09080A"
theorem cover_1488254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1488254)
  decide +kernel
#print axioms cover_1488254

def state_1488264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 28)))
def hex_1488264 : String := "4442400A090A0A"
theorem cover_1488264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488264 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1488264)
  decide +kernel
#print axioms cover_1488264

def state_1488273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 56)))
def hex_1488273 : String := "4043410A44060A414442400A430A410A050A0A4442050642400A430A44050A0A434109444209080941444209400A070944420540430605074209400A09"
theorem cover_1488273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1488273)
  decide +kernel
#print axioms cover_1488273

def state_1488334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 56)))
def hex_1488334 : String := "400A4308410707"
theorem cover_1488334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1488334)
  decide +kernel
#print axioms cover_1488334

def state_1488341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 57)))
def hex_1488341 : String := "42400A090A"
theorem cover_1488341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1488341)
  decide +kernel
#print axioms cover_1488341

def state_1488346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1488346 : String := "0A"
theorem cover_1488346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1488346)
  decide +kernel
#print axioms cover_1488346

def state_1488347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 14)))
def hex_1488347 : String := "0A"
theorem cover_1488347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1488347)
  decide +kernel
#print axioms cover_1488347

def state_1488348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
def hex_1488348 : String := "434209084241094440434109440809414442090809444209084209400A0809094105440805"
theorem cover_1488348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488348 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_1488348)
  decide +kernel
#print axioms cover_1488348

def state_1488385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
def hex_1488385 : String := "05"
theorem cover_1488385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488385 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1488385)
  decide +kernel
#print axioms cover_1488385

def state_1488387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
def hex_1488387 : String := "44404243444105400543050605060A420643050605"
theorem cover_1488387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1488387)
  decide +kernel
#print axioms cover_1488387

def state_1488413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
def hex_1488413 : String := "4440430A0A4344410A42400A4309060A0A4441064206400A430706060A"
theorem cover_1488413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1488413)
  decide +kernel
#print axioms cover_1488413

def state_1488444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1488444 : String := "434144424008430A080A0A4442400843410A44060A080A0A414442080A084442080908"
theorem cover_1488444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1488444)
  decide +kernel
#print axioms cover_1488444
end Mub6.Numerical.CircleFullD0.Forest
