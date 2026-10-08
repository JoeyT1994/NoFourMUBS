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
def state_2246688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
def hex_2246688 : String := "424006434441054209050944060906"
theorem cover_2246688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2246688)
  decide +kernel
#print axioms cover_2246688

def state_2246706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 48)))
def hex_2246706 : String := "44414206064207400644064341060706414209064207400743444106074142070607444106074142060607"
theorem cover_2246706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2246706)
  decide +kernel
#print axioms cover_2246706

def state_2246749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 48)))
def hex_2246749 : String := "4441064207064142060642054006434406410505440505"
theorem cover_2246749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2246749)
  decide +kernel
#print axioms cover_2246749

def state_2246775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 96)))
def hex_2246775 : String := "4240444341054240060505060944430541054209050940064405430507"
theorem cover_2246775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2246775)
  decide +kernel
#print axioms cover_2246775

def state_2246805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 76 else (if j.val < 4 then 94 else 96)))
def hex_2246805 : String := "4044430A4142074006440643060607430A414207400644430A410607090744430A41420A404405430541050A050A430A4142094044430A41090A09090A"
theorem cover_2246805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2246805)
  decide +kernel
#print axioms cover_2246805

def state_2246866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 94 else 96)))
def hex_2246866 : String := "40444341050A4106084341420A050A414206064240070A084443054105420A05430A414240444305410505090505420A0A"
theorem cover_2246866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2246866)
  decide +kernel
#print axioms cover_2246866

def state_2246916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 38 else (if j.val < 4 then 94 else 97)))
def hex_2246916 : String := "09"
theorem cover_2246916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2246916)
  decide +kernel
#print axioms cover_2246916

def state_2246918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 76 else (if j.val < 4 then 94 else 97)))
def hex_2246918 : String := "40430A444109070909"
theorem cover_2246918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2246918)
  decide +kernel
#print axioms cover_2246918
end Mub6.Numerical.CircleFullD0.Forest
