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
def state_1310446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 48)))
def hex_1310446 : String := "4344414206080641424008430806080844064142060606"
theorem cover_1310446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1310446)
  decide +kernel
#print axioms cover_1310446

def state_1310469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 48)))
def hex_1310469 : String := "4344414240060540060606414240430506054008430544064142050605420608440641420640060606"
theorem cover_1310469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1310469)
  decide +kernel
#print axioms cover_1310469

def state_1310512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 49)))
def hex_1310512 : String := "404344420A41070A0A0A4344420A410A0A0A0A"
theorem cover_1310512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1310512)
  decide +kernel
#print axioms cover_1310512

def state_1310531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
def hex_1310531 : String := "4043074441074240050A0507434441074240074305444107050507074441420A0742400A0A400743074409074107420A07"
theorem cover_1310531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1310531)
  decide +kernel
#print axioms cover_1310531

def state_1310581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 49)))
def hex_1310581 : String := "4043444142094008430906090944410A06410A06430544410A06410A06"
theorem cover_1310581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1310581)
  decide +kernel
#print axioms cover_1310581

def state_1310611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
def hex_1310611 : String := "4308444142400506080608"
theorem cover_1310611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1310611)
  decide +kernel
#print axioms cover_1310611

def state_1310623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 49)))
def hex_1310623 : String := "444142404305444142060606080540074305444107050542050841424008050708"
theorem cover_1310623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1310623)
  decide +kernel
#print axioms cover_1310623
end Mub6.Numerical.CircleFullD0.Forest
