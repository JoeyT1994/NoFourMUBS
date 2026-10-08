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
def state_2555818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_2555818 : String := "4144054205430705440906"
theorem cover_2555818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2555818)
  decide +kernel
#print axioms cover_2555818

def state_2555829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_2555829 : String := "43064041420644430A400A07060606"
theorem cover_2555829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2555829)
  decide +kernel
#print axioms cover_2555829

def state_2555844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_2555844 : String := "40414206080A06"
theorem cover_2555844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2555844)
  decide +kernel
#print axioms cover_2555844

def state_2555854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_2555854 : String := "414344420807080A43444208080844424144400A43080A0A444043080A4308424108444008080841084440080808400A08410A44400A43080A0A0A"
theorem cover_2555854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 59) (hex := hex_2555854)
  decide +kernel
#print axioms cover_2555854

def state_2555913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_2555913 : String := "4143440706444240444105070A05070A4308444240414443084244400805070708444306424108060806414407064443064206070640410708410707420608"
theorem cover_2555913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2555913)
  decide +kernel
#print axioms cover_2555913

def state_2555976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_2555976 : String := "400806"
theorem cover_2555976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2555976)
  decide +kernel
#print axioms cover_2555976

def state_2555982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_2555982 : String := "4442430A4440064105060A0A0A"
theorem cover_2555982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2555982)
  decide +kernel
#print axioms cover_2555982

def state_2555999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_2555999 : String := "44400A42430A44410A400642430A44060A060A430A0A0A"
theorem cover_2555999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 23) (hex := hex_2555999)
  decide +kernel
#print axioms cover_2555999

def state_2556024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
def hex_2556024 : String := "42430A410A44420505050A"
theorem cover_2556024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2556024)
  decide +kernel
#print axioms cover_2556024

def state_2556038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
def hex_2556038 : String := "44400A42430844410A400A4308420A0A0A43080A0A"
theorem cover_2556038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_2556038)
  decide +kernel
#print axioms cover_2556038

def state_2556061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
def hex_2556061 : String := "42430A0A0A"
theorem cover_2556061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2556061)
  decide +kernel
#print axioms cover_2556061

def state_2556068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 56 else 48)))
def hex_2556068 : String := "41444008080844404206080606"
theorem cover_2556068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2556068)
  decide +kernel
#print axioms cover_2556068
end Mub6.Numerical.CircleFullD0.Forest
