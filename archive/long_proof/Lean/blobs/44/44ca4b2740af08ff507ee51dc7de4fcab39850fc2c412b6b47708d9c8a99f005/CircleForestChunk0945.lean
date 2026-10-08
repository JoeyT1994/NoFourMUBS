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
def state_1527328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
def hex_1527328 : String := "42444143404205054206064005420505054143400542050505054441430A400A424405050A0A41430A400542050A05"
theorem cover_1527328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1527328)
  decide +kernel
#print axioms cover_1527328

def state_1527375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 44)))
def hex_1527375 : String := "42444143064042440505060606414306404205050606444143064042060606064143064042440605070606"
theorem cover_1527375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1527375)
  decide +kernel
#print axioms cover_1527375

def state_1527418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 45)))
def hex_1527418 : String := "414307404208070743404244414306050505070640420508424441430640050605054441070607"
theorem cover_1527418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1527418)
  decide +kernel
#print axioms cover_1527418

def state_1527458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
def hex_1527458 : String := "44414340420A4406060640420A44410908090A43064042060606414340444206060606094306400606"
theorem cover_1527458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1527458)
  decide +kernel
#print axioms cover_1527458

def state_1527499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
def hex_1527499 : String := "444143404244060606064042444108084107430609444107060742440606074306400606410706"
theorem cover_1527499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1527499)
  decide +kernel
#print axioms cover_1527499
end Mub6.Numerical.CircleFullD0.Forest
