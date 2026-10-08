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
def state_166154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 6)))
def hex_166154 : String := "440640414243060909064142434406404108060844084041084208090843440640064107064406400941080A424306440640060806"
theorem cover_166154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_166154)
  decide +kernel
#print axioms cover_166154

def state_166207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 6)))
def hex_166207 : String := "434406404142060706410705440640410906414342440607090906"
theorem cover_166207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_166207)
  decide +kernel
#print axioms cover_166207

def state_166236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
def hex_166236 : String := "40414442430744400607070707444206060A41074442430540414406070641440505050507"
theorem cover_166236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_166236)
  decide +kernel
#print axioms cover_166236

def state_166275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
def hex_166275 : String := "444243444009410942060640094107420A0744094005410542050943090942430740054105444205050507"
theorem cover_166275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_166275)
  decide +kernel
#print axioms cover_166275

def state_166318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
def hex_166318 : String := "4442434144060A0641444006420606404205094243410506054341090605440640064206064306414406090642430A41400A4442050A0A0A430A41090A"
theorem cover_166318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_166318)
  decide +kernel
#print axioms cover_166318

def state_166383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 14)))
def hex_166383 : String := "4044410742430844084041070608430744060707444107420843070807"
theorem cover_166383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_166383)
  decide +kernel
#print axioms cover_166383
end Mub6.Numerical.CircleFullPrototype.Forest
