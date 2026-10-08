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
def state_1515305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1515305 : String := "42434408404143084206070808444041424344050605430707420A084142050708404142064307064243440606064308444007060606430744074041070707"
theorem cover_1515305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515305 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1515305)
  decide +kernel
#print axioms cover_1515305

def state_1515368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1515368 : String := "424308440A4140420A43084408414042060706084206080A08"
theorem cover_1515368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 25) (hex := hex_1515368)
  decide +kernel
#print axioms cover_1515368

def state_1515397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 31)))
def hex_1515397 : String := "44400541050505"
theorem cover_1515397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515397 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1515397)
  decide +kernel
#print axioms cover_1515397

def state_1515406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
def hex_1515406 : String := "4142430506054243444005410543054205050544400841064206430606064305444041050541424305060542430544400806050505"
theorem cover_1515406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1515406)
  decide +kernel
#print axioms cover_1515406

def state_1515459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
def hex_1515459 : String := "4142064305064243060643054440410642064305060606"
theorem cover_1515459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1515459)
  decide +kernel
#print axioms cover_1515459

def state_1515482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 63)))
def hex_1515482 : String := "400506"
theorem cover_1515482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515482 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1515482)
  decide +kernel
#print axioms cover_1515482

def state_1515485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 31)))
def hex_1515485 : String := "4305444005410542430544400507050505"
theorem cover_1515485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1515485)
  decide +kernel
#print axioms cover_1515485

def state_1515504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 31)))
def hex_1515504 : String := "4440410505414305424440054105080505430542444140050808050505"
theorem cover_1515504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515504 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1515504)
  decide +kernel
#print axioms cover_1515504
end Mub6.Numerical.CircleFullD0.Forest
