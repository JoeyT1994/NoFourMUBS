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
def state_2279475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 29)))
def hex_2279475 : String := "4340414442050542434005054041050807430505440842430808084107440742430807084041070807"
theorem cover_2279475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279475 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2279475)
  decide +kernel
#print axioms cover_2279475

def state_2279516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
def hex_2279516 : String := "440842430A404144080A080A08"
theorem cover_2279516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2279516)
  decide +kernel
#print axioms cover_2279516

def state_2279529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
def hex_2279529 : String := "404144424341440840080708080842434144400606400606440806064341440840080708414407060808414407424340410706070607440842434006060608"
theorem cover_2279529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2279529)
  decide +kernel
#print axioms cover_2279529

def state_2279595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 15)))
def hex_2279595 : String := "41444243070543414007444206434140060607060607410605420543070507"
theorem cover_2279595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 31) (hex := hex_2279595)
  decide +kernel
#print axioms cover_2279595

def state_2279626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 15)))
def hex_2279626 : String := "41444243090643404144420643400A090606440A060940060642064340060606444206430A064205430705"
theorem cover_2279626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_2279626)
  decide +kernel
#print axioms cover_2279626

def state_2279669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 15)))
def hex_2279669 : String := "400506"
theorem cover_2279669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2279669)
  decide +kernel
#print axioms cover_2279669

def state_2279680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2279680 : String := "44420743070907"
theorem cover_2279680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2279680)
  decide +kernel
#print axioms cover_2279680

def state_2279689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 60)))
def hex_2279689 : String := "4341400744420A430A410606420643070640070A41400606400606"
theorem cover_2279689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279689 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2279689)
  decide +kernel
#print axioms cover_2279689

def state_2279719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 82 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
def hex_2279719 : String := "4442430741444007420605070709420709"
theorem cover_2279719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2279719)
  decide +kernel
#print axioms cover_2279719
end Mub6.Numerical.CircleFullD0.Forest
