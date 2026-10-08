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
def state_1327866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 46)))
def hex_1327866 : String := "414405400543050505"
theorem cover_1327866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1327866)
  decide +kernel
#print axioms cover_1327866

def state_1327876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 32) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
def hex_1327876 : String := "4440430942050943064241440540050605414406400906064043094205084342414406070606424144400543060508054144400806084406400806"
theorem cover_1327876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1327876)
  decide +kernel
#print axioms cover_1327876

def state_1327935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 33) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
def hex_1327935 : String := "444005064005430605"
theorem cover_1327935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1327935)
  decide +kernel
#print axioms cover_1327935

def state_1327944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 46)))
def hex_1327944 : String := "430642414440430605064043420506050605414406404306424144060706060606"
theorem cover_1327944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1327944)
  decide +kernel
#print axioms cover_1327944

def state_1327978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 47)))
def hex_1327978 : String := "43424144400A0707050A4241444005430505050541444043080843074241070541070840080744400543420506054005430705"
theorem cover_1327978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1327978)
  decide +kernel
#print axioms cover_1327978

def state_1328029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 47)))
def hex_1328029 : String := "4342410706064241444043070507070541074406400706"
theorem cover_1328029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1328029)
  decide +kernel
#print axioms cover_1328029

def state_1328052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 23)))
def hex_1328052 : String := "44404306050640430A054306420506"
theorem cover_1328052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1328052)
  decide +kernel
#print axioms cover_1328052

def state_1328067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
def hex_1328067 : String := "40440542050A44064205430605"
theorem cover_1328067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1328067)
  decide +kernel
#print axioms cover_1328067

def state_1328081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
def hex_1328081 : String := "05"
theorem cover_1328081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328081)
  decide +kernel
#print axioms cover_1328081

def state_1328084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
def hex_1328084 : String := "05"
theorem cover_1328084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1328084)
  decide +kernel
#print axioms cover_1328084
end Mub6.Numerical.CircleFullD0.Forest
