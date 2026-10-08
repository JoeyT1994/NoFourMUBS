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
def state_1486338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 13)))
def hex_1486338 : String := "44054142054008420541060505"
theorem cover_1486338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486338 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1486338)
  decide +kernel
#print axioms cover_1486338

def state_1486351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
def hex_1486351 : String := "4344414205404344054205414043080508050A0A05414206404342094109440506420641064405060942054043050505440A410605"
theorem cover_1486351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486351 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1486351)
  decide +kernel
#print axioms cover_1486351

def state_1486404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1486404 : String := "4344414243080A0842050841094205430840444108050908440A414206404309060642054043440A090A0A"
theorem cover_1486404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1486404)
  decide +kernel
#print axioms cover_1486404

def state_1486450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
def hex_1486450 : String := "4209444043094209444105400A09050905"
theorem cover_1486450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486450 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1486450)
  decide +kernel
#print axioms cover_1486450

def state_1486468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
def hex_1486468 : String := "444043094107080906"
theorem cover_1486468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486468 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1486468)
  decide +kernel
#print axioms cover_1486468

def state_1486480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
def hex_1486480 : String := "410942094440430A410A4244400A09090A0909"
theorem cover_1486480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486480 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1486480)
  decide +kernel
#print axioms cover_1486480

def state_1486500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
def hex_1486500 : String := "42094440430A42080A0909"
theorem cover_1486500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1486500)
  decide +kernel
#print axioms cover_1486500

def state_1486512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 14)))
def hex_1486512 : String := "4440434107440707080909"
theorem cover_1486512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486512 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1486512)
  decide +kernel
#print axioms cover_1486512

def state_1486526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 28)))
def hex_1486526 : String := "414244400A09090A4244404342070608430942074109440507400709444006430A410A42440509060A"
theorem cover_1486526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1486526)
  decide +kernel
#print axioms cover_1486526
end Mub6.Numerical.CircleFullD0.Forest
