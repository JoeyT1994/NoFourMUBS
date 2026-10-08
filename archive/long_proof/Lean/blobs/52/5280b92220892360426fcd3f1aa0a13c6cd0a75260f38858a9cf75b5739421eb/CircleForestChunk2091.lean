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
def state_2582336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 16)))
def hex_2582336 : String := "4042060A42414443054006050606414443074240074107070743420607424006410506400A4107070A"
theorem cover_2582336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2582336)
  decide +kernel
#print axioms cover_2582336

def state_2582378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
def hex_2582378 : String := "42060A"
theorem cover_2582378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2582378)
  decide +kernel
#print axioms cover_2582378

def state_2582382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 44 else (if j.val < 4 then 49 else 16)))
def hex_2582382 : String := "41444340064206414443050909444306060640094208410809434006420541080640060806"
theorem cover_2582382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2582382)
  decide +kernel
#print axioms cover_2582382

def state_2582421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 32)))
def hex_2582421 : String := "4342404109064144074342400705074209070A400707424009414443420907420940070743420809090A0A"
theorem cover_2582421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2582421)
  decide +kernel
#print axioms cover_2582421

def state_2582464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 33)))
def hex_2582464 : String := "4342400941444342054007054208094309080A400A4144074342400707074209070A424009410909400941440A430A090A"
theorem cover_2582464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2582464)
  decide +kernel
#print axioms cover_2582464

def state_2582513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 41) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
def hex_2582513 : String := "0A"
theorem cover_2582513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2582513)
  decide +kernel
#print axioms cover_2582513

def state_2582515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 17)))
def hex_2582515 : String := "4006420641444306420640064144430642060706060606"
theorem cover_2582515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2582515)
  decide +kernel
#print axioms cover_2582515

def state_2582538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 17)))
def hex_2582538 : String := "40064206414443424006410806400941444342090A42080943420609080A42094009414409080A43420640064108064206090A"
theorem cover_2582538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2582538)
  decide +kernel
#print axioms cover_2582538

def state_2582589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
def hex_2582589 : String := "06"
theorem cover_2582589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2582589)
  decide +kernel
#print axioms cover_2582589
end Mub6.Numerical.CircleFullD0.Forest
