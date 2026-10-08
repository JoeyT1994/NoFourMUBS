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
def state_1504917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
def hex_1504917 : String := "42444008410808084440410A430A0841430A42080A43884208444009410A4309080A0A"
theorem cover_1504917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_1504917)
  decide +kernel
#print axioms cover_1504917

def state_1504953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
def hex_1504953 : String := "4244404143440642080544420806084344064240060706440642070688404143050843420705088844400688400588"
theorem cover_1504953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1504953)
  decide +kernel
#print axioms cover_1504953

def state_1505001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 60)))
def hex_1505001 : String := "4440084143880843880808"
theorem cover_1505001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1505001)
  decide +kernel
#print axioms cover_1505001

def state_1505012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 60)))
def hex_1505012 : String := "444041434209060809414388424440084108080844094008410A09438842440908094041084342080508414388084388420844400841080908"
theorem cover_1505012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1505012)
  decide +kernel
#print axioms cover_1505012

def state_1505069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1505069 : String := "404108430508414305084342444005410543050805054208444005410543050805"
theorem cover_1505069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1505069)
  decide +kernel
#print axioms cover_1505069

def state_1505102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 30)))
def hex_1505102 : String := "4208444008410843420844400841084342080908080808"
theorem cover_1505102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505102 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1505102)
  decide +kernel
#print axioms cover_1505102

def state_1505125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 31)))
def hex_1505125 : String := "400841430A064342080508"
theorem cover_1505125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505125 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1505125)
  decide +kernel
#print axioms cover_1505125

def state_1505136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 15)))
def hex_1505136 : String := "08"
theorem cover_1505136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1505136)
  decide +kernel
#print axioms cover_1505136

def state_1505140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1505140 : String := "410A42430A4409080A"
theorem cover_1505140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505140 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1505140)
  decide +kernel
#print axioms cover_1505140

def state_1505150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1505150 : String := "42430A44400A0A0A0A"
theorem cover_1505150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1505150)
  decide +kernel
#print axioms cover_1505150
end Mub6.Numerical.CircleFullD0.Forest
