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
def state_949237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
def hex_949237 : String := "424109440A0941444340420906424109440A0941444306400642090606C7400942094105C74306054443400A420AC70A43400642410909C7400909"
theorem cover_949237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949237 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_949237)
  decide +kernel
#print axioms cover_949237

def state_949298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 54)))
def hex_949298 : String := "4443404209410944434009420741070A0909424107074144070744074340090707400942060709"
theorem cover_949298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949298 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_949298)
  decide +kernel
#print axioms cover_949298

def state_949337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 54)))
def hex_949337 : String := "444340420A41440A090A42410706414407434042074107070707440643400A0506400A064340094209410944434042094109094207410705090909"
theorem cover_949337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949337 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_949337)
  decide +kernel
#print axioms cover_949337

def state_949402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 108)))
def hex_949402 : String := "444340420941094443400642080608064241094407094144434042070607070944434042410707C70740420707074340064207C7094009420741090909"
theorem cover_949402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949402 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_949402)
  decide +kernel
#print axioms cover_949402
end Mub6.Numerical.CircleFullD0.Forest
