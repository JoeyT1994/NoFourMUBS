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
def state_1615945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 49)))
def hex_1615945 : String := "41440A0A4440424306414440070A0744400705054307410A4440070A070A400705"
theorem cover_1615945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1615945)
  decide +kernel
#print axioms cover_1615945

def state_1615979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 92) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 49)))
def hex_1615979 : String := "4440424344410A4042090709410A40070944410A09410A090A0A404207070A"
theorem cover_1615979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1615979)
  decide +kernel
#print axioms cover_1615979

def state_1616010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 49)))
def hex_1616010 : String := "444042434144404208070940070909094341440A07444007090741064409064209430A0940074209430A09"
theorem cover_1616010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1616010)
  decide +kernel
#print axioms cover_1616010

def state_1616053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 49)))
def hex_1616053 : String := "430A410A444042430706060A40060A"
theorem cover_1616053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1616053)
  decide +kernel
#print axioms cover_1616053

def state_1616068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_1616068 : String := "424306410A090A"
theorem cover_1616068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1616068)
  decide +kernel
#print axioms cover_1616068

def state_1616081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 96)))
def hex_1616081 : String := "4042430608434441404206430608064008064140420643064408410A080640420643060806444140080708414008090906"
theorem cover_1616081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1616081)
  decide +kernel
#print axioms cover_1616081

def state_1616132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 112 else (if j.val < 4 then 58 else 97)))
def hex_1616132 : String := "430609"
theorem cover_1616132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1616132)
  decide +kernel
#print axioms cover_1616132

def state_1616135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 113 else (if j.val < 4 then 58 else 97)))
def hex_1616135 : String := "434144404206430644410A400706070640070644404206430641440807080605414440420843440807080940424307070742090A444008094042080709"
theorem cover_1616135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1616135)
  decide +kernel
#print axioms cover_1616135

def state_1616196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_1616196 : String := "4206430609"
theorem cover_1616196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1616196)
  decide +kernel
#print axioms cover_1616196
end Mub6.Numerical.CircleFullD0.Forest
