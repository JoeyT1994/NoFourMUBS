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
def state_1510848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 60)))
def hex_1510848 : String := "4440414388050A0A404143880843420A440A404107070A0A414388060A"
theorem cover_1510848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1510848)
  decide +kernel
#print axioms cover_1510848

def state_1510878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
def hex_1510878 : String := "4041438842440540090A440940094143090909434209064205094143884205440540414388050A0A43420A080A"
theorem cover_1510878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1510878)
  decide +kernel
#print axioms cover_1510878

def state_1510926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 121)))
def hex_1510926 : String := "88"
theorem cover_1510926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1510926)
  decide +kernel
#print axioms cover_1510926

def state_1510928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 166 else (if j.val < 4 then 211 else 121)))
def hex_1510928 : String := "444041438808094143884205440508430A0A40084108438808"
theorem cover_1510928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1510928)
  decide +kernel
#print axioms cover_1510928

def state_1510953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 121)))
def hex_1510953 : String := "444009414388424409400841090909430909404143880809414388420844400941430708094008410643050643884244090809"
theorem cover_1510953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1510953)
  decide +kernel
#print axioms cover_1510953

def state_1511006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 166 else (if j.val < 4 then 210 else 121)))
def hex_1511006 : String := "44400941434209090A09404143090909414342440A404188090A44400941090905420A4409400941880943420A090A"
theorem cover_1511006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1511006)
  decide +kernel
#print axioms cover_1511006

def state_1511053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 167 else (if j.val < 4 then 210 else 121)))
def hex_1511053 : String := "44400641090940094143424409050542090909"
theorem cover_1511053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1511053)
  decide +kernel
#print axioms cover_1511053

def state_1511072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 121)))
def hex_1511072 : String := "424440090A4041080941434208440940080A080A4409400941434209090909"
theorem cover_1511072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1511072)
  decide +kernel
#print axioms cover_1511072

def state_1511105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 121)))
def hex_1511105 : String := "88"
theorem cover_1511105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1511105)
  decide +kernel
#print axioms cover_1511105
end Mub6.Numerical.CircleFullD0.Forest
