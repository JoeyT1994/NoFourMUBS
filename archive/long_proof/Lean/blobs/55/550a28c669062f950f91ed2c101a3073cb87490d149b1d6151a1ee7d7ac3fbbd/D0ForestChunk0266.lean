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
def state_1001316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 178)))
def hex_1001316 : String := "414205404443410542050605050542404409050540444309094341420506094105094409430905"
theorem cover_1001316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1001316)
  decide +kernel
#print axioms cover_1001316

def state_1001355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 179)))
def hex_1001355 : String := "43410542054044430607070641054205404443410505050505"
theorem cover_1001355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1001355)
  decide +kernel
#print axioms cover_1001355

def state_1001380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 89)))
def hex_1001380 : String := "44434106094105420509430605"
theorem cover_1001380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1001380)
  decide +kernel
#print axioms cover_1001380

def state_1001393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 89)))
def hex_1001393 : String := "42404409430905094044430909434142094044090909094142054044090A09094409430909"
theorem cover_1001393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1001393)
  decide +kernel
#print axioms cover_1001393

def state_1001430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 89)))
def hex_1001430 : String := "41420540444341054205400A440905084305054443410505050542400A44070540444341420909090A43410A090A4409430909"
theorem cover_1001430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001430 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1001430)
  decide +kernel
#print axioms cover_1001430

def state_1001481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
def hex_1001481 : String := "4443414209404409430609060741420540440708070743414205060941054205400907"
theorem cover_1001481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001481 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1001481)
  decide +kernel
#print axioms cover_1001481

def state_1001516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 44)))
def hex_1001516 : String := "41084208404443414205404443410806060808074108064341054205400A08084443070708"
theorem cover_1001516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_1001516)
  decide +kernel
#print axioms cover_1001516

def state_1001555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
def hex_1001555 : String := "05"
theorem cover_1001555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001555)
  decide +kernel
#print axioms cover_1001555

def state_1001557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 45)))
def hex_1001557 : String := "05"
theorem cover_1001557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001557)
  decide +kernel
#print axioms cover_1001557
end Mub6.Numerical.CircleFullD0.Forest
