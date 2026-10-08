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
def state_166413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
def hex_166413 : String := "44410942434408400508054344090909414205074243400544050505430705"
theorem cover_166413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_166413)
  decide +kernel
#print axioms cover_166413

def state_166444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 14)))
def hex_166444 : String := "4441084208430808414206074243404408070840050843074044410743080507440806"
theorem cover_166444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_166444)
  decide +kernel
#print axioms cover_166444

def state_166479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 14)))
def hex_166479 : String := "430740440909444107434240090807420A0907"
theorem cover_166479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_166479)
  decide +kernel
#print axioms cover_166479

def state_166498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
def hex_166498 : String := "424307404107444205070741064442430705070607"
theorem cover_166498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_166498)
  decide +kernel
#print axioms cover_166498

def state_166522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 14)))
def hex_166522 : String := "4041440642430A400A414408070A4307400A41070606414442084305084243074041080808074406424305094305400605"
theorem cover_166522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_166522)
  decide +kernel
#print axioms cover_166522

def state_166574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 28)))
def hex_166574 : String := "42434406400608440605430644064009410906"
theorem cover_166574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_166574)
  decide +kernel
#print axioms cover_166574

def state_166594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 29)))
def hex_166594 : String := "4340410544060A41444205084205430705444206064205430A0505"
theorem cover_166594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_166594)
  decide +kernel
#print axioms cover_166594

def state_166622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 29)))
def hex_166622 : String := "404144090744060A414442430740050807074406424307400A4144420506070A4307400A07"
theorem cover_166622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_166622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_166622)
  decide +kernel
#print axioms cover_166622
end Mub6.Numerical.CircleFullPrototype.Forest
