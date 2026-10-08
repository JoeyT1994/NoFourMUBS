import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1004808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
def hex_1004808 : String := "444342410640440506060642414044430608060640440743420705070741064005064306424106404443064208064306080606"
theorem cover_1004808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1004808)
  decide +kernel
#print axioms cover_1004808

def state_1004862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
def hex_1004862 : String := "06"
theorem cover_1004862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1004862)
  decide +kernel
#print axioms cover_1004862

def state_1004866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 90)))
def hex_1004866 : String := "41064240444341064240440807090641424007060642400A09404409070643074106424007440906074443064106090606"
theorem cover_1004866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1004866)
  decide +kernel
#print axioms cover_1004866

def state_1004916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 90)))
def hex_1004916 : String := "424044430708070606"
theorem cover_1004916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1004916)
  decide +kernel
#print axioms cover_1004916

def state_1004926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 90)))
def hex_1004926 : String := "4044434142400A440A05400706420A400A44090A0A4341070A0A444341064209064108420940090643410642050641054205400A06"
theorem cover_1004926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1004926)
  decide +kernel
#print axioms cover_1004926

def state_1004979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 90)))
def hex_1004979 : String := "404443410642400706064107420A40070643060706"
theorem cover_1004979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1004979)
  decide +kernel
#print axioms cover_1004979

def state_1005000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 91)))
def hex_1005000 : String := "43410642400706064107424044430707074443060505400706"
theorem cover_1005000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1005000)
  decide +kernel
#print axioms cover_1005000

def state_1005025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 45)))
def hex_1005025 : String := "444306410642404443060806060606"
theorem cover_1005025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1005025)
  decide +kernel
#print axioms cover_1005025

def state_1005040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 45)))
def hex_1005040 : String := "06"
theorem cover_1005040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1005040)
  decide +kernel
#print axioms cover_1005040
end Mub6.Numerical.CircleFullD0.Forest
