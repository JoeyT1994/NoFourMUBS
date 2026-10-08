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
def state_391338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 49 else (if j.val < 4 then 57 else 48)))
def hex_391338 : String := "44424041090841090840414344424041050509B54209B5094344084208B50A41434442400906B506094306444208B5094209404109430609410906"
theorem cover_391338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_391338)
  decide +kernel
#print axioms cover_391338

def state_391397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
def hex_391397 : String := "4143064442070709430644424006064041430609060606"
theorem cover_391397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_391397)
  decide +kernel
#print axioms cover_391397

def state_391420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 49)))
def hex_391420 : String := "4041434205060943060906"
theorem cover_391420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_391420)
  decide +kernel
#print axioms cover_391420

def state_391431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 24)))
def hex_391431 : String := "4209444041094344420940090909090909"
theorem cover_391431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_391431)
  decide +kernel
#print axioms cover_391431

def state_391448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
def hex_391448 : String := "43420844404306414442084008064208400706080606420A44400A4143444208400A0609090A400909"
theorem cover_391448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_391448)
  decide +kernel
#print axioms cover_391448

def state_391489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 25)))
def hex_391489 : String := "4143420640090609430609"
theorem cover_391489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_391489)
  decide +kernel
#print axioms cover_391489

def state_391506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 48)))
def hex_391506 : String := "4143440A0A44B5084344B50644B54042414344404207074206064007060943074440074209410807074108430708424143060906410806"
theorem cover_391506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_391506)
  decide +kernel
#print axioms cover_391506

def state_391561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 48)))
def hex_391561 : String := "4108430A44404241084344090808084241084305050508"
theorem cover_391561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_391561)
  decide +kernel
#print axioms cover_391561
end Mub6.Numerical.CircleFullPrototype.Forest
