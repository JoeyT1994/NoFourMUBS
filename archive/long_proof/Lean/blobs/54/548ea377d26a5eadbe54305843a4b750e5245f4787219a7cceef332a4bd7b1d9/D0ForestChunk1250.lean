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
def state_1600455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 98)))
def hex_1600455 : String := "424008414344070A0A0840054105434405424005070505"
theorem cover_1600455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1600455)
  decide +kernel
#print axioms cover_1600455

def state_1600479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 61 else 99)))
def hex_1600479 : String := "400A410A0A"
theorem cover_1600479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1600479)
  decide +kernel
#print axioms cover_1600479

def state_1600485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
def hex_1600485 : String := "41054344050A06"
theorem cover_1600485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1600485)
  decide +kernel
#print axioms cover_1600485

def state_1600493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
def hex_1600493 : String := "43444240054105070542400A0A400541054309094405420A05"
theorem cover_1600493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1600493)
  decide +kernel
#print axioms cover_1600493

def state_1600518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
def hex_1600518 : String := "4344420A4005410543440542070505420A400A414344420705420A4005070A43440A0A0A444208050A"
theorem cover_1600518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600518 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1600518)
  decide +kernel
#print axioms cover_1600518

def state_1600561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 98)))
def hex_1600561 : String := "4208400841434406420640430608064408420840050708"
theorem cover_1600561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1600561)
  decide +kernel
#print axioms cover_1600561

def state_1600585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 102 else (if j.val < 4 then 60 else 99)))
def hex_1600585 : String := "40084143060808"
theorem cover_1600585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1600585)
  decide +kernel
#print axioms cover_1600585

def state_1600592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 99)))
def hex_1600592 : String := "4041434408420840089F0808414344420640434106064144080808064240430608069F4442084008414307440707084240080A9F43440642069F08"
theorem cover_1600592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1600592)
  decide +kernel
#print axioms cover_1600592

def state_1600651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 49)))
def hex_1600651 : String := "4408420840084143440842084008410A080808"
theorem cover_1600651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1600651)
  decide +kernel
#print axioms cover_1600651

def state_1600670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 24)))
def hex_1600670 : String := "444208400541050842084008414344420805420A400641060A44080A08"
theorem cover_1600670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1600670)
  decide +kernel
#print axioms cover_1600670

def state_1600699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1600699 : String := "08"
theorem cover_1600699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1600699)
  decide +kernel
#print axioms cover_1600699

def state_1600701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1600701 : String := "41434208444006410608060608"
theorem cover_1600701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1600701)
  decide +kernel
#print axioms cover_1600701
end Mub6.Numerical.CircleFullD0.Forest
