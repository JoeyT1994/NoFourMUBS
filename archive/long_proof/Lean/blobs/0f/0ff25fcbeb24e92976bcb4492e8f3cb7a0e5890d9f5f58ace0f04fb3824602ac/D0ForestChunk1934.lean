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
def state_2337167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
def hex_2337167 : String := "42410A06414340440606064044420A414340440606068306420A41434044060606404483420A4108050A06440A0606"
theorem cover_2337167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 47) (hex := hex_2337167)
  decide +kernel
#print axioms cover_2337167

def state_2337214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
def hex_2337214 : String := "420A414340440606064044420A414306400806064205080A06"
theorem cover_2337214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337214 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_2337214)
  decide +kernel
#print axioms cover_2337214

def state_2337239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_2337239 : String := "440A0A"
theorem cover_2337239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2337239)
  decide +kernel
#print axioms cover_2337239

def state_2337242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
def hex_2337242 : String := "42410A0A414340070740444241070A0707444209070743064044420A41430608060806"
theorem cover_2337242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337242 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2337242)
  decide +kernel
#print axioms cover_2337242

def state_2337277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
def hex_2337277 : String := "44420A4143400A050A060A"
theorem cover_2337277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2337277)
  decide +kernel
#print axioms cover_2337277

def state_2337288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_2337288 : String := "430640444206060606"
theorem cover_2337288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2337288)
  decide +kernel
#print axioms cover_2337288

def state_2337300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
def hex_2337300 : String := "404244410506410506440505420505"
theorem cover_2337300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2337300)
  decide +kernel
#print axioms cover_2337300

def state_2337318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 20)))
def hex_2337318 : String := "410808"
theorem cover_2337318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2337318)
  decide +kernel
#print axioms cover_2337318

def state_2337323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 21)))
def hex_2337323 : String := "40424405050505"
theorem cover_2337323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2337323)
  decide +kernel
#print axioms cover_2337323

def state_2337331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
def hex_2337331 : String := "42444105084105434042440541050805054042440841430583434042080805834408410543054042830505420805444105084105430540424405050505"
theorem cover_2337331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337331 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_2337331)
  decide +kernel
#print axioms cover_2337331

def state_2337392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 21)))
def hex_2337392 : String := "4244050505"
theorem cover_2337392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2337392)
  decide +kernel
#print axioms cover_2337392

def state_2337398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 21)))
def hex_2337398 : String := "40424406060606"
theorem cover_2337398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2337398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2337398)
  decide +kernel
#print axioms cover_2337398
end Mub6.Numerical.CircleFullD0.Forest
