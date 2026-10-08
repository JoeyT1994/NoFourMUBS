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
def state_70130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 46 else 40)))
def hex_70130 : String := "404143420644074006074206440740060743064206440A064143074244070807434244400607060A4244434006074006070644074340060840064107420607"
theorem cover_70130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_70130)
  decide +kernel
#print axioms cover_70130

def state_70193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 46 else 41)))
def hex_70193 : String := "4006410808"
theorem cover_70193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_70193)
  decide +kernel
#print axioms cover_70193

def state_70198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 46 else 20)))
def hex_70198 : String := "444041070A41070A404143094244404105064107430809080943094206094143084208094342080842444308400A080809"
theorem cover_70198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_70198)
  decide +kernel
#print axioms cover_70198

def state_70251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 94 else 40)))
def hex_70251 : String := "41420644074340050705420644430A400641070606"
theorem cover_70251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_70251)
  decide +kernel
#print axioms cover_70251

def state_70272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 94 else 40)))
def hex_70272 : String := "414244074308410740060707424409064407434041420607064107420644074306064041420607064107420644074306400607"
theorem cover_70272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_70272)
  decide +kernel
#print axioms cover_70272

def state_70323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 95 else 40)))
def hex_70323 : String := "404142050542064409064142090742094409434041420607064107B8400909"
theorem cover_70323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_70323)
  decide +kernel
#print axioms cover_70323

def state_70355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 94 else 41)))
def hex_70355 : String := "400641420844430841074006080842064443400608400641080606"
theorem cover_70355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_70355)
  decide +kernel
#print axioms cover_70355
end Mub6.Numerical.CircleFullPrototype.Forest
