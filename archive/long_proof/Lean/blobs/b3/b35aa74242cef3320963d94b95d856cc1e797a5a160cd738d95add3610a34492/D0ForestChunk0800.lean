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
def state_1492674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
def hex_1492674 : String := "4342440A434041420A440843080A0A0A0A44084308404142440A43404142090808080A08420A0808420A440A404143420A440A404341420A08080A0A0A0A0A"
theorem cover_1492674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1492674)
  decide +kernel
#print axioms cover_1492674

def state_1492737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
def hex_1492737 : String := "43420A080A"
theorem cover_1492737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1492737)
  decide +kernel
#print axioms cover_1492737

def state_1492748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 30)))
def hex_1492748 : String := "434142074407050707"
theorem cover_1492748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1492748)
  decide +kernel
#print axioms cover_1492748

def state_1492759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 30)))
def hex_1492759 : String := "4244434007060706444340414207054207054109424443400A060A0644430840050805400741094206440A0643400506400506"
theorem cover_1492759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1492759)
  decide +kernel
#print axioms cover_1492759

def state_1492810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 30)))
def hex_1492810 : String := "42440A06444340414205050541420A4408050A40070A4305400506"
theorem cover_1492810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1492810)
  decide +kernel
#print axioms cover_1492810

def state_1492837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 30)))
def hex_1492837 : String := "414207444007070707"
theorem cover_1492837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1492837)
  decide +kernel
#print axioms cover_1492837

def state_1492846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 31)))
def hex_1492846 : String := "40074341060606"
theorem cover_1492846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1492846)
  decide +kernel
#print axioms cover_1492846

def state_1492855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
def hex_1492855 : String := "434142050505414207440605420705"
theorem cover_1492855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1492855)
  decide +kernel
#print axioms cover_1492855

def state_1492871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 30)))
def hex_1492871 : String := "414244434005414205050840410505414244434005084007090505424443084007080505054443054005080542444340050840410505414244080505080505"
theorem cover_1492871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492871 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1492871)
  decide +kernel
#print axioms cover_1492871
end Mub6.Numerical.CircleFullD0.Forest
