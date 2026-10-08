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
def state_277013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 36 else (if j.val < 4 then 115 else 35)))
def hex_277013 : String := "4244400A41070A400941094342D90942D909440A09"
theorem cover_277013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_277013)
  decide +kernel
#print axioms cover_277013

def state_277034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 17)))
def hex_277034 : String := "44400A41070809"
theorem cover_277034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_277034)
  decide +kernel
#print axioms cover_277034

def state_277041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 8)))
def hex_277041 : String := "440A4041050A414207054243440A400A4143420705074342440A400941070A0A0A0A0A"
theorem cover_277041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 35) (hex := hex_277041)
  decide +kernel
#print axioms cover_277041

def state_277076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 8)))
def hex_277076 : String := "43444005410508400541054243080905440A09"
theorem cover_277076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_277076)
  decide +kernel
#print axioms cover_277076

def state_277095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 8)))
def hex_277095 : String := "42434408414008430842440A41400A43424408414008430842D908080842440A41400A4342D90A0A0A0A080808440A410A0A43080A"
theorem cover_277095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 53) (hex := hex_277095)
  decide +kernel
#print axioms cover_277095

def state_277152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 16)))
def hex_277152 : String := "4041434207060743424406060642440740070707410606"
theorem cover_277152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_277152)
  decide +kernel
#print axioms cover_277152

def state_277177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
def hex_277177 : String := "434244064041050606064244074041054342070507410606440606"
theorem cover_277177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_277177)
  decide +kernel
#print axioms cover_277177

def state_277205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 17)))
def hex_277205 : String := "42444041060606404106060606"
theorem cover_277205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_277205)
  decide +kernel
#print axioms cover_277205

def state_277220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 34)))
def hex_277220 : String := "4041074342440740410606060642070741064306420506"
theorem cover_277220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_277220)
  decide +kernel
#print axioms cover_277220

def state_277245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_277245 : String := "434244400706404105060606424407400707440709"
theorem cover_277245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_277245)
  decide +kernel
#print axioms cover_277245
end Mub6.Numerical.CircleFullPrototype.Forest
