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
def state_1316362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
def hex_1316362 : String := "424440430A0A0A4043070A0A4440434105420A054105090A40434105424440070507054105420A0543050A"
theorem cover_1316362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316362 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1316362)
  decide +kernel
#print axioms cover_1316362

def state_1316405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
def hex_1316405 : String := "42440A4043070A0A44404341420A0906090A4043414207444009430509404305090542074406400643060941420A09420A0943410A0A0A"
theorem cover_1316405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1316405)
  decide +kernel
#print axioms cover_1316405

def state_1316461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 49)))
def hex_1316461 : String := "410707"
theorem cover_1316461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1316461)
  decide +kernel
#print axioms cover_1316461

def state_1316465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 58) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 49)))
def hex_1316465 : String := "424044430706070640444341054207054105424440430706060605430541054206054443050606"
theorem cover_1316465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1316465)
  decide +kernel
#print axioms cover_1316465

def state_1316505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 59) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 49)))
def hex_1316505 : String := "400707"
theorem cover_1316505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1316505)
  decide +kernel
#print axioms cover_1316505

def state_1316509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 59) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 49)))
def hex_1316509 : String := "444341420744400705054207444007070741424440080A07444009430A094008430708424440080A07440940084307084307410808"
theorem cover_1316509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316509 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1316509)
  decide +kernel
#print axioms cover_1316509

def state_1316562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 59) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 49)))
def hex_1316562 : String := "4443410707410A0A430741064206400706"
theorem cover_1316562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1316562)
  decide +kernel
#print axioms cover_1316562

def state_1316579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
def hex_1316579 : String := "4443414207054207080A43074106420740440A4307060A"
theorem cover_1316579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1316579)
  decide +kernel
#print axioms cover_1316579
end Mub6.Numerical.CircleFullD0.Forest
