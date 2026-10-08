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
def state_1488482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 56)))
def hex_1488482 : String := "424043410A4442400A430A4108050A0A414442080A0844420840080A08434109444209400A07094144420640070606444205400707420606400A430A410707"
theorem cover_1488482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1488482)
  decide +kernel
#print axioms cover_1488482

def state_1488545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
def hex_1488545 : String := "42400A060A"
theorem cover_1488545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1488545)
  decide +kernel
#print axioms cover_1488545

def state_1488553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 39) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 56)))
def hex_1488553 : String := "4341444205400A430A4107054240084309080A44054205400A430A0A41444205050844054205400805"
theorem cover_1488553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1488553)
  decide +kernel
#print axioms cover_1488553

def state_1488594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 39) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 56)))
def hex_1488594 : String := "434144420540430707074209400A0944054205404344050A44050A430905414405420540430A0843090605"
theorem cover_1488594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1488594)
  decide +kernel
#print axioms cover_1488594

def state_1488637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 56)))
def hex_1488637 : String := "4043410A44060A410A44070A43410707410707"
theorem cover_1488637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_1488637)
  decide +kernel
#print axioms cover_1488637

def state_1488656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 57)))
def hex_1488656 : String := "4240430A08434441094209400A0909444106420540080606400A430A0A"
theorem cover_1488656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1488656)
  decide +kernel
#print axioms cover_1488656

def state_1488686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 28)))
def hex_1488686 : String := "4442400843410644420507060640430A410707434107070742060A"
theorem cover_1488686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1488686)
  decide +kernel
#print axioms cover_1488686
end Mub6.Numerical.CircleFullD0.Forest
