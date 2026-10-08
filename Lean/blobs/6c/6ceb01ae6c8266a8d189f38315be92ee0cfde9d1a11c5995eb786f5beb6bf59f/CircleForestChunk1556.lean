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
def state_2246927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 94 else 97)))
def hex_2246927 : String := "40434441420A40064405090A41090A444142400609064240070A4008430A440841420906084109420940430A44080543090943440A09444109420A0A09"
theorem cover_2246927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2246927)
  decide +kernel
#print axioms cover_2246927

def state_2246990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 96)))
def hex_2246990 : String := "4240434406090643444106CF09444106CF09400607"
theorem cover_2246990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2246990)
  decide +kernel
#print axioms cover_2246990

def state_2247011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 96)))
def hex_2247011 : String := "4240434441420706074142074006CF07444106074142050605CF404344410608410642400608064406410608CF"
theorem cover_2247011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2247011)
  decide +kernel
#print axioms cover_2247011

def state_2247057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 38 else (if j.val < 4 then 95 else 97)))
def hex_2247057 : String := "09"
theorem cover_2247057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2247057)
  decide +kernel
#print axioms cover_2247057

def state_2247059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 76 else (if j.val < 4 then 95 else 97)))
def hex_2247059 : String := "4043444109050505430944410942050905"
theorem cover_2247059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2247059)
  decide +kernel
#print axioms cover_2247059

def state_2247077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 95 else 97)))
def hex_2247077 : String := "434441424006090642400543444142070607410505440805084109420540054344090505444106420506410505"
theorem cover_2247077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2247077)
  decide +kernel
#print axioms cover_2247077

def state_2247123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 190 else 97)))
def hex_2247123 : String := "4441094240434441090A094441094205080943094441090A09404344414240060806084109084408410908434441070A09444107080909"
theorem cover_2247123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2247123)
  decide +kernel
#print axioms cover_2247123
end Mub6.Numerical.CircleFullD0.Forest
