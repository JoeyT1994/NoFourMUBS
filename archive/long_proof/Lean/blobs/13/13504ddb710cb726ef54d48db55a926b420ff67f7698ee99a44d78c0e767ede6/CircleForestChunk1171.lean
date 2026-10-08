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
def state_1581516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 102)))
def hex_1581516 : String := "43064041420644064306090606"
theorem cover_1581516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1581516)
  decide +kernel
#print axioms cover_1581516

def state_1581530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
def hex_1581530 : String := "404142050A0505"
theorem cover_1581530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1581530)
  decide +kernel
#print axioms cover_1581530

def state_1581537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
def hex_1581537 : String := "404142444305404142054409050505054443400A0540410942440605074108054340070540414244050507070542054443054007054305054142050805"
theorem cover_1581537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1581537)
  decide +kernel
#print axioms cover_1581537

def state_1581598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
def hex_1581598 : String := "42064406430540414205050505"
theorem cover_1581598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1581598)
  decide +kernel
#print axioms cover_1581598

def state_1581615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 102)))
def hex_1581615 : String := "43400841420A44434008060A43400A410A0A0A420844084308080A"
theorem cover_1581615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1581615)
  decide +kernel
#print axioms cover_1581615

def state_1581642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 96 else (if j.val < 4 then 53 else 103)))
def hex_1581642 : String := "43404142084408080841420A4443400A410A0A0A4340410A08050A4208444308084305080A"
theorem cover_1581642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1581642)
  decide +kernel
#print axioms cover_1581642

def state_1581682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 102)))
def hex_1581682 : String := "41424409430740060909420807"
theorem cover_1581682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1581682)
  decide +kernel
#print axioms cover_1581682

def state_1581695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 102)))
def hex_1581695 : String := "414244094340410909410942440943090909400A4109420A09094244430909434007414244064305070906400841420A090844094307400709"
theorem cover_1581695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1581695)
  decide +kernel
#print axioms cover_1581695

def state_1581752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 102)))
def hex_1581752 : String := "4041420A0542080741420A0942440A0A44094340070909"
theorem cover_1581752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1581752)
  decide +kernel
#print axioms cover_1581752
end Mub6.Numerical.CircleFullD0.Forest
