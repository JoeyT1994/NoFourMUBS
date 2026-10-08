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
def state_143331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 9)))
def hex_143331 : String := "42434440050540080505434440070740410A43070A410643064407064440410509050A"
theorem cover_143331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_143331)
  decide +kernel
#print axioms cover_143331

def state_143366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 9)))
def hex_143366 : String := "424309094344094043440708094344074106084409414206070944094009440943410A09410A09"
theorem cover_143366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_143366)
  decide +kernel
#print axioms cover_143366

def state_143405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 9)))
def hex_143405 : String := "41420543440606054243440606054344400706404306444106090606440940444309094341420540440505050941050944430605430605"
theorem cover_143405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_143405)
  decide +kernel
#print axioms cover_143405

def state_143460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 4)))
def hex_143460 : String := "44094041054205440943400944090A0A4105420544054340050505"
theorem cover_143460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_143460)
  decide +kernel
#print axioms cover_143460

def state_143488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_143488 : String := "410A4208444340084108080A08"
theorem cover_143488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_143488)
  decide +kernel
#print axioms cover_143488

def state_143502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_143502 : String := "42054443400A410542050A050A"
theorem cover_143502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_143502)
  decide +kernel
#print axioms cover_143502

def state_143516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 5)))
def hex_143516 : String := "4443400842054105080508"
theorem cover_143516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_143516)
  decide +kernel
#print axioms cover_143516

def state_143530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 10)))
def hex_143530 : String := "414244430805080A4208444340084308084008434108080A08"
theorem cover_143530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_143530)
  decide +kernel
#print axioms cover_143530
end Mub6.Numerical.CircleFullPrototype.Forest
