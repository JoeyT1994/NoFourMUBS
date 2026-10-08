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
def state_1000561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 220) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 177)))
def hex_1000561 : String := "42400A44434105090A43410505054044430A0A0A44434142400A44C6430705400744C607420A400A0941420A4007440A070A434107420A0741070A"
theorem cover_1000561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1000561)
  decide +kernel
#print axioms cover_1000561

def state_1000620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 221) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 177)))
def hex_1000620 : String := "420A400A44430909430A0A"
theorem cover_1000620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1000620)
  decide +kernel
#print axioms cover_1000620

def state_1000631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
def hex_1000631 : String := "42064006444308064309410A06"
theorem cover_1000631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1000631)
  decide +kernel
#print axioms cover_1000631

def state_1000644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 88)))
def hex_1000644 : String := "41420640064443C60A43410A0A0A06"
theorem cover_1000644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1000644)
  decide +kernel
#print axioms cover_1000644

def state_1000662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 89)))
def hex_1000662 : String := "40440A0A4443410542054006050A05"
theorem cover_1000662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1000662)
  decide +kernel
#print axioms cover_1000662

def state_1000678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 89)))
def hex_1000678 : String := "444341070A0A07"
theorem cover_1000678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1000678)
  decide +kernel
#print axioms cover_1000678

def state_1000686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 178)))
def hex_1000686 : String := "434142400744430505050742400A44430909434105090A4044430707074443084107084307074142400A0540074443070707420A400A440A0A"
theorem cover_1000686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1000686)
  decide +kernel
#print axioms cover_1000686

def state_1000743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 179)))
def hex_1000743 : String := "434107424007050741070A"
theorem cover_1000743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1000743)
  decide +kernel
#print axioms cover_1000743

def state_1000754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 89)))
def hex_1000754 : String := "42400644060A400A44434142400609400808080A4341420A400744430809070A0A"
theorem cover_1000754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1000754)
  decide +kernel
#print axioms cover_1000754

def state_1000787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 55) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 89)))
def hex_1000787 : String := "41420A400A44430A0A0A0A"
theorem cover_1000787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1000787)
  decide +kernel
#print axioms cover_1000787
end Mub6.Numerical.CircleFullD0.Forest
