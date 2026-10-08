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
def state_1335915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 48 else 51)))
def hex_1335915 : String := "434044410607064441420843440A08064243444005090509434440070A4041060509440709410609400609"
theorem cover_1335915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1335915)
  decide +kernel
#print axioms cover_1335915

def state_1335958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 48 else 51)))
def hex_1335958 : String := "4340444108074106420643060644410A42434440070A40410807410A420A0A0A43440ADB0A41084243404441064205DB06444108090909DB4006440A06"
theorem cover_1335958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1335958)
  decide +kernel
#print axioms cover_1335958

def state_1336019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 49 else 25)))
def hex_1336019 : String := "400744074106420606"
theorem cover_1336019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1336019)
  decide +kernel
#print axioms cover_1336019

def state_1336029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 30 else (if j.val < 4 then 24 else 25)))
def hex_1336029 : String := "05"
theorem cover_1336029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1336029)
  decide +kernel
#print axioms cover_1336029

def state_1336031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 25)))
def hex_1336031 : String := "40074407414243050743404407414205434005DB07054441424344074007414205DB0507434407DB0707414243400544414205DB05054005440705DB050705"
theorem cover_1336031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_1336031)
  decide +kernel
#print axioms cover_1336031

def state_1336094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 49 else 25)))
def hex_1336094 : String := "07"
theorem cover_1336094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1336094)
  decide +kernel
#print axioms cover_1336094

def state_1336095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 12)))
def hex_1336095 : String := "44074142070707"
theorem cover_1336095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336095)
  decide +kernel
#print axioms cover_1336095

def state_1336103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 13)))
def hex_1336103 : String := "424006084006430806"
theorem cover_1336103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1336103)
  decide +kernel
#print axioms cover_1336103

def state_1336113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 13)))
def hex_1336113 : String := "4005430509"
theorem cover_1336113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1336113)
  decide +kernel
#print axioms cover_1336113

def state_1336119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 13)))
def hex_1336119 : String := "43444106050506"
theorem cover_1336119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336119)
  decide +kernel
#print axioms cover_1336119

def state_1336129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 26)))
def hex_1336129 : String := "424340050906434006444106424309064340064441064206DB06060606"
theorem cover_1336129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 29) (hex := hex_1336129)
  decide +kernel
#print axioms cover_1336129
end Mub6.Numerical.CircleFullD0.Forest
