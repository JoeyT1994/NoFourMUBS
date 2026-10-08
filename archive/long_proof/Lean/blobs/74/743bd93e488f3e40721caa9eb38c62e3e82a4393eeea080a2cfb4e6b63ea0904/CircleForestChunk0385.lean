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
def state_167898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 99 else (if j.val < 4 then 95 else 60)))
def hex_167898 : String := "414443424041054408430805088F42058F43424041050A4106090742058F444342404144080909088F4240410507098F4342098F424005098F"
theorem cover_167898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_167898)
  decide +kernel
#print axioms cover_167898

def state_167955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 61)))
def hex_167955 : String := "43420A0A42400541050940410A0A410644430A42400506400A4106090A"
theorem cover_167955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_167955)
  decide +kernel
#print axioms cover_167955

def state_167984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 30)))
def hex_167984 : String := "444342090A4240414407090609404144060A064144430942078F0909430A42090A"
theorem cover_167984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_167984)
  decide +kernel
#print axioms cover_167984

def state_168017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 30)))
def hex_168017 : String := "4144434209414044430708070809424108094140444308420808064408064044430942088F090943420907420941064044090606440909"
theorem cover_168017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_168017)
  decide +kernel
#print axioms cover_168017

def state_168072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 31)))
def hex_168072 : String := "42430A400A09430A404144430A42050A0A0A41444307060609"
theorem cover_168072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_168072)
  decide +kernel
#print axioms cover_168072

def state_168098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 15)))
def hex_168098 : String := "07"
theorem cover_168098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_168098)
  decide +kernel
#print axioms cover_168098

def state_168101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
def hex_168101 : String := "44430742400941074409070707"
theorem cover_168101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_168101)
  decide +kernel
#print axioms cover_168101
end Mub6.Numerical.CircleFullPrototype.Forest
