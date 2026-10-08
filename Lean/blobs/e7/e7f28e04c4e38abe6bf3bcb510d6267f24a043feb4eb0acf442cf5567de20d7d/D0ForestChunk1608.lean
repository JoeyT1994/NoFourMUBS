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
def state_2259105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
def hex_2259105 : String := "4044434142440A0ABE0A414244400A43090606BE4206440A0643414206BE074106054443414209BE420A0A414209BE4206440A0643414206BE0606"
theorem cover_2259105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2259105)
  decide +kernel
#print axioms cover_2259105

def state_2259166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 108)))
def hex_2259166 : String := "434241BE0A41BE084241BE4408400A430A42060841BE08"
theorem cover_2259166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2259166)
  decide +kernel
#print axioms cover_2259166

def state_2259189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
def hex_2259189 : String := "434241BE400A440A0641BE40440A0A44430A0A430A42060A4241BE404406050641BE404408434206410606064443420A0842060806"
theorem cover_2259189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2259189)
  decide +kernel
#print axioms cover_2259189

def state_2259243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 108)))
def hex_2259243 : String := "434241BE440A0A41054405404305084305420A054241BE444008430A420A0740430A420641BE06430A0641BE4408400843424107080707"
theorem cover_2259243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259243 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2259243)
  decide +kernel
#print axioms cover_2259243

def state_2259299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 182 else 109)))
def hex_2259299 : String := "4241BE40440A06440A0641BE4044430A420A0A430A420641BE0644430A420A41050A43420641050A4206410606"
theorem cover_2259299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2259299)
  decide +kernel
#print axioms cover_2259299
end Mub6.Numerical.CircleFullD0.Forest
