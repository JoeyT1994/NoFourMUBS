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
def state_1564550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 90)))
def hex_1564550 : String := "43414008074044080844424307080707410840084443080808"
theorem cover_1564550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1564550)
  decide +kernel
#print axioms cover_1564550

def state_1564575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 91)))
def hex_1564575 : String := "42430808430708"
theorem cover_1564575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1564575)
  decide +kernel
#print axioms cover_1564575

def state_1564584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 90)))
def hex_1564584 : String := "43410740444243074107400509430741074007060744420706074109404442094341094044050509090909"
theorem cover_1564584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564584 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1564584)
  decide +kernel
#print axioms cover_1564584

def state_1564627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 90)))
def hex_1564627 : String := "430741404443070807074044434241074044080744060707420A410840080A43074208074443070A07"
theorem cover_1564627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1564627)
  decide +kernel
#print axioms cover_1564627

def state_1564668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 91)))
def hex_1564668 : String := "4243070907"
theorem cover_1564668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1564668)
  decide +kernel
#print axioms cover_1564668

def state_1564673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 45)))
def hex_1564673 : String := "41400609404443420808080844434209410940440A08090909"
theorem cover_1564673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1564673)
  decide +kernel
#print axioms cover_1564673

def state_1564699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 44)))
def hex_1564699 : String := "42434109404442094306090909094341404442434105060943050A420905444209050740444243060A06424341060609430641400A060606410940440A0909"
theorem cover_1564699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1564699)
  decide +kernel
#print axioms cover_1564699

def state_1564762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 45)))
def hex_1564762 : String := "420943410744404243070943074107444043060906074207060709"
theorem cover_1564762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 27) (hex := hex_1564762)
  decide +kernel
#print axioms cover_1564762

def state_1564792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 44)))
def hex_1564792 : String := "434140054405050505"
theorem cover_1564792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1564792)
  decide +kernel
#print axioms cover_1564792
end Mub6.Numerical.CircleFullD0.Forest
