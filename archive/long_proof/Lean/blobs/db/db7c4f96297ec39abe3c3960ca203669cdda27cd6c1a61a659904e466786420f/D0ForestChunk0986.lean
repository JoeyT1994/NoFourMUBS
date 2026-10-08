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
def state_1537112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 38)))
def hex_1537112 : String := "434042444143050A4340074207440705074105430540070A444143050A434005050A41050542444143050A43080A410543050A44410543050A0540420A0A0A"
theorem cover_1537112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1537112)
  decide +kernel
#print axioms cover_1537112

def state_1537175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 39)))
def hex_1537175 : String := "4143050643054042060A420A0A"
theorem cover_1537175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537175 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1537175)
  decide +kernel
#print axioms cover_1537175

def state_1537188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 19)))
def hex_1537188 : String := "444143050A4340424441050905054244410543050A05050A4105430540080A"
theorem cover_1537188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1537188)
  decide +kernel
#print axioms cover_1537188

def state_1537219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 9)))
def hex_1537219 : String := "44404207070A4008420A0A"
theorem cover_1537219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537219 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1537219)
  decide +kernel
#print axioms cover_1537219

def state_1537230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 9)))
def hex_1537230 : String := "434440444108090844410A4243060606410A42434009060A06400844414205054243050A05410505440A0A"
theorem cover_1537230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1537230)
  decide +kernel
#print axioms cover_1537230

def state_1537274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 9)))
def hex_1537274 : String := "4243444041094209440A0A094041094209440A0509094344400A07070A"
theorem cover_1537274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1537274)
  decide +kernel
#print axioms cover_1537274

def state_1537307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 18)))
def hex_1537307 : String := "424441434042090A080943060A4143404209440A0A0909434042084406410A06060A444143060A06414340420A0A420A050A43060A"
theorem cover_1537307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1537307)
  decide +kernel
#print axioms cover_1537307
end Mub6.Numerical.CircleFullD0.Forest
