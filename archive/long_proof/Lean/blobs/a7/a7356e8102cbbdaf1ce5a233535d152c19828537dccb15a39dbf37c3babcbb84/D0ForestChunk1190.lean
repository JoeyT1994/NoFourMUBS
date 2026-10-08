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
def state_1586024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 26)))
def hex_1586024 : String := "4440434106420A06064341420A4440064341064205440A05060642440A0544404341420A0642054405050643050A4006050A400643410642050606"
theorem cover_1586024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1586024)
  decide +kernel
#print axioms cover_1586024

def state_1586083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 26)))
def hex_1586083 : String := "44400643410642444006434142444006050506420544070506064440064341060606060606"
theorem cover_1586083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 37) (hex := hex_1586083)
  decide +kernel
#print axioms cover_1586083

def state_1586120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 27)))
def hex_1586120 : String := "06"
theorem cover_1586120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1586120)
  decide +kernel
#print axioms cover_1586120

def state_1586121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
def hex_1586121 : String := "43444041064207064142434440060806060642434440070A074440064142440806064244070707064307060606"
theorem cover_1586121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1586121)
  decide +kernel
#print axioms cover_1586121

def state_1586170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
def hex_1586170 : String := "41424307080707"
theorem cover_1586170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1586170)
  decide +kernel
#print axioms cover_1586170

def state_1586178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
def hex_1586178 : String := "42434440414205070505054440414208070805404109050543444007414205070507444007414244430540070505074205074007410705"
theorem cover_1586178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1586178)
  decide +kernel
#print axioms cover_1586178

def state_1586233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
def hex_1586233 : String := "424305054307440705"
theorem cover_1586233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1586233)
  decide +kernel
#print axioms cover_1586233

def state_1586242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 27)))
def hex_1586242 : String := "40410707414243090943074006410605420507"
theorem cover_1586242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586242 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1586242)
  decide +kernel
#print axioms cover_1586242

def state_1586263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
def hex_1586263 : String := "414244080644070608"
theorem cover_1586263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1586263)
  decide +kernel
#print axioms cover_1586263
end Mub6.Numerical.CircleFullD0.Forest
