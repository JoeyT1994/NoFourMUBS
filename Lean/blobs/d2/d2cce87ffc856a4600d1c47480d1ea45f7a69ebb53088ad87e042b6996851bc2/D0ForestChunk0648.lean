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
def state_1344427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 24)))
def hex_1344427 : String := "4340084442060A4208074044420805084442430608430A41050A420843414005440A0808410508"
theorem cover_1344427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1344427)
  decide +kernel
#print axioms cover_1344427

def state_1344467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 25)))
def hex_1344467 : String := "43404208444105070542444143080808084441434042080542444143070507080705430740054208074143080508400542444105080505"
theorem cover_1344467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1344467)
  decide +kernel
#print axioms cover_1344467

def state_1344522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 25)))
def hex_1344522 : String := "4308400842084443080808"
theorem cover_1344522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1344522)
  decide +kernel
#print axioms cover_1344522

def state_1344534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 24)))
def hex_1344534 : String := "4143400542444143400509050A4143400542440707070543070A440A4143070507054307400542440A0A0A"
theorem cover_1344534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1344534)
  decide +kernel
#print axioms cover_1344534

def state_1344577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 25)))
def hex_1344577 : String := "414340054244414307050707070543074005424443070543070507"
theorem cover_1344577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1344577)
  decide +kernel
#print axioms cover_1344577

def state_1344604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 13)))
def hex_1344604 : String := "4005424143080508414306054307444005424307050505"
theorem cover_1344604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344604 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1344604)
  decide +kernel
#print axioms cover_1344604

def state_1344627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
def hex_1344627 : String := "4440054243444105400544424308050542080541054005420805050505"
theorem cover_1344627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 29) (hex := hex_1344627)
  decide +kernel
#print axioms cover_1344627

def state_1344656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_1344656 : String := "41054243080505"
theorem cover_1344656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344656 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1344656)
  decide +kernel
#print axioms cover_1344656

def state_1344664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1344664 : String := "4308444308444008080909"
theorem cover_1344664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1344664)
  decide +kernel
#print axioms cover_1344664

def state_1344676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_1344676 : String := "44420844070708"
theorem cover_1344676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1344676)
  decide +kernel
#print axioms cover_1344676
end Mub6.Numerical.CircleFullD0.Forest
