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
def state_985216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 85)))
def hex_985216 : String := "40430844064107064344084107084441424006434408090640084308094206084142400743070907420608"
theorem cover_985216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_985216)
  decide +kernel
#print axioms cover_985216

def state_985260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 42)))
def hex_985260 : String := "444240064341090606400943410944090909424043090643410505054009430909"
theorem cover_985260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_985260)
  decide +kernel
#print axioms cover_985260

def state_985293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 42)))
def hex_985293 : String := "444206400643414406060606420640064344414206090641420909064406410906"
theorem cover_985293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_985293)
  decide +kernel
#print axioms cover_985293

def state_985330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 84)))
def hex_985330 : String := "404341440A0A444240430A060A0A4240430A4105060A0A41444240090509420509444240060740430A060A4205404341090A090A430A410A44070A"
theorem cover_985330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985330 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_985330)
  decide +kernel
#print axioms cover_985330

def state_985389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 84)))
def hex_985389 : String := "4043410A0A41440909440A4240090A0A0A"
theorem cover_985389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_985389)
  decide +kernel
#print axioms cover_985389

def state_985406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 85)))
def hex_985406 : String := "42404341054442050A05050540434107440A074109444240090A0909430A0A"
theorem cover_985406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_985406)
  decide +kernel
#print axioms cover_985406
end Mub6.Numerical.CircleFullD0.Forest
