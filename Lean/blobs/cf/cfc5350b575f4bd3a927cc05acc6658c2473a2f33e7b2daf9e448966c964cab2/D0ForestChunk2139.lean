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
def state_2594031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
def hex_2594031 : String := "424340410644064243060606060606"
theorem cover_2594031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2594031)
  decide +kernel
#print axioms cover_2594031

def state_2594051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 18)))
def hex_2594051 : String := "06"
theorem cover_2594051 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594051 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2594051)
  decide +kernel
#print axioms cover_2594051

def state_2594056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 38)))
def hex_2594056 : String := "4106424340444106DC41420806DC06404406410608064340440641064306060606"
theorem cover_2594056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594056 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2594056)
  decide +kernel
#print axioms cover_2594056

def state_2594089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 39)))
def hex_2594089 : String := "414243400708084340440607060642434044410707070840070743404441434207060643420740050607074406074044060706"
theorem cover_2594089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2594089)
  decide +kernel
#print axioms cover_2594089

def state_2594140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
def hex_2594140 : String := "4406410608"
theorem cover_2594140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594140 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2594140)
  decide +kernel
#print axioms cover_2594140

def state_2594145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
def hex_2594145 : String := "40440641064208434005060506"
theorem cover_2594145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2594145)
  decide +kernel
#print axioms cover_2594145

def state_2594158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 19)))
def hex_2594158 : String := "43404406410643424044410505070640050642400506050606"
theorem cover_2594158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_2594158)
  decide +kernel
#print axioms cover_2594158

def state_2594188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
def hex_2594188 : String := "4406424340414406DC444243070606DC06404106440642060606434041064406090606"
theorem cover_2594188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2594188)
  decide +kernel
#print axioms cover_2594188

def state_2594223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
def hex_2594223 : String := "4442434007074041060A064307064243404144090A0A0940414442430A060642430A4005060A0A41060A43400A094041060A06"
theorem cover_2594223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2594223)
  decide +kernel
#print axioms cover_2594223

def state_2594274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
def hex_2594274 : String := "4106440609"
theorem cover_2594274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2594274)
  decide +kernel
#print axioms cover_2594274
end Mub6.Numerical.CircleFullD0.Forest
