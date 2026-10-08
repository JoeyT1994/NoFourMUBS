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
def state_1035150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 29)))
def hex_1035150 : String := "43440940070944404142430906070906400741084243080607"
theorem cover_1035150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1035150)
  decide +kernel
#print axioms cover_1035150

def state_1035177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 29)))
def hex_1035177 : String := "44094041424305440540414243054405050742050505090909"
theorem cover_1035177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 25) (hex := hex_1035177)
  decide +kernel
#print axioms cover_1035177

def state_1035202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 29)))
def hex_1035202 : String := "4440410606064041424344064041420A070A0606434409070642434406400A0606430906410606"
theorem cover_1035202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1035202)
  decide +kernel
#print axioms cover_1035202

def state_1035241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 29)))
def hex_1035241 : String := "43094409400709"
theorem cover_1035241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1035241)
  decide +kernel
#print axioms cover_1035241

def state_1035248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 14)))
def hex_1035248 : String := "44400A0640414243440A4140054205050A0A434441070A07440605420A0A41420643440640414206074206070606420643440640414206060A0606"
theorem cover_1035248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1035248)
  decide +kernel
#print axioms cover_1035248

def state_1035307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 14)))
def hex_1035307 : String := "434409400709444041434409070A0A414309060940074143444240070607074442060642060743094406420607"
theorem cover_1035307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1035307)
  decide +kernel
#print axioms cover_1035307

def state_1035352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1035352 : String := "424344094041424344084007090A09094142430944094041420A0909090909440A400A4142064309060A430944094041070909"
theorem cover_1035352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035352 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1035352)
  decide +kernel
#print axioms cover_1035352
end Mub6.Numerical.CircleFullD0.Forest
