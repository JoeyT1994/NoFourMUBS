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
def state_960475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
def hex_960475 : String := "40414244064340420641440643050606060644430506434041424405430540420641080506C7420505414206050540414206C706064206440543050606"
theorem cover_960475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_960475)
  decide +kernel
#print axioms cover_960475

def state_960537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
def hex_960537 : String := "40414244430540080808444305404108050808424405084405084108420505"
theorem cover_960537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_960537)
  decide +kernel
#print axioms cover_960537

def state_960571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 55)))
def hex_960571 : String := "44434042084108080840090608"
theorem cover_960571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_960571)
  decide +kernel
#print axioms cover_960571

def state_960584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 55)))
def hex_960584 : String := "44434041420808424443054008080844430540410805050841080840414209C742440608444340414208084206440508060608414207084206440608430808"
theorem cover_960584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_960584)
  decide +kernel
#print axioms cover_960584

def state_960648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 55)))
def hex_960648 : String := "4443404142440508440508420505410605064308400908"
theorem cover_960648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_960648)
  decide +kernel
#print axioms cover_960648

def state_960672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 110)))
def hex_960672 : String := "434041424405084405050541420505054041424406430806444340414205050505064340080840410806064206440643050606"
theorem cover_960672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_960672)
  decide +kernel
#print axioms cover_960672
end Mub6.Numerical.CircleFullD0.Forest
