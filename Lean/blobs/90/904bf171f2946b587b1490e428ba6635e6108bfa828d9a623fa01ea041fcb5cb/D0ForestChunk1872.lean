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
def state_2322291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 84 else (if j.val < 4 then 123 else 88)))
def hex_2322291 : String := "40444207414340060A0607420A414340060A064340070A07440A0A"
theorem cover_2322291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2322291)
  decide +kernel
#print axioms cover_2322291

def state_2322319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 112) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
def hex_2322319 : String := "43404405050540440606440505"
theorem cover_2322319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2322319)
  decide +kernel
#print axioms cover_2322319

def state_2322333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 122 else 88)))
def hex_2322333 : String := "4044424105094105094241430540440508054309400844090841054309400809440542410543054044054205050505"
theorem cover_2322333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2322333)
  decide +kernel
#print axioms cover_2322333

def state_2322382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 176)))
def hex_2322382 : String := "42414340060506434007440742070907414305064309400644420505420606"
theorem cover_2322382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322382 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2322382)
  decide +kernel
#print axioms cover_2322382

def state_2322413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 177)))
def hex_2322413 : String := "424143400644050806434008444208080808414340060506434008444208050808"
theorem cover_2322413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2322413)
  decide +kernel
#print axioms cover_2322413

def state_2322447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 176)))
def hex_2322447 : String := "4241054340440505054044070A05410543054044050505"
theorem cover_2322447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2322447)
  decide +kernel
#print axioms cover_2322447

def state_2322470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 177)))
def hex_2322470 : String := "424143054044050605434044420A050A0A40440A080A4105434044054205050540444241050805084405420505"
theorem cover_2322470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322470 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2322470)
  decide +kernel
#print axioms cover_2322470
end Mub6.Numerical.CircleFullD0.Forest
