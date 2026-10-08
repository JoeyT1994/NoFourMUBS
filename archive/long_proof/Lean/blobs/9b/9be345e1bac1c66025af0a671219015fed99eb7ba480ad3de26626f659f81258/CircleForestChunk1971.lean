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
def state_2553634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
def hex_2553634 : String := "44434244090A44400A090A42094409400A09430A424008060A"
theorem cover_2553634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_2553634)
  decide +kernel
#print axioms cover_2553634

def state_2553659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
def hex_2553659 : String := "444344400A410A42430A09430A0A0A4440410A4243444105090A4406410942090606410542094344050A4405400605400A410A42090A0A"
theorem cover_2553659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2553659)
  decide +kernel
#print axioms cover_2553659

def state_2553716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_2553716 : String := "434142440906444043090909400A0642064440090606414209440940430A410A420944090A09420944094043410A42060A41420944090A420944090506"
theorem cover_2553716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2553716)
  decide +kernel
#print axioms cover_2553716

def state_2553777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_2553777 : String := "43064142060A06"
theorem cover_2553777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2553777)
  decide +kernel
#print axioms cover_2553777

def state_2553789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_2553789 : String := "42430A44410A42090A0A430A0A"
theorem cover_2553789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2553789)
  decide +kernel
#print axioms cover_2553789

def state_2553803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 24)))
def hex_2553803 : String := "43444109090A4409410909"
theorem cover_2553803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2553803)
  decide +kernel
#print axioms cover_2553803

def state_2553814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
def hex_2553814 : String := "4344410A400A430A42090A0A4441400A43050540430A42090A4342094441054009050A4209444105094105400A05410A400A430A42090A"
theorem cover_2553814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2553814)
  decide +kernel
#print axioms cover_2553814

def state_2553869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_2553869 : String := "400A42430A0A0A"
theorem cover_2553869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2553869)
  decide +kernel
#print axioms cover_2553869
end Mub6.Numerical.CircleFullD0.Forest
