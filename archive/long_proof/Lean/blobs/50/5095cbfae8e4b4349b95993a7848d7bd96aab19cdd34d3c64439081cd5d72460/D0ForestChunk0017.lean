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
def state_941564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 12)))
def hex_941564 : String := "40444208084241434006440806084340440806440842410909064008440842080841064306400608440942410A430940440842410707090909"
theorem cover_941564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941564 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_941564)
  decide +kernel
#print axioms cover_941564

def state_941621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 12)))
def hex_941621 : String := "4044084241084308084108084407424107074107430807"
theorem cover_941621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_941621)
  decide +kernel
#print axioms cover_941621

def state_941645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_941645 : String := "430A4042050605"
theorem cover_941645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_941645)
  decide +kernel
#print axioms cover_941645

def state_941653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
def hex_941653 : String := "40424441064306400642444105430A4005050A444106430608060606420A0A"
theorem cover_941653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 31) (hex := hex_941653)
  decide +kernel
#print axioms cover_941653

def state_941685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_941685 : String := "424441054340420544080542054408050505444143060543400644080640440841050544084105054105430605"
theorem cover_941685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_941685)
  decide +kernel
#print axioms cover_941685

def state_941730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
def hex_941730 : String := "42444105434042054407050705054441430A0543404441084308070A0A40440705070A"
theorem cover_941730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_941730)
  decide +kernel
#print axioms cover_941730

def state_941765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_941765 : String := "404205064241054344404205050A05054105430A05"
theorem cover_941765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_941765)
  decide +kernel
#print axioms cover_941765
end Mub6.Numerical.CircleFullD0.Forest
