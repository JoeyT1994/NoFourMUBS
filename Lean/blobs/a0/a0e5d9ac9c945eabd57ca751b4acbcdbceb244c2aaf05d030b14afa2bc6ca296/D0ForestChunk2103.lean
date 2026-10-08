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
def state_2585217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 98 else (if j.val < 4 then 45 else 39)))
def hex_2585217 : String := "434008440941424305400805090940440841080844410A420A43080A410A42434008050A43080A"
theorem cover_2585217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2585217)
  decide +kernel
#print axioms cover_2585217

def state_2585256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 99 else (if j.val < 4 then 45 else 39)))
def hex_2585256 : String := "43400809400844410609414243080A43080642430840080908"
theorem cover_2585256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2585256)
  decide +kernel
#print axioms cover_2585256

def state_2585283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 19)))
def hex_2585283 : String := "4306444108084142060806"
theorem cover_2585283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2585283)
  decide +kernel
#print axioms cover_2585283

def state_2585295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 19)))
def hex_2585295 : String := "4405410505"
theorem cover_2585295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585295 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2585295)
  decide +kernel
#print axioms cover_2585295

def state_2585301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 38)))
def hex_2585301 : String := "4142430505430740440708440505424305054307400805"
theorem cover_2585301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2585301)
  decide +kernel
#print axioms cover_2585301

def state_2585324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 39)))
def hex_2585324 : String := "414243054044410505060543400805404408084441050541420543050A4205430540080542430540060543400605400844094142050906"
theorem cover_2585324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2585324)
  decide +kernel
#print axioms cover_2585324

def state_2585380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 19)))
def hex_2585380 : String := "4308440808"
theorem cover_2585380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2585380)
  decide +kernel
#print axioms cover_2585380

def state_2585385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 19)))
def hex_2585385 : String := "43440709444142430740080743074008090941424340080940084441424305400805080841424308400809430808094308400844080842430840080909"
theorem cover_2585385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585385 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_2585385)
  decide +kernel
#print axioms cover_2585385
end Mub6.Numerical.CircleFullD0.Forest
