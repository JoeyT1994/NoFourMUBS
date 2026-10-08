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
def state_1308520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 46)))
def hex_1308520 : String := "4240434409424109404308064344064241070507060909434442410940060509424140430709430509404305060541074009054409424109060909"
theorem cover_1308520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1308520)
  decide +kernel
#print axioms cover_1308520

def state_1308579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 46)))
def hex_1308579 : String := "4240434406414206060606434406414205060506404308060A"
theorem cover_1308579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1308579)
  decide +kernel
#print axioms cover_1308579

def state_1308607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 47)))
def hex_1308607 : String := "43444241074008430744060807074442410906094241074005434406070507"
theorem cover_1308607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1308607)
  decide +kernel
#print axioms cover_1308607

def state_1308639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 47)))
def hex_1308639 : String := "4442414007430544420507074043054406424107060705410740074305444205070742410740070507"
theorem cover_1308639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1308639)
  decide +kernel
#print axioms cover_1308639

def state_1308680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 47)))
def hex_1308680 : String := "4442414009434409420A070940060641094006064241400A43070A40434406420607064344420606420A41070606410740430706430706"
theorem cover_1308680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1308680)
  decide +kernel
#print axioms cover_1308680

def state_1308735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 47)))
def hex_1308735 : String := "40074307440907"
theorem cover_1308735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1308735)
  decide +kernel
#print axioms cover_1308735
end Mub6.Numerical.CircleFullD0.Forest
