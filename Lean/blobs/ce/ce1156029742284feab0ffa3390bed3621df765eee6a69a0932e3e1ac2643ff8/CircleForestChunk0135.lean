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
def state_969906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 28)))
def hex_969906 : String := "4144430A420A0A0A4443094240414409430808090909430A4240410808080A"
theorem cover_969906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_969906)
  decide +kernel
#print axioms cover_969906

def state_969937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 29)))
def hex_969937 : String := "40070A"
theorem cover_969937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_969937)
  decide +kernel
#print axioms cover_969937

def state_969944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 38 else 28)))
def hex_969944 : String := "44424041054344420505050541054344420540410507410A060505400741430A44420540050A054344424007090707444240054105060707420507"
theorem cover_969944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_969944)
  decide +kernel
#print axioms cover_969944

def state_970003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 39 else 28)))
def hex_970003 : String := "44420540054105434405050505"
theorem cover_970003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_970003)
  decide +kernel
#print axioms cover_970003

def state_970017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 38 else 28)))
def hex_970017 : String := "44424041430705074143444206400706420507440605434406420607064007414307444240070607070742400741434405050543070507"
theorem cover_970017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_970017)
  decide +kernel
#print axioms cover_970017

def state_970072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 39 else 28)))
def hex_970072 : String := "4442400506400741434442050605054344060706420505"
theorem cover_970072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_970072)
  decide +kernel
#print axioms cover_970072

def state_970096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 28)))
def hex_970096 : String := "4344424041430A0543440608060640410A430A444206090A0A420A0A44420540410543440605050605"
theorem cover_970096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_970096)
  decide +kernel
#print axioms cover_970096
end Mub6.Numerical.CircleFullD0.Forest
