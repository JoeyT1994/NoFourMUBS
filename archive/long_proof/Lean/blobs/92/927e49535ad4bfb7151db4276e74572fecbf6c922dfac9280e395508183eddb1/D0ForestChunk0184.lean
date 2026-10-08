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
def state_981639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
def hex_981639 : String := "4109434442434009090909424309090944424006090909"
theorem cover_981639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_981639)
  decide +kernel
#print axioms cover_981639

def state_981663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 20)))
def hex_981663 : String := "4344090908"
theorem cover_981663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_981663)
  decide +kernel
#print axioms cover_981663

def state_981669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
def hex_981669 : String := "44424043410944424340090909094205094108440909434108440A0A0840430909430A41090A420540430909430A4105440905"
theorem cover_981669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_981669)
  decide +kernel
#print axioms cover_981669

def state_981720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 20)))
def hex_981720 : String := "444208400941084309084205400908"
theorem cover_981720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981720 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_981720)
  decide +kernel
#print axioms cover_981720

def state_981735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 20)))
def hex_981735 : String := "40410943440907094143090943444240090A094240090A0944420909420909"
theorem cover_981735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_981735)
  decide +kernel
#print axioms cover_981735

def state_981766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
def hex_981766 : String := "4240410543070505400741074307440907"
theorem cover_981766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_981766)
  decide +kernel
#print axioms cover_981766

def state_981783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 10)))
def hex_981783 : String := "41430644420806064344424043064106440A06060606444240410843444240430A08080A42050A0808404143060A430A440A0A064205404106430644060506"
theorem cover_981783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_981783)
  decide +kernel
#print axioms cover_981783

def state_981846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 10)))
def hex_981846 : String := "404107430744424041074305094109430A4209054005050741064306440A06"
theorem cover_981846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_981846)
  decide +kernel
#print axioms cover_981846

def state_981877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
def hex_981877 : String := "4240070506"
theorem cover_981877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_981877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_981877)
  decide +kernel
#print axioms cover_981877
end Mub6.Numerical.CircleFullD0.Forest
