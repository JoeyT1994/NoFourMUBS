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
def state_50983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
def hex_50983 : String := "40420844430A080842444341400A0505414008444205430540080505400805084443410A0941400A42440A080A400842440505090A"
theorem cover_50983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_50983)
  decide +kernel
#print axioms cover_50983

def state_51036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_51036 : String := "43404205444143050A0505054042084441430A08430A07084205444143054008050505"
theorem cover_51036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_51036)
  decide +kernel
#print axioms cover_51036

def state_51071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_51071 : String := "4309444142430944400709090942430944074007090941424309400A44090A0642430940440A0A44090A430909"
theorem cover_51071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_51071)
  decide +kernel
#print axioms cover_51071

def state_51119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_51119 : String := "4408400705"
theorem cover_51119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_51119)
  decide +kernel
#print axioms cover_51119

def state_51127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_51127 : String := "08"
theorem cover_51127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_51127)
  decide +kernel
#print axioms cover_51127

def state_51129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_51129 : String := "4108420808"
theorem cover_51129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_51129)
  decide +kernel
#print axioms cover_51129

def state_51135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_51135 : String := "42430740080808"
theorem cover_51135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_51135)
  decide +kernel
#print axioms cover_51135

def state_51143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 13)))
def hex_51143 : String := "4340440841070505404408414243074107400705430741074044080707420543054140440807050508"
theorem cover_51143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_51143)
  decide +kernel
#print axioms cover_51143

def state_51184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 13)))
def hex_51184 : String := "43084044410809414243074107420808064243094142404408070809090908"
theorem cover_51184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_51184)
  decide +kernel
#print axioms cover_51184

def state_51215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_51215 : String := "43084408410808"
theorem cover_51215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_51215)
  decide +kernel
#print axioms cover_51215
end Mub6.Numerical.CircleFullPrototype.Forest
