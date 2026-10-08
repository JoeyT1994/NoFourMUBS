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
def state_168358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 7)))
def hex_168358 : String := "414443074240090707074443424041070505054240410944064305420605414443050907440505404109440605414409050543074240410744430508070707"
theorem cover_168358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_168358)
  decide +kernel
#print axioms cover_168358

def state_168422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_168422 : String := "444440410808080707"
theorem cover_168422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_168422)
  decide +kernel
#print axioms cover_168422

def state_168433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 6)))
def hex_168433 : String := "4440414206440643070606410806404142070742060A4107420543054440060505"
theorem cover_168433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_168433)
  decide +kernel
#print axioms cover_168433

def state_168467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
def hex_168467 : String := "40414206430644060906414243060943080806"
theorem cover_168467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_168467)
  decide +kernel
#print axioms cover_168467

def state_168487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
def hex_168487 : String := "414209434440094107420643070907094243060943440641400942090A06440909"
theorem cover_168487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_168487)
  decide +kernel
#print axioms cover_168487

def state_168521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
def hex_168521 : String := "424344400907070943444041074207070707440909"
theorem cover_168521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_168521)
  decide +kernel
#print axioms cover_168521

def state_168543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 13)))
def hex_168543 : String := "4344064006054406404109064142090905"
theorem cover_168543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_168543)
  decide +kernel
#print axioms cover_168543

def state_168561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 13)))
def hex_168561 : String := "4440414206430644060606410805404107420543054140060505410705"
theorem cover_168561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_168561)
  decide +kernel
#print axioms cover_168561
end Mub6.Numerical.CircleFullPrototype.Forest
