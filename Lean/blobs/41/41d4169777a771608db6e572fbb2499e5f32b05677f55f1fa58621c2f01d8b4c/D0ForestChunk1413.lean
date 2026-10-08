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
def state_1639861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 9)))
def hex_1639861 : String := "444340414244060606060540060943404105050540414406424305060606410505"
theorem cover_1639861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1639861)
  decide +kernel
#print axioms cover_1639861

def state_1639894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
def hex_1639894 : String := "424443050905440605"
theorem cover_1639894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639894 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1639894)
  decide +kernel
#print axioms cover_1639894

def state_1639903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
def hex_1639903 : String := "4406434041070641050540064144064243400605060606"
theorem cover_1639903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1639903)
  decide +kernel
#print axioms cover_1639903

def state_1639926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
def hex_1639926 : String := "424440060940414342440641434244060A060606060606414342440940414342090909434209060609440640064109060943424406400605060606"
theorem cover_1639926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1639926)
  decide +kernel
#print axioms cover_1639926

def state_1639989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
def hex_1639989 : String := "4041430A094342090A090A"
theorem cover_1639989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1639989)
  decide +kernel
#print axioms cover_1639989

def state_1640002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
def hex_1640002 : String := "434206440A0642440A0644410A40430A0809414043060A064043440A0644094206410A40430A09060A"
theorem cover_1640002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1640002)
  decide +kernel
#print axioms cover_1640002

def state_1640043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
def hex_1640043 : String := "434205054244094041430509050544094041434442050A05440942094109094305094143050905"
theorem cover_1640043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1640043)
  decide +kernel
#print axioms cover_1640043

def state_1640082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
def hex_1640082 : String := "4143050A05"
theorem cover_1640082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1640082)
  decide +kernel
#print axioms cover_1640082

def state_1640088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
def hex_1640088 : String := "404143420A080843424407430540070507420909410809"
theorem cover_1640088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1640088)
  decide +kernel
#print axioms cover_1640088
end Mub6.Numerical.CircleFullD0.Forest
