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
def state_1463967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 23)))
def hex_1463967 : String := "4005414206444305080506"
theorem cover_1463967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1463967)
  decide +kernel
#print axioms cover_1463967

def state_1463978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 11)))
def hex_1463978 : String := "4440060909"
theorem cover_1463978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1463978)
  decide +kernel
#print axioms cover_1463978

def state_1463983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1463983 : String := "06"
theorem cover_1463983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1463983)
  decide +kernel
#print axioms cover_1463983

def state_1463985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
def hex_1463985 : String := "440841420740444307414207404443074142074044430741424044080707E142074044080507070707070707070742074044080507"
theorem cover_1463985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 21) (count := 53) (hex := hex_1463985)
  decide +kernel
#print axioms cover_1463985

def state_1464041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 10)))
def hex_1464041 : String := "4043080505"
theorem cover_1464041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1464041)
  decide +kernel
#print axioms cover_1464041

def state_1464049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 20)))
def hex_1464049 : String := "08"
theorem cover_1464049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1464049)
  decide +kernel
#print axioms cover_1464049

def state_1464051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 16) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
def hex_1464051 : String := "42404308050540434408414240430805054043440841424043080505E142084043080A08440541050943080542084043080908440509430805"
theorem cover_1464051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1464051)
  decide +kernel
#print axioms cover_1464051

def state_1464108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 17) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
def hex_1464108 : String := "42084043080908"
theorem cover_1464108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1464108)
  decide +kernel
#print axioms cover_1464108

def state_1464115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 10)))
def hex_1464115 : String := "440509"
theorem cover_1464115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1464115)
  decide +kernel
#print axioms cover_1464115

def state_1464118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 10)))
def hex_1464118 : String := "430805"
theorem cover_1464118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1464118)
  decide +kernel
#print axioms cover_1464118

def state_1464121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_1464121 : String := "42084043080908"
theorem cover_1464121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1464121)
  decide +kernel
#print axioms cover_1464121

def state_1464130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
def hex_1464130 : String := "09"
theorem cover_1464130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1464130)
  decide +kernel
#print axioms cover_1464130

def state_1464136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 16) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 22)))
def hex_1464136 : String := "404344090709430709"
theorem cover_1464136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1464136)
  decide +kernel
#print axioms cover_1464136

def state_1464150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 32) else (if j.val < 3 then 62 else (if j.val < 4 then 44 else 44)))
def hex_1464150 : String := "4043444206414006430709060709430709"
theorem cover_1464150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1464150)
  decide +kernel
#print axioms cover_1464150

def state_1464169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 32) else (if j.val < 3 then 63 else (if j.val < 4 then 88 else 44)))
def hex_1464169 : String := "444142404344060644060643440807440509E142400643070940434406064406064344080744090941424440430606070744E107420744404305060707"
theorem cover_1464169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 61) (hex := hex_1464169)
  decide +kernel
#print axioms cover_1464169
end Mub6.Numerical.CircleFullD0.Forest
