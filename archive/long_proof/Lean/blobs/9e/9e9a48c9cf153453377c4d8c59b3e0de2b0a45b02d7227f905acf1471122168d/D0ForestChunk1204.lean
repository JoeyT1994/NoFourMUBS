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
def state_1589365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
def hex_1589365 : String := "434244414007060741070544070742444140074342050742440705074007430507414007430505074441070707"
theorem cover_1589365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1589365)
  decide +kernel
#print axioms cover_1589365

def state_1589410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
def hex_1589410 : String := "4342054441060505424441430505050544414340424405050705404244090509084305404205070541430540070505"
theorem cover_1589410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1589410)
  decide +kernel
#print axioms cover_1589410

def state_1589457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
def hex_1589457 : String := "40434205074244410705050743054205440505"
theorem cover_1589457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589457 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1589457)
  decide +kernel
#print axioms cover_1589457

def state_1589477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 27 else 50)))
def hex_1589477 : String := "414043090943094409424109090840434409074409074306444241060609424143060943064007060A"
theorem cover_1589477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1589477)
  decide +kernel
#print axioms cover_1589477

def state_1589518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 27 else 51)))
def hex_1589518 : String := "41404307420707430A42444108430A40070841084305074408084007430A424441430740070543050705440A07"
theorem cover_1589518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1589518)
  decide +kernel
#print axioms cover_1589518

def state_1589563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
def hex_1589563 : String := "43414206080641424440410843064206080640410843050805084244060544404143060806064041430808430542050A05"
theorem cover_1589563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589563 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1589563)
  decide +kernel
#print axioms cover_1589563
end Mub6.Numerical.CircleFullD0.Forest
