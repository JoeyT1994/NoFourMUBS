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
def state_1647252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 40)))
def hex_1647252 : String := "414043424408410843400806074408410843400809080809404342440941090944094143404209440841080509094305090909"
theorem cover_1647252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1647252)
  decide +kernel
#print axioms cover_1647252

def state_1647307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 116 else (if j.val < 4 then 104 else 41)))
def hex_1647307 : String := "44410643060706"
theorem cover_1647307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1647307)
  decide +kernel
#print axioms cover_1647307

def state_1647315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 117 else (if j.val < 4 then 104 else 82)))
def hex_1647315 : String := "4143404206440806064008420644070643404244410605054441084305084143054008050542054406054042440707440841080A4207440707"
theorem cover_1647315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1647315)
  decide +kernel
#print axioms cover_1647315

def state_1647372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 117 else (if j.val < 4 then 104 else 83)))
def hex_1647372 : String := "414306404442064106430608060643054044420A0A42050A05"
theorem cover_1647372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1647372)
  decide +kernel
#print axioms cover_1647372

def state_1647397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 105 else 41)))
def hex_1647397 : String := "424407074441070741404344074206080707404344070A0707"
theorem cover_1647397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1647397)
  decide +kernel
#print axioms cover_1647397

def state_1647422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
def hex_1647422 : String := "4342064406064207440707"
theorem cover_1647422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1647422)
  decide +kernel
#print axioms cover_1647422

def state_1647433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
def hex_1647433 : String := "4043424441430540070505054441430540424407050A4205440505050542440741070544414007070941400A4305070A430542074407410705"
theorem cover_1647433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1647433)
  decide +kernel
#print axioms cover_1647433
end Mub6.Numerical.CircleFullD0.Forest
