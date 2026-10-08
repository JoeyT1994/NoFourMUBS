import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_141227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 14)))
def hex_141227 : String := "404142430844080A0A420805414243084440080840410A084142430844080A094208080A420808"
theorem cover_141227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_141227)
  decide +kernel
#print axioms cover_141227

def state_141266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 15)))
def hex_141266 : String := "40410A064142430A44400A410A424307444008074006070A4006410A424306440605060A42430A44400642074306060606"
theorem cover_141266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_141266)
  decide +kernel
#print axioms cover_141266

def state_141315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 7)))
def hex_141315 : String := "0A"
theorem cover_141315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_141315)
  decide +kernel
#print axioms cover_141315

def state_141316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_141316 : String := "42430844400808064306440506"
theorem cover_141316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_141316)
  decide +kernel
#print axioms cover_141316

def state_141330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_141330 : String := "404344054107050743440541424043050543050505054405414240074305050505"
theorem cover_141330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_141330)
  decide +kernel
#print axioms cover_141330

def state_141364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_141364 : String := "43414244400643410705070607424440050506054107420907"
theorem cover_141364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_141364)
  decide +kernel
#print axioms cover_141364

def state_141394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_141394 : String := "43414244400741070540074142440707074244430505064405064405074244054005424144050605050541074244050905"
theorem cover_141394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_141394)
  decide +kernel
#print axioms cover_141394

def state_141447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
def hex_141447 : String := "40414244064308074405430505420805414206440543080642440543080605"
theorem cover_141447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_141447)
  decide +kernel
#print axioms cover_141447
end Mub6.Numerical.CircleFullPrototype.Forest
