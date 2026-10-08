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
def state_1584653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
def hex_1584653 : String := "414243444006410642434440074142430706060706064307060606064243444007414243070707070744400641060806430706"
theorem cover_1584653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_1584653)
  decide +kernel
#print axioms cover_1584653

def state_1584714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
def hex_1584714 : String := "41D04243444041D042090741D04205434405054440070505094440064106420906064344400641D042430707070606"
theorem cover_1584714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1584714)
  decide +kernel
#print axioms cover_1584714

def state_1584762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 64) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
def hex_1584762 : String := "D0"
theorem cover_1584762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1584762)
  decide +kernel
#print axioms cover_1584762

def state_1584763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 104)))
def hex_1584763 : String := "4243444041D0050505444041D04205440505050943444041D042430505430A4408050840410642050605444041064244430506060641084205084006410605"
theorem cover_1584763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1584763)
  decide +kernel
#print axioms cover_1584763

def state_1584826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 105)))
def hex_1584826 : String := "400641064209430906"
theorem cover_1584826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1584826)
  decide +kernel
#print axioms cover_1584826

def state_1584835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 52)))
def hex_1584835 : String := "4440064106424443400A0A06064443400641064244050506060606"
theorem cover_1584835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_1584835)
  decide +kernel
#print axioms cover_1584835

def state_1584862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 52)))
def hex_1584862 : String := "4344400641084243440808440806080606"
theorem cover_1584862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1584862)
  decide +kernel
#print axioms cover_1584862
end Mub6.Numerical.CircleFullD0.Forest
