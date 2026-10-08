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
def state_1024211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 382 else 252) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 205)))
def hex_1024211 : String := "444342414044430742050743050744050581414007440606814241400A088141400A44430606430606814342414044050505814107814208410881"
theorem cover_1024211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1024211)
  decide +kernel
#print axioms cover_1024211

def state_1024270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 383 else 252) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 205)))
def hex_1024270 : String := "444342410581410681420841068143420541068108"
theorem cover_1024270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024270 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_1024270)
  decide +kernel
#print axioms cover_1024270

def state_1024291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 253) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 205)))
def hex_1024291 : String := "81"
theorem cover_1024291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1024291)
  decide +kernel
#print axioms cover_1024291

def state_1024292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 127) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 102)))
def hex_1024292 : String := "40444308420641400644080A0681444342414044088109090842090981"
theorem cover_1024292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1024292)
  decide +kernel
#print axioms cover_1024292

def state_1024322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 103)))
def hex_1024322 : String := "4140434442054105060508430508400643440605440606"
theorem cover_1024322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1024322)
  decide +kernel
#print axioms cover_1024322

def state_1024347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 103)))
def hex_1024347 : String := "43444241400943050981410781094442414009088141400744430707078109"
theorem cover_1024347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1024347)
  decide +kernel
#print axioms cover_1024347

def state_1024378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 103)))
def hex_1024378 : String := "4344424105814140430744420507074305058142054140070581444208414044434208070808088108"
theorem cover_1024378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024378 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1024378)
  decide +kernel
#print axioms cover_1024378

def state_1024419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 127) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 103)))
def hex_1024419 : String := "81"
theorem cover_1024419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1024419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1024419)
  decide +kernel
#print axioms cover_1024419
end Mub6.Numerical.CircleFullD0.Forest
