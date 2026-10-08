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
def state_1490566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 56)))
def hex_1490566 : String := "414043420505050505"
theorem cover_1490566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1490566)
  decide +kernel
#print axioms cover_1490566

def state_1490575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 57)))
def hex_1490575 : String := "4140434442094109404306050542094109400A094442054140080505080940434405420541404306084309050505434405420541050505"
theorem cover_1490575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1490575)
  decide +kernel
#print axioms cover_1490575

def state_1490631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
def hex_1490631 : String := "434244410840074307070844410A400A430A424407070A0A42084441080808"
theorem cover_1490631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490631 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1490631)
  decide +kernel
#print axioms cover_1490631

def state_1490663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
def hex_1490663 : String := "4209444109404342090A424441094007090944410940064309090A09410909"
theorem cover_1490663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1490663)
  decide +kernel
#print axioms cover_1490663

def state_1490694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 29)))
def hex_1490694 : String := "424441084007090844414043090809404342444107070744414008094043440607074344420505094405074108400709084309420944410905094109400809"
theorem cover_1490694 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490694 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1490694)
  decide +kernel
#print axioms cover_1490694

def state_1490758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 14)))
def hex_1490758 : String := "444043410505050540430707434142074407074207440507410707"
theorem cover_1490758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1490758)
  decide +kernel
#print axioms cover_1490758
end Mub6.Numerical.CircleFullD0.Forest
