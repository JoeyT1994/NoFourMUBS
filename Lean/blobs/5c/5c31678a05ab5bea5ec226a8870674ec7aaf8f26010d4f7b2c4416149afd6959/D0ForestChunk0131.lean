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
def state_968939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
def hex_968939 : String := "400641420505420907"
theorem cover_968939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_968939)
  decide +kernel
#print axioms cover_968939

def state_968948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 14)))
def hex_968948 : String := "44400541054205434405050505"
theorem cover_968948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_968948)
  decide +kernel
#print axioms cover_968948

def state_968961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 14)))
def hex_968961 : String := "430744400741434442050705054307444205070505"
theorem cover_968961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_968961)
  decide +kernel
#print axioms cover_968961

def state_968982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_968982 : String := "424344414007424443414007420A070A0A43074140054205070707400742440A0707074441400A420A43440A05050A4105400542050507"
theorem cover_968982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_968982)
  decide +kernel
#print axioms cover_968982

def state_969044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 28)))
def hex_969044 : String := "444340414208444308050542444340080809084443404108080840410542050741080808410842080840410542050541054206440605430805"
theorem cover_969044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_969044)
  decide +kernel
#print axioms cover_969044

def state_969103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 56)))
def hex_969103 : String := "404142444308400508080A42444340070840074108080807410A4244430808080A"
theorem cover_969103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_969103)
  decide +kernel
#print axioms cover_969103

def state_969136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 56)))
def hex_969136 : String := "4041420505424443400541054205050505444340074142050707050541424405050A4244434041050806050544434041084208080840050608"
theorem cover_969136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_969136)
  decide +kernel
#print axioms cover_969136

def state_969193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 57)))
def hex_969193 : String := "4308400508"
theorem cover_969193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_969193)
  decide +kernel
#print axioms cover_969193
end Mub6.Numerical.CircleFullD0.Forest
