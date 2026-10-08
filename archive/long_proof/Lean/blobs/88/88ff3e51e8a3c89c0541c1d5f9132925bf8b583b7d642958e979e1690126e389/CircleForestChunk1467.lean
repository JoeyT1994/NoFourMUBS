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
def state_1652756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
def hex_1652756 : String := "444240070706420A4006410A0A"
theorem cover_1652756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1652756)
  decide +kernel
#print axioms cover_1652756

def state_1652769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
def hex_1652769 : String := "434442050505440A0A"
theorem cover_1652769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1652769)
  decide +kernel
#print axioms cover_1652769

def state_1652778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
def hex_1652778 : String := "4006414344424006414344060606060642400641430544060505060606"
theorem cover_1652778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1652778)
  decide +kernel
#print axioms cover_1652778

def state_1652807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
def hex_1652807 : String := "4244400A4143050A05400A0544400A4143080A0A400A4143050A05"
theorem cover_1652807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_1652807)
  decide +kernel
#print axioms cover_1652807

def state_1652838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
def hex_1652838 : String := "4041430644420641064043064206444106404306440606060606064305444205404143054244060544414043054409420541060505050505050506"
theorem cover_1652838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 59) (hex := hex_1652838)
  decide +kernel
#print axioms cover_1652838

def state_1652900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 10)))
def hex_1652900 : String := "444241064305404405050541090808"
theorem cover_1652900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1652900)
  decide +kernel
#print axioms cover_1652900

def state_1652918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
def hex_1652918 : String := "404344060644420A410A40430A050A4206410A404306440A080606"
theorem cover_1652918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1652918)
  decide +kernel
#print axioms cover_1652918

def state_1652947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 50 else 20)))
def hex_1652947 : String := "4442064143060A430540070508"
theorem cover_1652947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1652947)
  decide +kernel
#print axioms cover_1652947

def state_1652962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
def hex_1652962 : String := "41404306440A0A064043440A0644420A410A40430A0A0A420A410A40430AA00A0A"
theorem cover_1652962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1652962)
  decide +kernel
#print axioms cover_1652962

def state_1652996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1652996 : String := "4043440A0A44420A41050A420A410A404307050A0A"
theorem cover_1652996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1652996)
  decide +kernel
#print axioms cover_1652996
end Mub6.Numerical.CircleFullD0.Forest
