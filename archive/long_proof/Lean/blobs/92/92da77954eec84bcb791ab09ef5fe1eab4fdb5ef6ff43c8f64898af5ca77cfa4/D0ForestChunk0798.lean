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
def state_1492209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 14)))
def hex_1492209 : String := "4143424405064440434205050505404342064441060606060642054405064342054405404143420544050605050505"
theorem cover_1492209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492209 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1492209)
  decide +kernel
#print axioms cover_1492209

def state_1492256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 15)))
def hex_1492256 : String := "404108084106430606"
theorem cover_1492256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1492256)
  decide +kernel
#print axioms cover_1492256

def state_1492267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
def hex_1492267 : String := "44404143440A420740070A0A0A0A40414342064440074341060606060743070706"
theorem cover_1492267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1492267)
  decide +kernel
#print axioms cover_1492267

def state_1492306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 28)))
def hex_1492306 : String := "4043060A0A"
theorem cover_1492306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492306 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1492306)
  decide +kernel
#print axioms cover_1492306

def state_1492312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
def hex_1492312 : String := "4341420744064006434107070709410707"
theorem cover_1492312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1492312)
  decide +kernel
#print axioms cover_1492312

def state_1492332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 29)))
def hex_1492332 : String := "440A4340070A07"
theorem cover_1492332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1492332)
  decide +kernel
#print axioms cover_1492332

def state_1492340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 58)))
def hex_1492340 : String := "434041420A0606080A"
theorem cover_1492340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492340 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1492340)
  decide +kernel
#print axioms cover_1492340

def state_1492349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 59)))
def hex_1492349 : String := "43404142444340070707074443084006084340050840070742440707440643050741420908420A084041070741420A440A43400708070A"
theorem cover_1492349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492349 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_1492349)
  decide +kernel
#print axioms cover_1492349

def state_1492404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 29)))
def hex_1492404 : String := "0A"
theorem cover_1492404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1492404)
  decide +kernel
#print axioms cover_1492404

def state_1492405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 29)))
def hex_1492405 : String := "414207440A40070A0A"
theorem cover_1492405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1492405)
  decide +kernel
#print axioms cover_1492405

def state_1492415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 28)))
def hex_1492415 : String := "06"
theorem cover_1492415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1492415)
  decide +kernel
#print axioms cover_1492415

def state_1492417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
def hex_1492417 : String := "43064142440640064306070606"
theorem cover_1492417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492417 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1492417)
  decide +kernel
#print axioms cover_1492417
end Mub6.Numerical.CircleFullD0.Forest
