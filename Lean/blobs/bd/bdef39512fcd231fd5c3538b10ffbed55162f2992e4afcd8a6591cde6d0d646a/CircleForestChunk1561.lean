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
def state_2248045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 95 else 49)))
def hex_2248045 : String := "44414240434408050543444142090808410905444142050805054008080841420540054344410908050505"
theorem cover_2248045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2248045)
  decide +kernel
#print axioms cover_2248045

def state_2248088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
def hex_2248088 : String := "42074007430A08"
theorem cover_2248088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2248088)
  decide +kernel
#print axioms cover_2248088

def state_2248096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_2248096 : String := "4306440A06"
theorem cover_2248096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2248096)
  decide +kernel
#print axioms cover_2248096

def state_2248102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
def hex_2248102 : String := "0A"
theorem cover_2248102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2248102)
  decide +kernel
#print axioms cover_2248102

def state_2248107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 48)))
def hex_2248107 : String := "430A4441CF0A41404206430A4441424043064441050505064043440841070608070641420609060606"
theorem cover_2248107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 41) (hex := hex_2248107)
  decide +kernel
#print axioms cover_2248107

def state_2248148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 48)))
def hex_2248148 : String := "43444140420A0505094140420A07070A444140080708414042434441070841070A440841070807074008420607"
theorem cover_2248148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2248148)
  decide +kernel
#print axioms cover_2248148

def state_2248193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
def hex_2248193 : String := "420607"
theorem cover_2248193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2248193)
  decide +kernel
#print axioms cover_2248193

def state_2248196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
def hex_2248196 : String := "0A"
theorem cover_2248196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2248196)
  decide +kernel
#print axioms cover_2248196

def state_2248197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
def hex_2248197 : String := "41404243064441400906060643444140420A07070A410906444140424344410706094441074205060907074042060806410906420643060606"
theorem cover_2248197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_2248197)
  decide +kernel
#print axioms cover_2248197

def state_2248254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
def hex_2248254 : String := "0A"
theorem cover_2248254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2248254)
  decide +kernel
#print axioms cover_2248254
end Mub6.Numerical.CircleFullD0.Forest
