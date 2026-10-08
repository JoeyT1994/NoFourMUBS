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
def state_1492431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 29)))
def hex_1492431 : String := "414244430840060843404142440605060808404142440643400541050507064244064340050807064142440843084041070708080808424406430840060806"
theorem cover_1492431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1492431)
  decide +kernel
#print axioms cover_1492431

def state_1492496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 38 else (if j.val < 4 then 49 else 29)))
def hex_1492496 : String := "4440060A4043414207440640064341060607420706410707434142440A43400709074408430840410707080A414207440A40070A0A"
theorem cover_1492496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1492496)
  decide +kernel
#print axioms cover_1492496

def state_1492549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 29)))
def hex_1492549 : String := "44064006430841424408404308410707080808"
theorem cover_1492549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492549 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1492549)
  decide +kernel
#print axioms cover_1492549

def state_1492568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 29)))
def hex_1492568 : String := "420A06"
theorem cover_1492568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1492568)
  decide +kernel
#print axioms cover_1492568

def state_1492572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 14)))
def hex_1492572 : String := "440A40070A"
theorem cover_1492572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1492572)
  decide +kernel
#print axioms cover_1492572

def state_1492578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
def hex_1492578 : String := "40060A"
theorem cover_1492578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1492578)
  decide +kernel
#print axioms cover_1492578

def state_1492582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1492582 : String := "4143420706420744060709"
theorem cover_1492582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1492582)
  decide +kernel
#print axioms cover_1492582

def state_1492594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1492594 : String := "4342440A40070A4440060A404341420706064142070606434142440A40070A4406400643084108080A414207440A40070A0A420A440A404107070A"
theorem cover_1492594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1492594)
  decide +kernel
#print axioms cover_1492594

def state_1492653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1492653 : String := "43420A440640060A0A"
theorem cover_1492653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1492653)
  decide +kernel
#print axioms cover_1492653

def state_1492662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
def hex_1492662 : String := "43420A09420A440640090A"
theorem cover_1492662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1492662)
  decide +kernel
#print axioms cover_1492662
end Mub6.Numerical.CircleFullD0.Forest
