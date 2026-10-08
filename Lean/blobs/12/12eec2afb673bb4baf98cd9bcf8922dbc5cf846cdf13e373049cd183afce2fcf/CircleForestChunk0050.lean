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
def state_11845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_11845 : String := "41064206434405404305410605050A"
theorem cover_11845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_11845)
  decide +kernel
#print axioms cover_11845

def state_11862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_11862 : String := "42064344060606"
theorem cover_11862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_11862)
  decide +kernel
#print axioms cover_11862

def state_11870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 9)))
def hex_11870 : String := "4344060606"
theorem cover_11870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_11870)
  decide +kernel
#print axioms cover_11870

def state_11879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 36)))
def hex_11879 : String := "40414206404243440A06060A42060A4240414309060941060940414243440509440A4009060A420943050A414243050605054106420605"
theorem cover_11879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_11879)
  decide +kernel
#print axioms cover_11879

def state_11934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 37)))
def hex_11934 : String := "40414206444042060A060642094440090909410609"
theorem cover_11934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_11934)
  decide +kernel
#print axioms cover_11934

def state_11955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 18)))
def hex_11955 : String := "44404142060A424340410609060643400A0A0A410642060A4041064206434440410A0941060909440A40090606"
theorem cover_11955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_11955)
  decide +kernel
#print axioms cover_11955

def state_12000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 19)))
def hex_12000 : String := "44434041060906404106090609"
theorem cover_12000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_12000)
  decide +kernel
#print axioms cover_12000

def state_12013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 9)))
def hex_12013 : String := "44434440410642060A0640410642060A060A06"
theorem cover_12013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_12013)
  decide +kernel
#print axioms cover_12013

def state_12032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_12032 : String := "410642064344404344060606060606"
theorem cover_12032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_12032)
  decide +kernel
#print axioms cover_12032

def state_12047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_12047 : String := "41064206434440414206050541420605054041064206440506410642060844404106420643050641060706"
theorem cover_12047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_12047)
  decide +kernel
#print axioms cover_12047
end Mub6.Numerical.CircleFullPrototype.Forest
