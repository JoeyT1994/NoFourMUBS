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
def state_1039654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1039654 : String := "424344404142080842064406080608440608434440410A4409080A08444041430A44060A43440642060806064041080808"
theorem cover_1039654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1039654)
  decide +kernel
#print axioms cover_1039654

def state_1039703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1039703 : String := "42434440414206440606060640410842080808440606434409404108090844064041430844060843444206060806410806"
theorem cover_1039703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1039703)
  decide +kernel
#print axioms cover_1039703

def state_1039752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1039752 : String := "4142070A4206430906"
theorem cover_1039752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1039752)
  decide +kernel
#print axioms cover_1039752

def state_1039761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_1039761 : String := "4041084243080843080808"
theorem cover_1039761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1039761)
  decide +kernel
#print axioms cover_1039761

def state_1039772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1039772 : String := "4142080A42084308440608"
theorem cover_1039772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1039772)
  decide +kernel
#print axioms cover_1039772

def state_1039784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_1039784 : String := "404142064344064041070606060606"
theorem cover_1039784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1039784)
  decide +kernel
#print axioms cover_1039784

def state_1039799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_1039799 : String := "40414207434440410542050507050542434406400906064344404142064344064005060506064041054243080543444005060505410806440605410706"
theorem cover_1039799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1039799)
  decide +kernel
#print axioms cover_1039799

def state_1039862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
def hex_1039862 : String := "40414409424309404144090A440942430940410A09070909090909"
theorem cover_1039862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_1039862)
  decide +kernel
#print axioms cover_1039862
end Mub6.Numerical.CircleFullD0.Forest
