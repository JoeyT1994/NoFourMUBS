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
def state_1033957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 382 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 252)))
def hex_1033957 : String := "414243444041420A43050A42050A4105058444400A410606844344400709844440074142060642060684424344404105050584440A844309440984"
theorem cover_1033957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1033957)
  decide +kernel
#print axioms cover_1033957

def state_1034016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 383 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 252)))
def hex_1034016 : String := "414243440584440684430944068442430544068409"
theorem cover_1034016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 21) (hex := hex_1034016)
  decide +kernel
#print axioms cover_1034016

def state_1034037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 253)))
def hex_1034037 : String := "84"
theorem cover_1034037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1034037)
  decide +kernel
#print axioms cover_1034037

def state_1034038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 127)))
def hex_1034038 : String := "4041420943064440064107070684414243444041088408080943080884"
theorem cover_1034038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1034038)
  decide +kernel
#print axioms cover_1034038

def state_1034068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 63)))
def hex_1034068 : String := "43444042054105050540064205410505444042414344054006050A08414344400805840A08420741430544078443054405054042410908844241070784"
theorem cover_1034068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1034068)
  decide +kernel
#print axioms cover_1034068

def state_1034130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 63)))
def hex_1034130 : String := "44404142430544050606084142050505400641420606420506"
theorem cover_1034130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1034130)
  decide +kernel
#print axioms cover_1034130

def state_1034157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
def hex_1034157 : String := "414243444008414205050584440A84434440080984444008414208070884420808"
theorem cover_1034157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1034157)
  decide +kernel
#print axioms cover_1034157
end Mub6.Numerical.CircleFullD0.Forest
