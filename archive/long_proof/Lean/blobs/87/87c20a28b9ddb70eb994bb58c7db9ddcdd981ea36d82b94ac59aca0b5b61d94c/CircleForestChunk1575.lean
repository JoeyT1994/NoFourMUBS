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
def state_2251316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
def hex_2251316 : String := "43414208440608424440430741080508084440434106420606410642440605064341064208060A404308410842050A08410A42440505440A0A"
theorem cover_2251316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2251316)
  decide +kernel
#print axioms cover_2251316

def state_2251373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
def hex_2251373 : String := "4341084208440A08410A420A0A"
theorem cover_2251373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2251373)
  decide +kernel
#print axioms cover_2251373

def state_2251387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 27)))
def hex_2251387 : String := "44404307054341420544404307054341090705400508050505"
theorem cover_2251387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_2251387)
  decide +kernel
#print axioms cover_2251387

def state_2251414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
def hex_2251414 : String := "434142440640074307410505064207440607414244050544064006430605420508"
theorem cover_2251414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251414 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2251414)
  decide +kernel
#print axioms cover_2251414

def state_2251449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
def hex_2251449 : String := "4244064043414207060741420506054341420806420744064007084142050A0544064006430641064244060A06"
theorem cover_2251449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2251449)
  decide +kernel
#print axioms cover_2251449

def state_2251494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
def hex_2251494 : String := "424440074341420606074142050605400543070544064043414207060741420506054341424406070642074406074142440505064205440605"
theorem cover_2251494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2251494)
  decide +kernel
#print axioms cover_2251494
end Mub6.Numerical.CircleFullD0.Forest
