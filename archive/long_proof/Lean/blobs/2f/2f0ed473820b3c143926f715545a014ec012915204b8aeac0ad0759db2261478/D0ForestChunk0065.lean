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
def state_953021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 208 else (if j.val < 4 then 140 else 216)))
def hex_953021 : String := "4042414443054042410608060A06C7410AC742410AC709"
theorem cover_953021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_953021)
  decide +kernel
#print axioms cover_953021

def state_953044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 208 else (if j.val < 4 then 141 else 216)))
def hex_953044 : String := "4042414443404207080707430A404207410744070607C741444340080908430640060AC7424107C7410AC7"
theorem cover_953044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_953044)
  decide +kernel
#print axioms cover_953044

def state_953087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 208 else (if j.val < 4 then 70 else 217)))
def hex_953087 : String := "430A4042410AC74106C70A"
theorem cover_953087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_953087)
  decide +kernel
#print axioms cover_953087

def state_953098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 208 else (if j.val < 4 then 70 else 108)))
def hex_953098 : String := "C7"
theorem cover_953098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_953098)
  decide +kernel
#print axioms cover_953098

def state_953099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 209 else (if j.val < 4 then 70 else 108)))
def hex_953099 : String := "414443094042414443060806C741090942410A0909430640060AC7"
theorem cover_953099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953099 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_953099)
  decide +kernel
#print axioms cover_953099

def state_953127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 108)))
def hex_953127 : String := "424144434042410508084241440805C741440805080543400542054105C705C741444340420806424108084108084008420808430605C7"
theorem cover_953127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_953127)
  decide +kernel
#print axioms cover_953127

def state_953183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 208 else (if j.val < 4 then 71 else 108)))
def hex_953183 : String := "414443404241440705C741440843404205080705C74207410707404205410508074340424105C74105C7424105C7410AC705C7"
theorem cover_953183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_953183)
  decide +kernel
#print axioms cover_953183
end Mub6.Numerical.CircleFullD0.Forest
