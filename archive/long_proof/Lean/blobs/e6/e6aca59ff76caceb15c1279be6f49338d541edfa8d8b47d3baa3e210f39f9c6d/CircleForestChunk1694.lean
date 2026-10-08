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
def state_2279737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 83 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 120)))
def hex_2279737 : String := "4243414005050A4140440A06440506400A0A4305410540094405420505"
theorem cover_2279737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2279737)
  decide +kernel
#print axioms cover_2279737

def state_2279766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 83 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 121)))
def hex_2279766 : String := "4243414007080741400606400606434140050540074405074140094405084009444243050605420609"
theorem cover_2279766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2279766)
  decide +kernel
#print axioms cover_2279766

def state_2279807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 113) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
def hex_2279807 : String := "400744420A430A0A42074307414007440A0707"
theorem cover_2279807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2279807)
  decide +kernel
#print axioms cover_2279807

def state_2279827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
def hex_2279827 : String := "404442434106060609420609444243410606064341400905400944420605064106064206434140060640060606"
theorem cover_2279827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2279827)
  decide +kernel
#print axioms cover_2279827

def state_2279872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 113) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 60)))
def hex_2279872 : String := "40444206094206094442430A06434140090A0A0642064341060606"
theorem cover_2279872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2279872)
  decide +kernel
#print axioms cover_2279872

def state_2279899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 61)))
def hex_2279899 : String := "42430706434140074442430706434108074108400606080741400606400606"
theorem cover_2279899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2279899)
  decide +kernel
#print axioms cover_2279899

def state_2279930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2279930 : String := "400744424307410605434140070A07414007440A420643070640070A07"
theorem cover_2279930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2279930)
  decide +kernel
#print axioms cover_2279930
end Mub6.Numerical.CircleFullD0.Forest
