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
def state_1632420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 103) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 36)))
def hex_1632420 : String := "40424443414006424407050606064341400A0505410A0A44060642444341050509430541050544430706430541424409050605"
theorem cover_1632420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1632420)
  decide +kernel
#print axioms cover_1632420

def state_1632471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
def hex_1632471 : String := "4243054144090505434142050505414244094043050905440940430509054205440905"
theorem cover_1632471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1632471)
  decide +kernel
#print axioms cover_1632471

def state_1632508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 37)))
def hex_1632508 : String := "43414440420505050505414440424305410605434144400805050541080A4205430541050540420543050A054440420543050A0505"
theorem cover_1632508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1632508)
  decide +kernel
#print axioms cover_1632508

def state_1632562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 98 else 37)))
def hex_1632562 : String := "414440070540070505"
theorem cover_1632562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1632562)
  decide +kernel
#print axioms cover_1632562

def state_1632573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 74)))
def hex_1632573 : String := "4042434144400708400705444007050541080A430741080A42430541440840080505430741440842080744420507420505"
theorem cover_1632573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 49) (hex := hex_1632573)
  decide +kernel
#print axioms cover_1632573

def state_1632622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 75)))
def hex_1632622 : String := "404243414440070505050A43070A4205430541444205070505"
theorem cover_1632622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1632622)
  decide +kernel
#print axioms cover_1632622

def state_1632647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 103) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 37)))
def hex_1632647 : String := "44404243050A43070A4205054042050A05"
theorem cover_1632647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1632647)
  decide +kernel
#print axioms cover_1632647

def state_1632664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
def hex_1632664 : String := "4205430541444205050505"
theorem cover_1632664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1632664)
  decide +kernel
#print axioms cover_1632664
end Mub6.Numerical.CircleFullD0.Forest
