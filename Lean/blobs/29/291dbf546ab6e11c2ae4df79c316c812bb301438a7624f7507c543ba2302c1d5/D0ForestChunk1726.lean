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
def state_2287422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 49 else 23)))
def hex_2287422 : String := "44414042080A08400742074344410807410840070644410807410840070841400A08404205440705420844430841084005084308410505"
theorem cover_2287422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2287422)
  decide +kernel
#print axioms cover_2287422

def state_2287478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_2287478 : String := "40074241430707074143440A0A0A43440740074207434407410A070A44070A"
theorem cover_2287478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2287478)
  decide +kernel
#print axioms cover_2287478

def state_2287509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
def hex_2287509 : String := "4042070A424441434007080A0741430A050544410A43400742074443410A070A43410A070A0A410A43400542054443410A05050505"
theorem cover_2287509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287509 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2287509)
  decide +kernel
#print axioms cover_2287509

def state_2287563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 11)))
def hex_2287563 : String := "4344400A05400A4241074344400A05070A070A"
theorem cover_2287563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287563 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2287563)
  decide +kernel
#print axioms cover_2287563

def state_2287584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 22)))
def hex_2287584 : String := "4042434144050A0941060909424341054405400905414405400A42430505054409400942434405094409410A09094305410509"
theorem cover_2287584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2287584)
  decide +kernel
#print axioms cover_2287584

def state_2287639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 46)))
def hex_2287639 : String := "410A40074207430944090A"
theorem cover_2287639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2287639)
  decide +kernel
#print axioms cover_2287639
end Mub6.Numerical.CircleFullD0.Forest
