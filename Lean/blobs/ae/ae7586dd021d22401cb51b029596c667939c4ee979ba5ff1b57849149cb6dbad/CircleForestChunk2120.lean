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
def state_2589442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 9)))
def hex_2589442 : String := "4340440941424309404406410609060909094044064106434240440641060906060606"
theorem cover_2589442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589442 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_2589442)
  decide +kernel
#print axioms cover_2589442

def state_2589478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
def hex_2589478 : String := "424307404107090609"
theorem cover_2589478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2589478)
  decide +kernel
#print axioms cover_2589478

def state_2589489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 9)))
def hex_2589489 : String := "404144094243054044050905090909"
theorem cover_2589489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2589489)
  decide +kernel
#print axioms cover_2589489

def state_2589507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
def hex_2589507 : String := "4243404144070909054041064406424340410709054041064406DC0643090606430906"
theorem cover_2589507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_2589507)
  decide +kernel
#print axioms cover_2589507

def state_2589544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2589544 : String := "4044414205430540440909050941424305404405050543094044414243050509094142430540070543094007090909424305404405050509440505"
theorem cover_2589544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_2589544)
  decide +kernel
#print axioms cover_2589544

def state_2589606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
def hex_2589606 : String := "424340444106420506410A420543054044060A05054044064106420A060643404406410642430906060606"
theorem cover_2589606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2589606)
  decide +kernel
#print axioms cover_2589606

def state_2589651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
def hex_2589651 : String := "4044414205090941420543054044094105050542050905"
theorem cover_2589651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2589651)
  decide +kernel
#print axioms cover_2589651
end Mub6.Numerical.CircleFullD0.Forest
