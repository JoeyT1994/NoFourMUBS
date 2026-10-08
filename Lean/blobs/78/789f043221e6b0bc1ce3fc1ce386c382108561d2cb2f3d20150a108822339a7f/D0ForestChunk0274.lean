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
def state_1003224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 177)))
def hex_1003224 : String := "4240444341080A0808084044434241400A060A4106400A06420A41060A434241060A060A44430642080606"
theorem cover_1003224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1003224)
  decide +kernel
#print axioms cover_1003224

def state_1003267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 221) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 177)))
def hex_1003267 : String := "42400A4409430908404443410A090A0A4443094142090907434106094142080609"
theorem cover_1003267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1003267)
  decide +kernel
#print axioms cover_1003267

def state_1003300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 110) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 88)))
def hex_1003300 : String := "4443414240C60606094142404407080740444306070606074341064209064142080642404407080740440943060906"
theorem cover_1003300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1003300)
  decide +kernel
#print axioms cover_1003300

def state_1003347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 88)))
def hex_1003347 : String := "404443C6424140440543054241060505060505434241064005060642410640440543050A4443054241060505060644430642410640440506060606"
theorem cover_1003347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1003347)
  decide +kernel
#print axioms cover_1003347

def state_1003406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 88)))
def hex_1003406 : String := "424044430907434142090909414209400A09074407430907404405430541050544430505434106054142090505"
theorem cover_1003406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1003406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1003406)
  decide +kernel
#print axioms cover_1003406
end Mub6.Numerical.CircleFullD0.Forest
