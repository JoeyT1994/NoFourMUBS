import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2573284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_2573284 : String := "43404144434241444043090909094440434244414009094005064109050942444140050905050943420609424441090609094043050509094241444009090944404342444109050509084342444109400808090908400509094309094443424440414305050541430642064440410505060606400506444041430505054143090943060540054109054244400541434208080805054440050805054144434240410744430607060707424041074443090809070709444306424044410A0606064044080909064041444243410908080809440805410944084243060809"
theorem cover_2573284 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573284 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 221) (hex := hex_2573284)
  decide +kernel
#print axioms cover_2573284

def state_2573505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_2573505 : String := "4243064005064340050609"
theorem cover_2573505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573505 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2573505)
  decide +kernel
#print axioms cover_2573505

def state_2573516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_2573516 : String := "44424306400506434005060805"
theorem cover_2573516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2573516)
  decide +kernel
#print axioms cover_2573516

def state_2573529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_2573529 : String := "40054142060505"
theorem cover_2573529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2573529)
  decide +kernel
#print axioms cover_2573529

def state_2573536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2573536 : String := "42434406400642434144064006424308060644400642090640420A06424341080709430741060706060643064440054441420605050505"
theorem cover_2573536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 55) (hex := hex_2573536)
  decide +kernel
#print axioms cover_2573536

def state_2573598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2573598 : String := "4306444043054105060506"
theorem cover_2573598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573598 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2573598)
  decide +kernel
#print axioms cover_2573598

def state_2573610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2573610 : String := "444042054105060506"
theorem cover_2573610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2573610)
  decide +kernel
#print axioms cover_2573610

def state_2573622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
def hex_2573622 : String := "430541440A4006054440060506"
theorem cover_2573622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573622 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2573622)
  decide +kernel
#print axioms cover_2573622

def state_2573636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_2573636 : String := "4144074006054440060506"
theorem cover_2573636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2573636)
  decide +kernel
#print axioms cover_2573636

def state_2573648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_2573648 : String := "44404243410A4407060A074243050A430741074407420A07404243060A434441400A420A0740064206430608064441094009420A4344070A094109400942094344090609424305440A0A4344414205400705420540430544074107070541424043050A054043440506440A0A4305440505424006054043064441420640064305050606430544050544410A4243400A050A43404407410A420A434007070A4407410A420543050A400A0A410A4243400A4405050A434044410A420A43060A410A0644410A42054305400A05410A4243050A43400605400A0A400A440A0A"
theorem cover_2573648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 221) (hex := hex_2573648)
  decide +kernel
#print axioms cover_2573648

def state_2573870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
def hex_2573870 : String := "404243064144400743070A40064306420609064307414407400742430741070707440740074243064107060742430541444305400A054305404205410A440A0A054443404205070540424105064107074205410505434006054042064144430640064205050606420541050543410707414407424340070540410A440743074240070A07410A440743054205074307400707440742434007410505404144074307420607440706414407430542054007054407434205074240060540070743074007410707"
theorem cover_2573870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 197) (hex := hex_2573870)
  decide +kernel
#print axioms cover_2573870

def state_2574068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
def hex_2574068 : String := "42064306414440420608424306094308414408094408060606"
theorem cover_2574068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_2574068)
  decide +kernel
#print axioms cover_2574068

def state_2574094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 9)))
def hex_2574094 : String := "430641444305404205410906050606"
theorem cover_2574094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2574094)
  decide +kernel
#print axioms cover_2574094

def state_2574110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 9)))
def hex_2574110 : String := "41444205404305410706050606"
theorem cover_2574110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2574110)
  decide +kernel
#print axioms cover_2574110


end Mub6.Numerical.CircleFullD0.Forest
