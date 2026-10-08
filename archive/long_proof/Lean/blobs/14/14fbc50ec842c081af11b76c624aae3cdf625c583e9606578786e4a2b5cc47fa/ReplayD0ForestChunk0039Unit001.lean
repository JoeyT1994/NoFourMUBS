import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2244183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
def hex_2244183 : String := "44404142434442430505080508434409430905440805424305440505434409414309050905414243074440084207080743444009430608070842434440414207090541070A400507444041424305050805414243070743070742054305054008054344400941430608094041430705054107074408054041424344054243050705444244050705094305440507424344414205050A41424305070542434044070707070744414208050A410907434441050A41050744410507074142430744070743440505440507424344074041070707440A07430507"
theorem cover_2244183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 215) (hex := hex_2244183)
  decide +kernel
#print axioms cover_2244183

def state_2244405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_2244405 : String := "440541050A"
theorem cover_2244405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2244405)
  decide +kernel
#print axioms cover_2244405

def state_2244411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_2244411 : String := "410509"
theorem cover_2244411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2244411)
  decide +kernel
#print axioms cover_2244411


end Mub6.Numerical.CircleFullD0.Forest
