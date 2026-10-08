import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_766004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_766004 : String := "434241060841444308404205050506440808424144050609414405404342060805054440434208080505400843064206410508"
theorem cover_766004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_766004)
  decide +kernel
#print axioms cover_766004

def state_766055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
def hex_766055 : String := "400806"
theorem cover_766055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_766055)
  decide +kernel
#print axioms cover_766055

def state_766060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
def hex_766060 : String := "434108084142440707074244400643080608440607"
theorem cover_766060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_766060)
  decide +kernel
#print axioms cover_766060

def state_766082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 10)))
def hex_766082 : String := "4142440A43084008090942440A080A"
theorem cover_766082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_766082)
  decide +kernel
#print axioms cover_766082

def state_766098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 10)))
def hex_766098 : String := "424405404307074342050505440507"
theorem cover_766098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_766098)
  decide +kernel
#print axioms cover_766098

def state_766113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 10)))
def hex_766113 : String := "424440430A410509430A0540430841420807084341420808084142050542440508440508440A40430807430A41440507440A08"
theorem cover_766113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_766113)
  decide +kernel
#print axioms cover_766113

def state_766164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
def hex_766164 : String := "40084308444142400806074208084142060708"
theorem cover_766164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_766164)
  decide +kernel
#print axioms cover_766164

def state_766183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_766183 : String := "42444008430809084440084308414244400843080908440A0842080808"
theorem cover_766183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_766183)
  decide +kernel
#print axioms cover_766183

def state_766213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
def hex_766213 : String := "440A4108430A08"
theorem cover_766213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_766213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_766213)
  decide +kernel
#print axioms cover_766213
end Mub6.Numerical.CircleFullPrototype.Forest
