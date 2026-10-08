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
def state_1583223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 54 else 51)))
def hex_1583223 : String := "42440A0A444043410A4208440A0A0A4341420A440A0A420A44400A0A400A050A4043410A420A440A0A0A43414205440A05050A"
theorem cover_1583223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1583223)
  decide +kernel
#print axioms cover_1583223

def state_1583274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 55 else 51)))
def hex_1583274 : String := "0A"
theorem cover_1583274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1583274)
  decide +kernel
#print axioms cover_1583274

def state_1583276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1583276 : String := "4043410942440540050905410509434109424409404309094309090941094244090A09"
theorem cover_1583276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1583276)
  decide +kernel
#print axioms cover_1583276

def state_1583312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1583312 : String := "4341064244404307064341424409060607064006430706444005090606"
theorem cover_1583312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1583312)
  decide +kernel
#print axioms cover_1583312

def state_1583343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
def hex_1583343 : String := "42444043090643090940064341084244404309060840060844080606440906"
theorem cover_1583343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583343 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1583343)
  decide +kernel
#print axioms cover_1583343

def state_1583377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
def hex_1583377 : String := "434142440940090909424409400743070744090741420A06420A09"
theorem cover_1583377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1583377)
  decide +kernel
#print axioms cover_1583377

def state_1583404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
def hex_1583404 : String := "434142440940430909430909094244400909404341094205070A43050A440940090941420A09420A4409400909"
theorem cover_1583404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1583404)
  decide +kernel
#print axioms cover_1583404

def state_1583450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 103)))
def hex_1583450 : String := "43414244400643410607060606424407070706"
theorem cover_1583450 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583450 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1583450)
  decide +kernel
#print axioms cover_1583450
end Mub6.Numerical.CircleFullD0.Forest
