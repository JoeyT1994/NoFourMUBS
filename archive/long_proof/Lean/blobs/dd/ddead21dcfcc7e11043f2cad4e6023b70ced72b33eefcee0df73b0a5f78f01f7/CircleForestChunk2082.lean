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
def state_2580172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 36)))
def hex_2580172 : String := "43400A4144070A07404105054144074243400A0A400541060A4307050A"
theorem cover_2580172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2580172)
  decide +kernel
#print axioms cover_2580172

def state_2580203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 37)))
def hex_2580203 : String := "4006414443420640060A42400641444305080606400A41440A0A0A0606"
theorem cover_2580203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2580203)
  decide +kernel
#print axioms cover_2580203

def state_2580233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 37)))
def hex_2580233 : String := "41444209090606"
theorem cover_2580233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2580233)
  decide +kernel
#print axioms cover_2580233

def state_2580240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 37)))
def hex_2580240 : String := "41444243404109064108440806400908434041440A090A414442430A080A42080A0A4041090941080A42430608434006410806400908440A06"
theorem cover_2580240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2580240)
  decide +kernel
#print axioms cover_2580240

def state_2580297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 37)))
def hex_2580297 : String := "434041440A060641440ADC0A40414405050A41444243400A0A400541440A4208050A430A054243400A41440A0A0A4005414408080A4340050A050A"
theorem cover_2580297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2580297)
  decide +kernel
#print axioms cover_2580297

def state_2580357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2580357 : String := "410505"
theorem cover_2580357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580357 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2580357)
  decide +kernel
#print axioms cover_2580357

def state_2580361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2580361 : String := "4442434041090941064406420843400506054005064340050605424340094108444208430905080943400541440542080544050505"
theorem cover_2580361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2580361)
  decide +kernel
#print axioms cover_2580361
end Mub6.Numerical.CircleFullD0.Forest
