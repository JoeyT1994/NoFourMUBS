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
def state_963449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_963449 : String := "4243440A400A4142440A43400A41420A440A070A0A440A4307400741420A070A0A0A43440A400741424407070707440A400A41420A43070A0A"
theorem cover_963449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 57) (hex := hex_963449)
  decide +kernel
#print axioms cover_963449

def state_963506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 27)))
def hex_963506 : String := "400A4142434406050543440A05050A"
theorem cover_963506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_963506)
  decide +kernel
#print axioms cover_963506

def state_963522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 26)))
def hex_963522 : String := "43400A4144084305420805090A"
theorem cover_963522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_963522)
  decide +kernel
#print axioms cover_963522

def state_963537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_963537 : String := "07"
theorem cover_963537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_963537)
  decide +kernel
#print axioms cover_963537

def state_963539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_963539 : String := "43424440070907074244404143070A0741434244084007410907094244084008414308080844080743090A4007414307444240074107070707074440070907"
theorem cover_963539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963539 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_963539)
  decide +kernel
#print axioms cover_963539

def state_963602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_963602 : String := "43424409070742440A0707"
theorem cover_963602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_963602)
  decide +kernel
#print axioms cover_963602

def state_963614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_963614 : String := "4143420A070A0A"
theorem cover_963614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_963614)
  decide +kernel
#print axioms cover_963614

def state_963622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_963622 : String := "434244400A4143420A080A0A40410507414344420507050543440A07440A0544400A41434208080A0A0742440A05440A40074143420505050A"
theorem cover_963622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_963622)
  decide +kernel
#print axioms cover_963622

def state_963679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 27)))
def hex_963679 : String := "43420A440A070A"
theorem cover_963679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_963679)
  decide +kernel
#print axioms cover_963679
end Mub6.Numerical.CircleFullD0.Forest
