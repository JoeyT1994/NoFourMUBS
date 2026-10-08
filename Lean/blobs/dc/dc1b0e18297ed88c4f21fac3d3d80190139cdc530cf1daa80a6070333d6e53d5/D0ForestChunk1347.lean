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
def state_1623996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 210 else (if j.val < 4 then 194 else 67)))
def hex_1623996 : String := "400A4443414205400A0505414209090A43050A"
theorem cover_1623996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1623996)
  decide +kernel
#print axioms cover_1623996

def state_1624015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 211 else (if j.val < 4 then 194 else 67)))
def hex_1624015 : String := "40444341420A0606060A44434142404443410505060A0540064409054240060506414209060643414205400A0505410A0A"
theorem cover_1624015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1624015)
  decide +kernel
#print axioms cover_1624015

def state_1624064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 195 else 67)))
def hex_1624064 : String := "41420808420A400644090A"
theorem cover_1624064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624064 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1624064)
  decide +kernel
#print axioms cover_1624064

def state_1624076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 32)))
def hex_1624076 : String := "434142404409060640440A430A41080909424044094341060509094044430A0943410A42050741090909410909"
theorem cover_1624076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624076 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1624076)
  decide +kernel
#print axioms cover_1624076

def state_1624123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
def hex_1624123 : String := "420640444306410642064008060606"
theorem cover_1624123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1624123)
  decide +kernel
#print axioms cover_1624123

def state_1624138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
def hex_1624138 : String := "4240444305410605050540444341420505054142404409430509054044094307410809094205404409050543054142054044430541050505050505"
theorem cover_1624138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1624138)
  decide +kernel
#print axioms cover_1624138

def state_1624198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
def hex_1624198 : String := "4240440806064044084341064206080809"
theorem cover_1624198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1624198)
  decide +kernel
#print axioms cover_1624198

def state_1624216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 33)))
def hex_1624216 : String := "40444341090909434106050709"
theorem cover_1624216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1624216)
  decide +kernel
#print axioms cover_1624216
end Mub6.Numerical.CircleFullD0.Forest
