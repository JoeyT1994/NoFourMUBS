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
def state_766713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_766713 : String := "424043440905444142400743050707420907410A42050A430544414205430544070542050905404344070A44070A434409054441074209070A"
theorem cover_766713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_766713)
  decide +kernel
#print axioms cover_766713

def state_766770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
def hex_766770 : String := "42404306440906430544094105054043060643064409420906"
theorem cover_766770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_766770)
  decide +kernel
#print axioms cover_766770

def state_766796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_766796 : String := "410707"
theorem cover_766796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_766796)
  decide +kernel
#print axioms cover_766796

def state_766803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
def hex_766803 : String := "44074142430A070742434007444105050507430707"
theorem cover_766803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_766803)
  decide +kernel
#print axioms cover_766803

def state_766824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
def hex_766824 : String := "44414206074243440740410505050643070741424305060A424305404441060705054340444107070505400744064106420507"
theorem cover_766824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766824 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_766824)
  decide +kernel
#print axioms cover_766824

def state_766875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
def hex_766875 : String := "400706"
theorem cover_766875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_766875)
  decide +kernel
#print axioms cover_766875

def state_766878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
def hex_766878 : String := "43400744070A07"
theorem cover_766878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_766878)
  decide +kernel
#print axioms cover_766878

def state_766888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
def hex_766888 : String := "444107074142430808434006440706074208430607"
theorem cover_766888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_766888)
  decide +kernel
#print axioms cover_766888

def state_766910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 14)))
def hex_766910 : String := "41424309440740070A430907420909"
theorem cover_766910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_766910)
  decide +kernel
#print axioms cover_766910
end Mub6.Numerical.CircleFullPrototype.Forest
