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
def state_2250805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
def hex_2250805 : String := "4142440640064306410642060606424406404341420706074142050605434142440640050906420744064007430705414205060506"
theorem cover_2250805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2250805)
  decide +kernel
#print axioms cover_2250805

def state_2250858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
def hex_2250858 : String := "414244064006430606064244060506"
theorem cover_2250858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2250858)
  decide +kernel
#print axioms cover_2250858

def state_2250875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
def hex_2250875 : String := "4244064043410642090641064209060906"
theorem cover_2250875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2250875)
  decide +kernel
#print axioms cover_2250875

def state_2250894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
def hex_2250894 : String := "4043064106440642060643410644064240430641064406094309090641064406424043410605050906"
theorem cover_2250894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2250894)
  decide +kernel
#print axioms cover_2250894

def state_2250937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
def hex_2250937 : String := "414244060944064006430609424440430705434109440505050544064043414205060705434142090642054406054142050605"
theorem cover_2250937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2250937)
  decide +kernel
#print axioms cover_2250937

def state_2250988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 93 else 53)))
def hex_2250988 : String := "41420944064043060509420544400643060505"
theorem cover_2250988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2250988)
  decide +kernel
#print axioms cover_2250988

def state_2251008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
def hex_2251008 : String := "41420944060942440909444043064106424406050643410642090641064209064043410942094406094109420544090509"
theorem cover_2251008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2251008)
  decide +kernel
#print axioms cover_2251008
end Mub6.Numerical.CircleFullD0.Forest
