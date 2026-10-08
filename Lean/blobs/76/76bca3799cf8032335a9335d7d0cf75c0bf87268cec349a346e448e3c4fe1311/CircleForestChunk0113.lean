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
def state_48298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 4 else 4)))
def hex_48298 : String := "4344400A41070A4041420809420A0941420809424443400A080808440A0944400A41070A404142080A0A410842080A"
theorem cover_48298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_48298)
  decide +kernel
#print axioms cover_48298

def state_48345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
def hex_48345 : String := "40410844420609094108444208430940090808"
theorem cover_48345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_48345)
  decide +kernel
#print axioms cover_48345

def state_48366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_48366 : String := "4143420544054041050541050542054405430505434206440A064205440506"
theorem cover_48366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_48366)
  decide +kernel
#print axioms cover_48366

def state_48398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_48398 : String := "434244070807420507"
theorem cover_48398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_48398)
  decide +kernel
#print axioms cover_48398

def state_48408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 4)))
def hex_48408 : String := "424440410506410743420607094006410806444041070A07404143420644050542050506410743424440060706440740060842064407400607"
theorem cover_48408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_48408)
  decide +kernel
#print axioms cover_48408

def state_48465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
def hex_48465 : String := "42440940064105064440410505074041054306054143070543420644074006074205440505"
theorem cover_48465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_48465)
  decide +kernel
#print axioms cover_48465

def state_48503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_48503 : String := "4143444206400641080608444205434006410505400505420543444006050844400505404108050506"
theorem cover_48503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48503 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_48503)
  decide +kernel
#print axioms cover_48503
end Mub6.Numerical.CircleFullPrototype.Forest
