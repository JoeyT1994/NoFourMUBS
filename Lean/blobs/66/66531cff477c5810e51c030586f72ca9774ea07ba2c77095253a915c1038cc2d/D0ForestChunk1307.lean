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
def state_1614261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_1614261 : String := "4342440640410A06060A424440410A4342060A42060A410A064041430A42090A4342060A4209440909410A090A"
theorem cover_1614261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1614261)
  decide +kernel
#print axioms cover_1614261

def state_1614307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 58 else 49)))
def hex_1614307 : String := "420644410A40430642060A06410A40430642050A06"
theorem cover_1614307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1614307)
  decide +kernel
#print axioms cover_1614307

def state_1614328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 59 else 49)))
def hex_1614328 : String := "424409094441400A0A404209430A44410A09410A09420909414042430A440A0A0A0A404209430A44410A0907420909"
theorem cover_1614328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1614328)
  decide +kernel
#print axioms cover_1614328

def state_1614375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 49)))
def hex_1614375 : String := "410A430642060A"
theorem cover_1614375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1614375)
  decide +kernel
#print axioms cover_1614375

def state_1614383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
def hex_1614383 : String := "43054041050505"
theorem cover_1614383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1614383)
  decide +kernel
#print axioms cover_1614383

def state_1614391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 25)))
def hex_1614391 : String := "4041440A050505"
theorem cover_1614391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1614391)
  decide +kernel
#print axioms cover_1614391

def state_1614400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
def hex_1614400 : String := "4443424440410A0505050A42444041430A42090A4342050A09410A054041430542050705050A4342050742050A"
theorem cover_1614400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614400 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1614400)
  decide +kernel
#print axioms cover_1614400

def state_1614445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
def hex_1614445 : String := "44434205410A0542094144404207070A4007054440420507050505"
theorem cover_1614445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1614445)
  decide +kernel
#print axioms cover_1614445

def state_1614472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 25)))
def hex_1614472 : String := "4144430A4209080544430542050A05"
theorem cover_1614472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614472 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1614472)
  decide +kernel
#print axioms cover_1614472

def state_1614489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
def hex_1614489 : String := "06"
theorem cover_1614489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1614489)
  decide +kernel
#print axioms cover_1614489

def state_1614491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
def hex_1614491 : String := "06"
theorem cover_1614491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1614491)
  decide +kernel
#print axioms cover_1614491

def state_1614494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
def hex_1614494 : String := "404306420644094140420809090906"
theorem cover_1614494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1614494)
  decide +kernel
#print axioms cover_1614494
end Mub6.Numerical.CircleFullD0.Forest
