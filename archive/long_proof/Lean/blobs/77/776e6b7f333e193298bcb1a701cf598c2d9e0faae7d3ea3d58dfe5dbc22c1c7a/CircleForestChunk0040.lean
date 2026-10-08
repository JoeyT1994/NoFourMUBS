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
def state_9472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 17)))
def hex_9472 : String := "4244400841434208080808400841434244080844080808084406400641424306080606"
theorem cover_9472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_9472)
  decide +kernel
#print axioms cover_9472

def state_9507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 37 else 17)))
def hex_9507 : String := "414244094005434105420508050A420808"
theorem cover_9507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_9507)
  decide +kernel
#print axioms cover_9507

def state_9528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 34)))
def hex_9528 : String := "4043410942070A4109420709434107070A"
theorem cover_9528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_9528)
  decide +kernel
#print axioms cover_9528

def state_9547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 72 else 35)))
def hex_9547 : String := "4142064409400A06424440420743070707404206439A4441060706064440439A0A0A40439A440A410A420808439A440A410642060A"
theorem cover_9547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_9547)
  decide +kernel
#print axioms cover_9547

def state_9600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 73 else 35)))
def hex_9600 : String := "4142060A42444042060A06060A"
theorem cover_9600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_9600)
  decide +kernel
#print axioms cover_9600

def state_9613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
def hex_9613 : String := "434106420644400A0540434441060541064206050A4344050606410642060A"
theorem cover_9613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_9613)
  decide +kernel
#print axioms cover_9613

def state_9644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 36 else 17)))
def hex_9644 : String := "0A"
theorem cover_9644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_9644)
  decide +kernel
#print axioms cover_9644

def state_9647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 34)))
def hex_9647 : String := "404143420705420708430508410705"
theorem cover_9647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_9647)
  decide +kernel
#print axioms cover_9647

def state_9663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 55) else (if j.val < 3 then 54 else (if j.val < 4 then 36 else 35)))
def hex_9663 : String := "414342444007074042080842074143070708444041439A08084143050A054041439A080841439A444208084208084309084244070844080843420844050808"
theorem cover_9663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_9663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_9663)
  decide +kernel
#print axioms cover_9663
end Mub6.Numerical.CircleFullPrototype.Forest
