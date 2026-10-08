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
def state_2255749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 90 else 53)))
def hex_2255749 : String := "4142440A0744400A430A41060A4007430A4142094406090742070A"
theorem cover_2255749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2255749)
  decide +kernel
#print axioms cover_2255749

def state_2255778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 84 else (if j.val < 4 then 91 else 53)))
def hex_2255778 : String := "44400743410907410909400709"
theorem cover_2255778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2255778)
  decide +kernel
#print axioms cover_2255778

def state_2255792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 91 else 106)))
def hex_2255792 : String := "4043410607414244064006090642070A434142440609060A414244060906420A44060A"
theorem cover_2255792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2255792)
  decide +kernel
#print axioms cover_2255792

def state_2255827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 91 else 107)))
def hex_2255827 : String := "404341420744060707414207444006430641060740070907434142094440430609090942070A41420944404309090909420944400A0A400709"
theorem cover_2255827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2255827)
  decide +kernel
#print axioms cover_2255827

def state_2255884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
def hex_2255884 : String := "42074440070A400743070A"
theorem cover_2255884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2255884)
  decide +kernel
#print axioms cover_2255884

def state_2255896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 52)))
def hex_2255896 : String := "06"
theorem cover_2255896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2255896)
  decide +kernel
#print axioms cover_2255896

def state_2255898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 53)))
def hex_2255898 : String := "434106420706414244064007434106074106070608"
theorem cover_2255898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2255898)
  decide +kernel
#print axioms cover_2255898

def state_2255920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 53)))
def hex_2255920 : String := "4142440640430641060A43054106420A050542440A0A44054006430508"
theorem cover_2255920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2255920)
  decide +kernel
#print axioms cover_2255920

def state_2255952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 106)))
def hex_2255952 : String := "06"
theorem cover_2255952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2255952)
  decide +kernel
#print axioms cover_2255952

def state_2255954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 70 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
def hex_2255954 : String := "4341064207064142440640430641060743410642070641064244060506064244080708"
theorem cover_2255954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_2255954)
  decide +kernel
#print axioms cover_2255954
end Mub6.Numerical.CircleFullD0.Forest
