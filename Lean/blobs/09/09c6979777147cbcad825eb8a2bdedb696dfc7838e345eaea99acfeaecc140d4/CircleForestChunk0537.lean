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
def state_290407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 92) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 35)))
def hex_290407 : String := "43444241A905410643400806400A054241A90541A9430740444205070705444205410605420541A905"
theorem cover_290407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_290407)
  decide +kernel
#print axioms cover_290407

def state_290448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 93) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 35)))
def hex_290448 : String := "40434408080505"
theorem cover_290448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_290448)
  decide +kernel
#print axioms cover_290448

def state_290455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 97 else (if j.val < 4 then 57 else 35)))
def hex_290455 : String := "414043440A4241400843080A08080A4344064241064307400A060644064241060A064043080A434408070A"
theorem cover_290455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_290455)
  decide +kernel
#print axioms cover_290455

def state_290498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 17)))
def hex_290498 : String := "4043080A4344064105084406410A0A"
theorem cover_290498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_290498)
  decide +kernel
#print axioms cover_290498

def state_290513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 47) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
def hex_290513 : String := "424008430844414205080541420540080505400843080A"
theorem cover_290513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_290513)
  decide +kernel
#print axioms cover_290513

def state_290536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 8)))
def hex_290536 : String := "440A4142400A43440A4241400A4344050505050A0A0A42400A050A"
theorem cover_290536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_290536)
  decide +kernel
#print axioms cover_290536

def state_290565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 16)))
def hex_290565 : String := "4106420906"
theorem cover_290565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_290565)
  decide +kernel
#print axioms cover_290565

def state_290571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
def hex_290571 : String := "42434044094241090941064307400706094044420906424143404406420541060506404405050505410643404406070640440542050A05440642050606"
theorem cover_290571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_290571)
  decide +kernel
#print axioms cover_290571

def state_290632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
def hex_290632 : String := "424340440907050543404408070640440A414243070A060706"
theorem cover_290632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_290632)
  decide +kernel
#print axioms cover_290632
end Mub6.Numerical.CircleFullPrototype.Forest
