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
def state_2569340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 46)))
def hex_2569340 : String := "404342414405400905440540430842410644060906054105440509424106440640064305050605"
theorem cover_2569340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_2569340)
  decide +kernel
#print axioms cover_2569340

def state_2569379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
def hex_2569379 : String := "40434241094440430809430809090942410944404309060909094342410544050707424107444009050907"
theorem cover_2569379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2569379)
  decide +kernel
#print axioms cover_2569379

def state_2569428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 92)))
def hex_2569428 : String := "4043424105074105440540070542070605"
theorem cover_2569428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2569428)
  decide +kernel
#print axioms cover_2569428

def state_2569445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 93)))
def hex_2569445 : String := "40434241440808444007084043070708410844404308070840080842414440060A404309060A440740070A414406094440060A40090943420808420A0A"
theorem cover_2569445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2569445)
  decide +kernel
#print axioms cover_2569445

def state_2569506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 56 else 46)))
def hex_2569506 : String := "44404307070A4043424407410A0744410A0741404307070A07420744074140070A070A"
theorem cover_2569506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2569506)
  decide +kernel
#print axioms cover_2569506

def state_2569542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 56 else 46)))
def hex_2569542 : String := "44404342410544054006050506054043090909"
theorem cover_2569542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2569542)
  decide +kernel
#print axioms cover_2569542

def state_2569562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 56 else 92)))
def hex_2569562 : String := "404342414405400708074144050944074007094207060A"
theorem cover_2569562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2569562)
  decide +kernel
#print axioms cover_2569562
end Mub6.Numerical.CircleFullD0.Forest
