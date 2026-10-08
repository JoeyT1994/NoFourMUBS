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
def state_2306574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_2306574 : String := "44054105424305404405410542430507070505"
theorem cover_2306574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_2306574)
  decide +kernel
#print axioms cover_2306574

def state_2306594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 22)))
def hex_2306594 : String := "420640444305420605430642060606"
theorem cover_2306594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2306594)
  decide +kernel
#print axioms cover_2306594

def state_2306612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_2306612 : String := "424143090706414309400944090909"
theorem cover_2306612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2306612)
  decide +kernel
#print axioms cover_2306612

def state_2306627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_2306627 : String := "424143064440070640430605060641434406064440094243060943060940424306054309084206430641444008060606430609"
theorem cover_2306627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306627 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2306627)
  decide +kernel
#print axioms cover_2306627

def state_2306678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_2306678 : String := "444206414305404405060506420606"
theorem cover_2306678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2306678)
  decide +kernel
#print axioms cover_2306678

def state_2306695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
def hex_2306695 : String := "42414340090540094409420909094143054009440542090509"
theorem cover_2306695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2306695)
  decide +kernel
#print axioms cover_2306695

def state_2306721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 45)))
def hex_2306721 : String := "414344400906404206414306090606444042090942430609430941440909094042430808430808424306414440080608064306410806430609"
theorem cover_2306721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2306721)
  decide +kernel
#print axioms cover_2306721

def state_2306778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 45)))
def hex_2306778 : String := "41434440090540424107060742060644404209094243094144054008050943094107094042080842434107064107084307074306440909"
theorem cover_2306778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306778 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2306778)
  decide +kernel
#print axioms cover_2306778
end Mub6.Numerical.CircleFullD0.Forest
