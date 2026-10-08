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
def state_1581268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 102)))
def hex_1581268 : String := "43404106060640414208440808084142064406430640414208440608060606"
theorem cover_1581268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1581268)
  decide +kernel
#print axioms cover_1581268

def state_1581300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
def hex_1581300 : String := "40414208070741420544060505"
theorem cover_1581300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1581300)
  decide +kernel
#print axioms cover_1581300

def state_1581313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
def hex_1581313 : String := "404142084408070841424443050505444340414205070505404142084443070707084142054405050543054041420507050542054443050505"
theorem cover_1581313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1581313)
  decide +kernel
#print axioms cover_1581313

def state_1581371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 102)))
def hex_1581371 : String := "43404142070707414206090640414244090707074142440943404107060640410907410906094244064306400706440907"
theorem cover_1581371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1581371)
  decide +kernel
#print axioms cover_1581371

def state_1581421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
def hex_1581421 : String := "4007414244430607070707"
theorem cover_1581421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1581421)
  decide +kernel
#print axioms cover_1581421

def state_1581432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
def hex_1581432 : String := "40074142444340074142060706400741424443064007054305054407074244050507430740074142050707444307070742444307070707"
theorem cover_1581432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1581432)
  decide +kernel
#print axioms cover_1581432

def state_1581487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
def hex_1581487 : String := "424443060843080844430640074142060706430707"
theorem cover_1581487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1581487)
  decide +kernel
#print axioms cover_1581487

def state_1581510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
def hex_1581510 : String := "4406430505"
theorem cover_1581510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1581510)
  decide +kernel
#print axioms cover_1581510
end Mub6.Numerical.CircleFullD0.Forest
