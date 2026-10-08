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
def state_1577426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 103)))
def hex_1577426 : String := "4340410642080641D0424443400741D008400641D00843400641D007064443070643070606"
theorem cover_1577426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1577426)
  decide +kernel
#print axioms cover_1577426

def state_1577463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
def hex_1577463 : String := "444305054340054106424405060505"
theorem cover_1577463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1577463)
  decide +kernel
#print axioms cover_1577463

def state_1577479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
def hex_1577479 : String := "444340084142440808440943070708400841420844054305050843400741424408084407070840084142080608"
theorem cover_1577479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1577479)
  decide +kernel
#print axioms cover_1577479

def state_1577524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
def hex_1577524 : String := "444340054109074005410542070543074006410607"
theorem cover_1577524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577524 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1577524)
  decide +kernel
#print axioms cover_1577524

def state_1577545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 51)))
def hex_1577545 : String := "4006410642444340080A06064443050506"
theorem cover_1577545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1577545)
  decide +kernel
#print axioms cover_1577545

def state_1577562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 25)))
def hex_1577562 : String := "4409434005414244050505424409070706"
theorem cover_1577562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1577562)
  decide +kernel
#print axioms cover_1577562

def state_1577580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
def hex_1577580 : String := "44434008414208440943070908400841420844054305050843400841424408084443070707084008414208444307400541050743070608"
theorem cover_1577580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577580 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1577580)
  decide +kernel
#print axioms cover_1577580

def state_1577635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 25)))
def hex_1577635 : String := "444340070940054105094307400741424407060607"
theorem cover_1577635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1577635)
  decide +kernel
#print axioms cover_1577635
end Mub6.Numerical.CircleFullD0.Forest
