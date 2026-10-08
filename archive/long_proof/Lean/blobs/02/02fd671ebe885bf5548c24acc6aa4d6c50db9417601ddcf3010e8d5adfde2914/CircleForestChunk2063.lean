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
def state_2575545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 19)))
def hex_2575545 : String := "404144424305404105050543404105050540DC054243054006054340060540410706410505444243054006054340060540440A06440505064105440505"
theorem cover_2575545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2575545)
  decide +kernel
#print axioms cover_2575545

def state_2575606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 9)))
def hex_2575606 : String := "4105440505"
theorem cover_2575606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2575606)
  decide +kernel
#print axioms cover_2575606

def state_2575612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_2575612 : String := "4206430644414042064306074243060743444142064006430644410A060606064441074207434006070707400642064306444142064306400607060606"
theorem cover_2575612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 61) (hex := hex_2575612)
  decide +kernel
#print axioms cover_2575612

def state_2575674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
def hex_2575674 : String := "43064441430508430540060506"
theorem cover_2575674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2575674)
  decide +kernel
#print axioms cover_2575674

def state_2575688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 5)))
def hex_2575688 : String := "4441420540430544050605420540060506"
theorem cover_2575688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2575688)
  decide +kernel
#print axioms cover_2575688

def state_2575708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 10)))
def hex_2575708 : String := "43404405050540440A0708"
theorem cover_2575708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2575708)
  decide +kernel
#print axioms cover_2575708

def state_2575719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 10)))
def hex_2575719 : String := "434044414205430505420543050541420643060706440505404441420A43400A050842430508434044410A05070540070807440841084205430507"
theorem cover_2575719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2575719)
  decide +kernel
#print axioms cover_2575719

def state_2575779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 10)))
def hex_2575779 : String := "434006054044414305070606440505"
theorem cover_2575779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2575779)
  decide +kernel
#print axioms cover_2575779
end Mub6.Numerical.CircleFullD0.Forest
