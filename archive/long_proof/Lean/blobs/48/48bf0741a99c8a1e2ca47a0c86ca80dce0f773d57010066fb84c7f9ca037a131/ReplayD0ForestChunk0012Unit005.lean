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
def state_1049544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1049544 : String := "434409404142430944094041424309440908090909090909444041430944060609094041434244404143424406060906430906410606404143424440414243070507420607064041050708444007090742440605440605434244404142060609064007414206060609420644064007064143420608064309064409404143074244400706070709094244064041050606444041060606404143420608054342060606064342440940414309420609090909424406064406400A064143424406060906430906"
theorem cover_1049544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 197) (hex := hex_1049544)
  decide +kernel
#print axioms cover_1049544

def state_1049741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1049741 : String := "4243440940424143094407404207090709090944404207090940424341444042070807404243070743414408400842070608410608420743070644074042070807410A07434144094042430941060809090941440606440640430805064207430906430944094043094142440606090909"
theorem cover_1049741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 113) (hex := hex_1049741)
  decide +kernel
#print axioms cover_1049741

def state_1049854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1049854 : String := "4142434406414206090706430944064106064243074406074344070909"
theorem cover_1049854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1049854)
  decide +kernel
#print axioms cover_1049854


end Mub6.Numerical.CircleFullD0.Forest
