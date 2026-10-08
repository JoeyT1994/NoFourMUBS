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
def state_977270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 88) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
def hex_977270 : String := "43444205404143070543070741434442054041080741084307080505434442400741430505070707440A0505444205400A41050505"
theorem cover_977270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977270 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_977270)
  decide +kernel
#print axioms cover_977270

def state_977323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 89) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
def hex_977323 : String := "43444240074143440605050640074143070A0707440A05"
theorem cover_977323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_977323)
  decide +kernel
#print axioms cover_977323

def state_977347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
def hex_977347 : String := "434442054041434442054041430805430908090505434442404143090506060942054007094406054143440905054309060544420540050505"
theorem cover_977347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_977347)
  decide +kernel
#print axioms cover_977347

def state_977404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 61 else (if j.val < 4 then 43 else 57)))
def hex_977404 : String := "43444206404143440607060606420540410507410506440605"
theorem cover_977404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_977404)
  decide +kernel
#print axioms cover_977404

def state_977429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
def hex_977429 : String := "434442404143090A090609424041430707074143440907440606430706400741430744090707440A42400A06400A414344064205070606"
theorem cover_977429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977429 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_977429)
  decide +kernel
#print axioms cover_977429

def state_977485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_977485 : String := "414344424007414305440507050507440A4240074143070A074007414306070743070A"
theorem cover_977485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_977485)
  decide +kernel
#print axioms cover_977485
end Mub6.Numerical.CircleFullD0.Forest
