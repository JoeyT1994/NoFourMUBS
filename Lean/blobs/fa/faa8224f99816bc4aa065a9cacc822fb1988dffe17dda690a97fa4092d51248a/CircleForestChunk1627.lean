import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2263680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 182 else 110)))
def hex_2263680 : String := "4241BE444043094241060609434241BE06094206094043070643420641060606414405400943054241050905440909"
theorem cover_2263680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2263680)
  decide +kernel
#print axioms cover_2263680

def state_2263727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 183 else 110)))
def hex_2263727 : String := "4241BE444043420609064342064106060606414440094342410509050740430909434241440506060942060744094009430906"
theorem cover_2263727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2263727)
  decide +kernel
#print axioms cover_2263727

def state_2263779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 182 else 110)))
def hex_2263779 : String := "4241BE4044434241BE064105400905420641BE06064443424105060542064105060641054044430509434241050905424106060944054305420605"
theorem cover_2263779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2263779)
  decide +kernel
#print axioms cover_2263779

def state_2263838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 183 else 110)))
def hex_2263838 : String := "4241BE40440606440606414044070707404443424109080842410606074342060906440706"
theorem cover_2263838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2263838)
  decide +kernel
#print axioms cover_2263838

def state_2263876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2263876 : String := "4342414440060606064144404309094342410506054206094006064440094309060642064144404342060906060606"
theorem cover_2263876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2263876)
  decide +kernel
#print axioms cover_2263876
end Mub6.Numerical.CircleFullD0.Forest
