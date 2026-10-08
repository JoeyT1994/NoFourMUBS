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
def state_2292411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 93)))
def hex_2292411 : String := "41400A43080A400A4342444108400508410805444107400A070A42050A"
theorem cover_2292411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2292411)
  decide +kernel
#print axioms cover_2292411

def state_2292441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 46)))
def hex_2292441 : String := "08"
theorem cover_2292441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292441 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2292441)
  decide +kernel
#print axioms cover_2292441

def state_2292443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 46)))
def hex_2292443 : String := "44084108404306420844410840050641080506"
theorem cover_2292443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2292443)
  decide +kernel
#print axioms cover_2292443

def state_2292462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 46)))
def hex_2292462 : String := "444108404308424408410840430842080A084441074043080A0841074043070A070841074043084244410840430505084107050708"
theorem cover_2292462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292462 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2292462)
  decide +kernel
#print axioms cover_2292462

def state_2292516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
def hex_2292516 : String := "4043080A08"
theorem cover_2292516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2292516)
  decide +kernel
#print axioms cover_2292516

def state_2292522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
def hex_2292522 : String := "434244410843060508444108430840050841074306054244414005430805050544410A400543050505"
theorem cover_2292522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_2292522)
  decide +kernel
#print axioms cover_2292522

def state_2292563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
def hex_2292563 : String := "4308424441084043060506410806444107404307090707"
theorem cover_2292563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292563 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2292563)
  decide +kernel
#print axioms cover_2292563

def state_2292590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
def hex_2292590 : String := "434244414006430806404305054308420706410A40054305054441064006434208060641060A420606"
theorem cover_2292590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2292590)
  decide +kernel
#print axioms cover_2292590

def state_2292632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 54 else 46)))
def hex_2292632 : String := "42444108400808410840430842440805090844410840430842440609060841084043080908"
theorem cover_2292632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292632 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2292632)
  decide +kernel
#print axioms cover_2292632
end Mub6.Numerical.CircleFullD0.Forest
