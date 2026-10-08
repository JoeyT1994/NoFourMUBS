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
def state_1643013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
def hex_1643013 : String := "444241434007054044084206074442060806430540444241080507420507054143074007440707430740074407054241430540420607050541430740070707"
theorem cover_1643013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1643013)
  decide +kernel
#print axioms cover_1643013

def state_1643076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 40)))
def hex_1643076 : String := "44420641430540440A420507050505"
theorem cover_1643076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643076 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1643076)
  decide +kernel
#print axioms cover_1643076

def state_1643094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 80)))
def hex_1643094 : String := "4143400844084206080843404408424108430508410843070844094241430508054143050805400809"
theorem cover_1643094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1643094)
  decide +kernel
#print axioms cover_1643094

def state_1643135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 103 else 80)))
def hex_1643135 : String := "4143400844084208410843070808434044084241070707444208084241430708430540080541070740084408420808"
theorem cover_1643135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1643135)
  decide +kernel
#print axioms cover_1643135

def state_1643184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 200) else (if j.val < 3 then 118 else (if j.val < 4 then 103 else 81)))
def hex_1643184 : String := "434042440806444108430708414306400706430740070742064406064042440808440808A0"
theorem cover_1643184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643184 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1643184)
  decide +kernel
#print axioms cover_1643184
end Mub6.Numerical.CircleFullD0.Forest
