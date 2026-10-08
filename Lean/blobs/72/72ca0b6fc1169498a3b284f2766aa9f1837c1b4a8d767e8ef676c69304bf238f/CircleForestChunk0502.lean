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
def state_281945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 47)))
def hex_281945 : String := "4244054043410A424405084440050540430A080A41084208440508430A0544074043410742440740D507070707"
theorem cover_281945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_281945)
  decide +kernel
#print axioms cover_281945

def state_281991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 47)))
def hex_281991 : String := "4209444041430805050540414342090642440940D509440740D50609410A05"
theorem cover_281991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_281991)
  decide +kernel
#print axioms cover_281991

def state_282022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 47)))
def hex_282022 : String := "42440540414342054405400905050505440540414342440540D505440540D505050505"
theorem cover_282022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_282022)
  decide +kernel
#print axioms cover_282022

def state_282057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
def hex_282057 : String := "4405410705"
theorem cover_282057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_282057)
  decide +kernel
#print axioms cover_282057

def state_282062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 23)))
def hex_282062 : String := "424044054108050540440541434244050807050505"
theorem cover_282062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_282062)
  decide +kernel
#print axioms cover_282062

def state_282083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
def hex_282083 : String := "4342094044054309050505"
theorem cover_282083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_282083)
  decide +kernel
#print axioms cover_282083

def state_282094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 11)))
def hex_282094 : String := "40440541060A05"
theorem cover_282094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_282094)
  decide +kernel
#print axioms cover_282094

def state_282104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
def hex_282104 : String := "414243080707420A08"
theorem cover_282104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_282104)
  decide +kernel
#print axioms cover_282104

def state_282117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 46)))
def hex_282117 : String := "40414308420A0708410708"
theorem cover_282117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_282117)
  decide +kernel
#print axioms cover_282117

def state_282129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 47)))
def hex_282129 : String := "414342440805084244400A434107080A09094342440840050808420A0A"
theorem cover_282129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_282129)
  decide +kernel
#print axioms cover_282129

def state_282159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 47)))
def hex_282159 : String := "434244074041054305424408050541074308070742440740090707"
theorem cover_282159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_282159)
  decide +kernel
#print axioms cover_282159

def state_282187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 47)))
def hex_282187 : String := "42440840080808"
theorem cover_282187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_282187)
  decide +kernel
#print axioms cover_282187

def state_282196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 94)))
def hex_282196 : String := "400A410708"
theorem cover_282196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_282196)
  decide +kernel
#print axioms cover_282196
end Mub6.Numerical.CircleFullPrototype.Forest
