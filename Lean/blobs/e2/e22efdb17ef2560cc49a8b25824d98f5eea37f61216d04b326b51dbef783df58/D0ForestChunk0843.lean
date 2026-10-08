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
def state_1502951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 58)))
def hex_1502951 : String := "41444205074240434144420507420907440542050741440542050705434109440509410505400707440542404341050505054043060707"
theorem cover_1502951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1502951)
  decide +kernel
#print axioms cover_1502951

def state_1503006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 58)))
def hex_1503006 : String := "414405420540430707074405420505"
theorem cover_1503006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1503006)
  decide +kernel
#print axioms cover_1503006

def state_1503021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
def hex_1503021 : String := "43414408420907440542050741440542050705"
theorem cover_1503021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1503021)
  decide +kernel
#print axioms cover_1503021

def state_1503041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
def hex_1503041 : String := "40434142064440430906060642440506444043414405090505054043410642060906064106420544050606"
theorem cover_1503041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503041 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1503041)
  decide +kernel
#print axioms cover_1503041

def state_1503087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 59)))
def hex_1503087 : String := "44424043410944420907420909414442090A09444205404307070742060A430909400A07424043090A060A"
theorem cover_1503087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1503087)
  decide +kernel
#print axioms cover_1503087

def state_1503134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 118)))
def hex_1503134 : String := "41444240434105050505400707424043090909400A07444205400605424043414405090505430905404307410707430707"
theorem cover_1503134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1503134)
  decide +kernel
#print axioms cover_1503134
end Mub6.Numerical.CircleFullD0.Forest
