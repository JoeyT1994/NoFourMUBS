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
def state_2549668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
def hex_2549668 : String := "4042410A070A424143440508440640064208054344074007084407400742070741430506434405084406400608"
theorem cover_2549668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2549668)
  decide +kernel
#print axioms cover_2549668

def state_2549713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 11)))
def hex_2549713 : String := "4042410A070A424143080A43440808444007420708400A08410A434408080A"
theorem cover_2549713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2549713)
  decide +kernel
#print axioms cover_2549713

def state_2549744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
def hex_2549744 : String := "4440064241060706400A424144430A060A4443400742070A06430A0A410644060A"
theorem cover_2549744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2549744)
  decide +kernel
#print axioms cover_2549744

def state_2549777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_2549777 : String := "440641064406400642434106060606"
theorem cover_2549777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2549777)
  decide +kernel
#print axioms cover_2549777

def state_2549793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2549793 : String := "42434440050540420543050542434405050505054305440505"
theorem cover_2549793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2549793)
  decide +kernel
#print axioms cover_2549793

def state_2549821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_2549821 : String := "4041054205430505410505"
theorem cover_2549821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2549821)
  decide +kernel
#print axioms cover_2549821

def state_2549835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_2549835 : String := "43440542430544050643084405084405424405400A054440410543050505400A4105430505"
theorem cover_2549835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2549835)
  decide +kernel
#print axioms cover_2549835

def state_2549872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2549872 : String := "43440543084440410508054008084405444041054243440508054305050540410A420A0A410542430505430505"
theorem cover_2549872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2549872)
  decide +kernel
#print axioms cover_2549872
end Mub6.Numerical.CircleFullD0.Forest
