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
def state_1505623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
def hex_1505623 : String := "414342064407064206440706438842440606444007074041060706"
theorem cover_1505623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1505623)
  decide +kernel
#print axioms cover_1505623

def state_1505650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
def hex_1505650 : String := "40410A430A42060A06"
theorem cover_1505650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505650 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1505650)
  decide +kernel
#print axioms cover_1505650

def state_1505660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
def hex_1505660 : String := "88"
theorem cover_1505660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1505660)
  decide +kernel
#print axioms cover_1505660

def state_1505662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 60)))
def hex_1505662 : String := "444041438844050843884405420540080541438806438805404143880643880806"
theorem cover_1505662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1505662)
  decide +kernel
#print axioms cover_1505662

def state_1505699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 120)))
def hex_1505699 : String := "88"
theorem cover_1505699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1505699)
  decide +kernel
#print axioms cover_1505699

def state_1505701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 166 else (if j.val < 4 then 211 else 120)))
def hex_1505701 : String := "4440414388054388054105054041080841438806438808"
theorem cover_1505701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 23) (hex := hex_1505701)
  decide +kernel
#print axioms cover_1505701

def state_1505724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 120)))
def hex_1505724 : String := "444041438842090709414307074307054041430A42080A4388420809414388424407060743884244404105050540080607"
theorem cover_1505724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1505724)
  decide +kernel
#print axioms cover_1505724

def state_1505773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
def hex_1505773 : String := "438842440540414388084388054143880543880544400941430705054041430909094143884244054009410705074388420509"
theorem cover_1505773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1505773)
  decide +kernel
#print axioms cover_1505773

def state_1505824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
def hex_1505824 : String := "41438842440506444041070707404143070743070741060743884244054041438805050544054041430742050743884205074107430705"
theorem cover_1505824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1505824)
  decide +kernel
#print axioms cover_1505824
end Mub6.Numerical.CircleFullD0.Forest
