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
def state_171034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 31)))
def hex_171034 : String := "43424041444308080808414443420905420940080943094209080940080542400841444342070806060708"
theorem cover_171034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_171034)
  decide +kernel
#print axioms cover_171034

def state_171077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_171077 : String := "4044060844074342070507"
theorem cover_171077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_171077)
  decide +kernel
#print axioms cover_171077

def state_171088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
def hex_171088 : String := "4140440708440742070807"
theorem cover_171088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_171088)
  decide +kernel
#print axioms cover_171088

def state_171099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_171099 : String := "4044420541094307074205084442074107074205410707"
theorem cover_171099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_171099)
  decide +kernel
#print axioms cover_171099

def state_171123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_171123 : String := "40444306080844434142400644064305424006050540440608050641420740084407080743414240084443054240080505080842050508"
theorem cover_171123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_171123)
  decide +kernel
#print axioms cover_171123

def state_171178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
def hex_171178 : String := "404409084441070741424307070807"
theorem cover_171178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_171178)
  decide +kernel
#print axioms cover_171178

def state_171195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_171195 : String := "40440641420A06064406414207430607420906"
theorem cover_171195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171195 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_171195)
  decide +kernel
#print axioms cover_171195

def state_171214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_171214 : String := "40444142430744070543060742430644064006070641424307050842430A400A44070708444142070742430607430607414207074207430707"
theorem cover_171214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_171214)
  decide +kernel
#print axioms cover_171214
end Mub6.Numerical.CircleFullPrototype.Forest
