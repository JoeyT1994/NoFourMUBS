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
def state_1465895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_1465895 : String := "420643064144400542064306414440054206430641444005424306414440064206E6060643414440064306E60606E6050505050505"
theorem cover_1465895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 53) (hex := hex_1465895)
  decide +kernel
#print axioms cover_1465895

def state_1465950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_1465950 : String := "424340410944084206090840410508054340410544050905404105440542434041054405420843050505404105440542080505434041054405430905050505"
theorem cover_1465950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_1465950)
  decide +kernel
#print axioms cover_1465950

def state_1466014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
def hex_1466014 : String := "43094044410742074309070909"
theorem cover_1466014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1466014)
  decide +kernel
#print axioms cover_1466014

def state_1466028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_1466028 : String := "09"
theorem cover_1466028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1466028)
  decide +kernel
#print axioms cover_1466028

def state_1466032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 22)))
def hex_1466032 : String := "09"
theorem cover_1466032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1466032)
  decide +kernel
#print axioms cover_1466032

def state_1466034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 15 else 22)))
def hex_1466034 : String := "43094044410742074309070909"
theorem cover_1466034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1466034)
  decide +kernel
#print axioms cover_1466034

def state_1466047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 15 else 22)))
def hex_1466047 : String := "43094044410942430940444105424309074309400A07090943094044410542430940444105420AE60A4405074309E609090909"
theorem cover_1466047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 51) (hex := hex_1466047)
  decide +kernel
#print axioms cover_1466047

def state_1466098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 23)))
def hex_1466098 : String := "09"
theorem cover_1466098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1466098)
  decide +kernel
#print axioms cover_1466098

def state_1466099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 11)))
def hex_1466099 : String := "09"
theorem cover_1466099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1466099)
  decide +kernel
#print axioms cover_1466099

def state_1466102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
def hex_1466102 : String := "08"
theorem cover_1466102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1466102)
  decide +kernel
#print axioms cover_1466102

def state_1466104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 10)))
def hex_1466104 : String := "40414408430A42080A0808"
theorem cover_1466104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1466104)
  decide +kernel
#print axioms cover_1466104
end Mub6.Numerical.CircleFullD0.Forest
