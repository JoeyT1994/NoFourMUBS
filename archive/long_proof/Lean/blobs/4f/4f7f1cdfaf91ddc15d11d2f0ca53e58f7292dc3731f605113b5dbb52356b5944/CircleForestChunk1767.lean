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
def state_2297282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 93)))
def hex_2297282 : String := "4140054342054441400543060505050505"
theorem cover_2297282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2297282)
  decide +kernel
#print axioms cover_2297282

def state_2297299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
def hex_2297299 : String := "430605"
theorem cover_2297299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2297299)
  decide +kernel
#print axioms cover_2297299

def state_2297304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 46)))
def hex_2297304 : String := "06"
theorem cover_2297304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2297304)
  decide +kernel
#print axioms cover_2297304

def state_2297306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 46)))
def hex_2297306 : String := "444041430642064441404306420544070506064140050605060606"
theorem cover_2297306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_2297306)
  decide +kernel
#print axioms cover_2297306

def state_2297337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 106 else 92)))
def hex_2297337 : String := "42064441080606"
theorem cover_2297337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2297337)
  decide +kernel
#print axioms cover_2297337

def state_2297345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 70 else (if j.val < 4 then 107 else 92)))
def hex_2297345 : String := "44414043084244410805054441400A084005C4414005080508404306050641404306050606"
theorem cover_2297345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2297345)
  decide +kernel
#print axioms cover_2297345

def state_2297383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 107 else 184)))
def hex_2297383 : String := "4140434208444108400A084107400A064244410A400AC4410A050A4308C44043420644414043060A0606064244414005C4050544414005C44005C4054306C4"
theorem cover_2297383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2297383)
  decide +kernel
#print axioms cover_2297383

def state_2297446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 107 else 185)))
def hex_2297446 : String := "4140434244410806054441074005060742050A43064244C406074043060506"
theorem cover_2297446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2297446)
  decide +kernel
#print axioms cover_2297446

def state_2297477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
def hex_2297477 : String := "43064206444041430605050606"
theorem cover_2297477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2297477)
  decide +kernel
#print axioms cover_2297477

def state_2297490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
def hex_2297490 : String := "41430642064440410806060606"
theorem cover_2297490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2297490)
  decide +kernel
#print axioms cover_2297490

def state_2297503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 93)))
def hex_2297503 : String := "40414306424441400506050544414005430607400506050606"
theorem cover_2297503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2297503)
  decide +kernel
#print axioms cover_2297503

def state_2297528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
def hex_2297528 : String := "06"
theorem cover_2297528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2297528)
  decide +kernel
#print axioms cover_2297528
end Mub6.Numerical.CircleFullD0.Forest
