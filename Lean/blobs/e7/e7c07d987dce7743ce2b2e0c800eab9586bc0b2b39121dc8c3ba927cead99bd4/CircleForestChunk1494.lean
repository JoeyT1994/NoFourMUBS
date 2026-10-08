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
def state_1659280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_1659280 : String := "40420643060706"
theorem cover_1659280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659280 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1659280)
  decide +kernel
#print axioms cover_1659280

def state_1659287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_1659287 : String := "4042064306414440420743414407404306070644074043060706070640EA064440420743414407400A060A070740420A434441400A0505050A420543050706"
theorem cover_1659287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_1659287)
  decide +kernel
#print axioms cover_1659287

def state_1659350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
def hex_1659350 : String := "444042074341440706440705070640420543054441400A07050505"
theorem cover_1659350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1659350)
  decide +kernel
#print axioms cover_1659350

def state_1659377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_1659377 : String := "41440740420943414407404243EA0743EA09074407400A0709074407400A07"
theorem cover_1659377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1659377)
  decide +kernel
#print axioms cover_1659377

def state_1659415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
def hex_1659415 : String := "440740434206414440090608444009060842074144054005074407404309050707"
theorem cover_1659415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1659415)
  decide +kernel
#print axioms cover_1659415

def state_1659448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
def hex_1659448 : String := "44074043420641444043060706400906444043090706404306420608064207414407404342070907074407404342070A070707"
theorem cover_1659448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1659448)
  decide +kernel
#print axioms cover_1659448

def state_1659500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_1659500 : String := "44404342070505074043084241054405080508"
theorem cover_1659500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1659500)
  decide +kernel
#print axioms cover_1659500
end Mub6.Numerical.CircleFullD0.Forest
