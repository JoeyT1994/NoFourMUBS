import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1603095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 57 else 50)))
def hex_1603095 : String := "4442400943090909424043410707410707430A41084409420507400908"
theorem cover_1603095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1603095)
  decide +kernel
#print axioms cover_1603095

def state_1603124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 57 else 50)))
def hex_1603124 : String := "4442404341090741090743064144094206090640094309410909424043070743410505414442050705054007430A410707"
theorem cover_1603124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1603124)
  decide +kernel
#print axioms cover_1603124

def state_1603173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 28 else 50)))
def hex_1603173 : String := "430A410944090A"
theorem cover_1603173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1603173)
  decide +kernel
#print axioms cover_1603173

def state_1603180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 50)))
def hex_1603180 : String := "42434108064144400A0808444042060A064042050A050A"
theorem cover_1603180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1603180)
  decide +kernel
#print axioms cover_1603180

def state_1603203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 51)))
def hex_1603203 : String := "404243414442400705084205074442050705414442400743410805410805400708424007050744424007050707430A4108074243054144080505430808"
theorem cover_1603203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1603203)
  decide +kernel
#print axioms cover_1603203

def state_1603269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 50)))
def hex_1603269 : String := "444240094309410909094240434107070743410944424007090942070741094442400743090707074007430809"
theorem cover_1603269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1603269)
  decide +kernel
#print axioms cover_1603269

def state_1603317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 58 else 100)))
def hex_1603317 : String := "43410707410707"
theorem cover_1603317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603317 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1603317)
  decide +kernel
#print axioms cover_1603317

def state_1603325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 116 else 100)))
def hex_1603325 : String := "41444240090609424007430641090609444240430607064007064240070507"
theorem cover_1603325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1603325)
  decide +kernel
#print axioms cover_1603325
end Mub6.Numerical.CircleFullD0.Forest
