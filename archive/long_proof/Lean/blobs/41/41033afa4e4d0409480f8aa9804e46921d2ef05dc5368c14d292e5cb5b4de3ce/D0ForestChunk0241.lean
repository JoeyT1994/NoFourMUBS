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
def state_995239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
def hex_995239 : String := "43444240090909074442090909"
theorem cover_995239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_995239)
  decide +kernel
#print axioms cover_995239

def state_995255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 42)))
def hex_995255 : String := "404341090541094405420905434144090944054240430509430A4405090541440909444240054305410905054240430909434409094409094005430509"
theorem cover_995255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_995255)
  decide +kernel
#print axioms cover_995255

def state_995316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 42)))
def hex_995316 : String := "4005430505"
theorem cover_995316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_995316)
  decide +kernel
#print axioms cover_995316

def state_995321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 43)))
def hex_995321 : String := "4240430744090743444106424043070943064409060607444109424009430909094107420907400706"
theorem cover_995321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_995321)
  decide +kernel
#print axioms cover_995321

def state_995363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 42)))
def hex_995363 : String := "424041094344420605094406094143090943444240094341090709054240094309080944424006080942080940410943050941094305440509"
theorem cover_995363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995363 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_995363)
  decide +kernel
#print axioms cover_995363

def state_995420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 43)))
def hex_995420 : String := "4240444109430909094441094342400908094208094108430908400744410943090907"
theorem cover_995420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995420 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_995420)
  decide +kernel
#print axioms cover_995420

def state_995455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 21)))
def hex_995455 : String := "404107430507414306074305440507"
theorem cover_995455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_995455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_995455)
  decide +kernel
#print axioms cover_995455
end Mub6.Numerical.CircleFullD0.Forest
