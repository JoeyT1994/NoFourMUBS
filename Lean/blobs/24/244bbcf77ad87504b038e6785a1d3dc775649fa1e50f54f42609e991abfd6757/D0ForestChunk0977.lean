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
def state_1534958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 17)))
def hex_1534958 : String := "44400942414305444042414305444042410A060606050909064005054306440640090641430544060506404205054241050505"
theorem cover_1534958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 51) (hex := hex_1534958)
  decide +kernel
#print axioms cover_1534958

def state_1535011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 34)))
def hex_1535011 : String := "42414344400742070A4042070842410A074108090A074143090809"
theorem cover_1535011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535011 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1535011)
  decide +kernel
#print axioms cover_1535011

def state_1535039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 104 else (if j.val < 4 then 39 else 34)))
def hex_1535039 : String := "4143444042410A434406400706070A42410A4306060A4042410A43440A050A0A42410A43440A050A0A0A434440070640420709424143060A060644070A"
theorem cover_1535039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1535039)
  decide +kernel
#print axioms cover_1535039

def state_1535100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 105 else (if j.val < 4 then 39 else 34)))
def hex_1535100 : String := "4143440A0A0A43090A"
theorem cover_1535100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1535100)
  decide +kernel
#print axioms cover_1535100

def state_1535110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 35)))
def hex_1535110 : String := "424143444008424105430507050508430907410809"
theorem cover_1535110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1535110)
  decide +kernel
#print axioms cover_1535110

def state_1535131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 35)))
def hex_1535131 : String := "424143444042410543050A0542410543050A05050A43444042414305070709424143050A430844070A4143050A430606400505440A0A4143050A434409050A"
theorem cover_1535131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535131 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1535131)
  decide +kernel
#print axioms cover_1535131

def state_1535194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 17)))
def hex_1535194 : String := "4309444009410A064008410A09"
theorem cover_1535194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1535194)
  decide +kernel
#print axioms cover_1535194
end Mub6.Numerical.CircleFullD0.Forest
