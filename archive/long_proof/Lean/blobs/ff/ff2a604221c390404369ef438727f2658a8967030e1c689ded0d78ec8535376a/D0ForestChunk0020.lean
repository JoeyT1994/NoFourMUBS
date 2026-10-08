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
def state_942287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_942287 : String := "424443400A41420A0A0A0A43400641054205060544434006414408060A0A4306400741430605430705"
theorem cover_942287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_942287)
  decide +kernel
#print axioms cover_942287

def state_942328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_942328 : String := "42440A4341420A400A440A430641420A060A0A0A440A4341400742440A07074007420A0741400A42440A43414007420A070A0A440A070A"
theorem cover_942328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_942328)
  decide +kernel
#print axioms cover_942328

def state_942390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 24)))
def hex_942390 : String := "0A"
theorem cover_942390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_942390)
  decide +kernel
#print axioms cover_942390

def state_942394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 48 else (if j.val < 4 then 16 else 25)))
def hex_942394 : String := "40440A414342094009440809090A4407410707"
theorem cover_942394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942394 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_942394)
  decide +kernel
#print axioms cover_942394

def state_942414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 25)))
def hex_942414 : String := "4408414342400A440841434209080843420A0808400844084108084240084407094008080A"
theorem cover_942414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_942414)
  decide +kernel
#print axioms cover_942414

def state_942452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 50)))
def hex_942452 : String := "4143420708070A"
theorem cover_942452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942452 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_942452)
  decide +kernel
#print axioms cover_942452

def state_942459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 51)))
def hex_942459 : String := "4143424044074107070740440841434207400807074342074008050707420740440707074342404405410705054044054143050705054207400A06"
theorem cover_942459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_942459)
  decide +kernel
#print axioms cover_942459

def state_942518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 17 else 25)))
def hex_942518 : String := "42400A07400A4406410707"
theorem cover_942518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_942518)
  decide +kernel
#print axioms cover_942518

def state_942529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 25)))
def hex_942529 : String := "0A"
theorem cover_942529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_942529)
  decide +kernel
#print axioms cover_942529

def state_942531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 24)))
def hex_942531 : String := "4143080808"
theorem cover_942531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_942531)
  decide +kernel
#print axioms cover_942531
end Mub6.Numerical.CircleFullD0.Forest
