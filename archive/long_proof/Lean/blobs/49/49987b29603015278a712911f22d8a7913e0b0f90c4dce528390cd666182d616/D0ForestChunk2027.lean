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
def state_2566990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_2566990 : String := "414405404305050544404305050540434208084241440540430842070505440740070A4144054006054440060540434207060643050A430505"
theorem cover_2566990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2566990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2566990)
  decide +kernel
#print axioms cover_2566990

def state_2567047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 46)))
def hex_2567047 : String := "424144054043420505424105070505440A404342074144050A07070A41440540060544400605404342414405400605070606430A0A"
theorem cover_2567047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2567047)
  decide +kernel
#print axioms cover_2567047

def state_2567100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2567100 : String := "430505"
theorem cover_2567100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2567100)
  decide +kernel
#print axioms cover_2567100

def state_2567107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 47)))
def hex_2567107 : String := "44404308424144054008054440430842070705404308420808084144050844404308424105070805400808430842050540430842E2084306420608"
theorem cover_2567107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_2567107)
  decide +kernel
#print axioms cover_2567107

def state_2567168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
def hex_2567168 : String := "4342060842414440070A404306070644070641444043080743080A4043084241080741084407084308420A084440070A40434206070743060A"
theorem cover_2567168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2567168)
  decide +kernel
#print axioms cover_2567168

def state_2567225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 94)))
def hex_2567225 : String := "43064206410A0A"
theorem cover_2567225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2567225)
  decide +kernel
#print axioms cover_2567225
end Mub6.Numerical.CircleFullD0.Forest
