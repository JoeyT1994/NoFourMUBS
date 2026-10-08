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
def state_133931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_133931 : String := "40430741074244400943050507444007070743074107420A4440070707"
theorem cover_133931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_133931)
  decide +kernel
#print axioms cover_133931

def state_133961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_133961 : String := "40440841420843400A44050508420843400808084408410942084340080808"
theorem cover_133961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_133961)
  decide +kernel
#print axioms cover_133961

def state_133994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_133994 : String := "4243050543444007050744400A0506"
theorem cover_133994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_133994)
  decide +kernel
#print axioms cover_133994

def state_134010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 13)))
def hex_134010 : String := "4344400805400905440806"
theorem cover_134010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_134010)
  decide +kernel
#print axioms cover_134010

def state_134022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 13)))
def hex_134022 : String := "4440414243070843070A424309084344400707070A414205430744050542434405050843444007410508074408404105080540094107420907"
theorem cover_134022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_134022)
  decide +kernel
#print axioms cover_134022

def state_134079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 13)))
def hex_134079 : String := "44400A4142050A084006410506"
theorem cover_134079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_134079)
  decide +kernel
#print axioms cover_134079

def state_134092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_134092 : String := "414205430505424305054344404105420543440505440505054041054205070544404105080505"
theorem cover_134092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_134092)
  decide +kernel
#print axioms cover_134092

def state_134132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_134132 : String := "444042430744410706410740074243064406070743070A4243064406410706430644060707"
theorem cover_134132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_134132)
  decide +kernel
#print axioms cover_134132
end Mub6.Numerical.CircleFullPrototype.Forest
