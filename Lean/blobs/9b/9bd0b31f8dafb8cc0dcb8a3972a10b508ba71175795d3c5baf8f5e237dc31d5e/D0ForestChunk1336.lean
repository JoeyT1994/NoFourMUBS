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
def state_1621371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 32)))
def hex_1621371 : String := "4044430708434107074108420807444341070708434142080742400707074108420808"
theorem cover_1621371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1621371)
  decide +kernel
#print axioms cover_1621371

def state_1621409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 64)))
def hex_1621409 : String := "D3"
theorem cover_1621409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1621409)
  decide +kernel
#print axioms cover_1621409

def state_1621414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 152 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 192 else 65)))
def hex_1621414 : String := "44D343410909414240094408064009440809420A400944D309"
theorem cover_1621414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1621414)
  decide +kernel
#print axioms cover_1621414

def state_1621439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 192 else 65)))
def hex_1621439 : String := "44D343410642064044D3090541420640440843060806424044D343060A064044D343414206094205090A44D343054106420505"
theorem cover_1621439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621439 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1621439)
  decide +kernel
#print axioms cover_1621439

def state_1621491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 152 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 65)))
def hex_1621491 : String := "44D343410707414240094408090742400944D30907"
theorem cover_1621491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1621491)
  decide +kernel
#print axioms cover_1621491

def state_1621512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 65)))
def hex_1621512 : String := "44D34341070741424044084341070708440843060807424044D343410707414208070A44D343410707414208074240440A05050707"
theorem cover_1621512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621512 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1621512)
  decide +kernel
#print axioms cover_1621512

def state_1621566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 208 else (if j.val < 4 then 192 else 65)))
def hex_1621566 : String := "4044D343410909410A0A44D3434142054044D3050542050541424044D30A054044D30A44D30542400A05400A05"
theorem cover_1621566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1621566)
  decide +kernel
#print axioms cover_1621566
end Mub6.Numerical.CircleFullD0.Forest
