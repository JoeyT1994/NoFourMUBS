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
def state_2598829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_2598829 : String := "40424305440A414042430506060A0A0A0A"
theorem cover_2598829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2598829)
  decide +kernel
#print axioms cover_2598829

def state_2598846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_2598846 : String := "404243054144404243054105054305410644060842050A4008054440420507054042050705430741440A08440A0742430541440A05050A"
theorem cover_2598846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598846 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2598846)
  decide +kernel
#print axioms cover_2598846

def state_2598901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_2598901 : String := "0A"
theorem cover_2598901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2598901)
  decide +kernel
#print axioms cover_2598901

def state_2598902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_2598902 : String := "414243094441060A090A0A"
theorem cover_2598902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2598902)
  decide +kernel
#print axioms cover_2598902

def state_2598918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_2598918 : String := "444005414243440A0A0505054041420643064405060641424344410A06064405064344050644054144050606424306440506430A440506"
theorem cover_2598918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2598918)
  decide +kernel
#print axioms cover_2598918

def state_2598973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_2598973 : String := "4405404142440506440543404144050606410506084206440A06414244050644054341050A0542440506440506"
theorem cover_2598973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2598973)
  decide +kernel
#print axioms cover_2598973

def state_2599019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
def hex_2599019 : String := "44054041434405064405424041440506064105064041050A054306444206050641434405064405420A050A"
theorem cover_2599019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2599019)
  decide +kernel
#print axioms cover_2599019
end Mub6.Numerical.CircleFullD0.Forest
