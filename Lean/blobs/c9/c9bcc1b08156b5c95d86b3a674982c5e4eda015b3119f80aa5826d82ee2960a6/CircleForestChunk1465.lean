import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1652301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
def hex_1652301 : String := "44400A42434144400A4207430A07400A42050A0A0A434144400A42430A07430A0A400A420A0A0A0A400A424341440A05050A4341444009420A0A090A0A"
theorem cover_1652301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1652301)
  decide +kernel
#print axioms cover_1652301

def state_1652362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
def hex_1652362 : String := "440A0A"
theorem cover_1652362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1652362)
  decide +kernel
#print axioms cover_1652362

def state_1652365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
def hex_1652365 : String := "4043090A43054244410A05054441400A4243050A43050A0A4140070505"
theorem cover_1652365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1652365)
  decide +kernel
#print axioms cover_1652365

def state_1652397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
def hex_1652397 : String := "09"
theorem cover_1652397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1652397)
  decide +kernel
#print axioms cover_1652397

def state_1652399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 22)))
def hex_1652399 : String := "09"
theorem cover_1652399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1652399)
  decide +kernel
#print axioms cover_1652399

def state_1652402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_1652402 : String := "4440054342410544050905054009430942410544050905"
theorem cover_1652402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1652402)
  decide +kernel
#print axioms cover_1652402

def state_1652426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 44)))
def hex_1652426 : String := "404309054342414440054309050944400A4342414440090808440A0809424144050A0A06400943084241090A0641094406064241050606"
theorem cover_1652426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1652426)
  decide +kernel
#print axioms cover_1652426

def state_1652481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 45)))
def hex_1652481 : String := "40094309424144400543090509440A0A06"
theorem cover_1652481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1652481)
  decide +kernel
#print axioms cover_1652481

def state_1652498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 22)))
def hex_1652498 : String := "4144050906"
theorem cover_1652498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1652498)
  decide +kernel
#print axioms cover_1652498

def state_1652503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_1652503 : String := "09"
theorem cover_1652503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1652503)
  decide +kernel
#print axioms cover_1652503
end Mub6.Numerical.CircleFullD0.Forest
