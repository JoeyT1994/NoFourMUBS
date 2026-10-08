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
def state_2284292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 125)))
def hex_2284292 : String := "4144424305050542434005054041050A054305054408420A08"
theorem cover_2284292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2284292)
  decide +kernel
#print axioms cover_2284292

def state_2284320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 230) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 250)))
def hex_2284320 : String := "424340080840080708"
theorem cover_2284320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2284320)
  decide +kernel
#print axioms cover_2284320

def state_2284329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 230) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 251)))
def hex_2284329 : String := "424340414442430909080944080941444243050505424340050540410509054305054408420A084041440909094107440842060843400808400807"
theorem cover_2284329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2284329)
  decide +kernel
#print axioms cover_2284329

def state_2284388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 231) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 125)))
def hex_2284388 : String := "44084243080808"
theorem cover_2284388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2284388)
  decide +kernel
#print axioms cover_2284388

def state_2284395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 125)))
def hex_2284395 : String := "41440742434041070A07070744084243080808"
theorem cover_2284395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2284395)
  decide +kernel
#print axioms cover_2284395

def state_2284416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
def hex_2284416 : String := "4442434041444206074206094442060942060941074407420607400606434009070742434041060641060606434009410744424309060709400907"
theorem cover_2284416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2284416)
  decide +kernel
#print axioms cover_2284416

def state_2284475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
def hex_2284475 : String := "444243404144084206090841444206084206430806084006064308084243404106064106060643400941440909084009410606"
theorem cover_2284475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2284475)
  decide +kernel
#print axioms cover_2284475

def state_2284527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
def hex_2284527 : String := "44074243404107440606070607"
theorem cover_2284527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2284527)
  decide +kernel
#print axioms cover_2284527
end Mub6.Numerical.CircleFullD0.Forest
