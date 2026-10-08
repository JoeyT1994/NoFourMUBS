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
def state_947519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 107)))
def hex_947519 : String := "42414443054008054305404241440843064006080A414408060842414405430507054144054305404207050505440505414405430540424106050642050505"
theorem cover_947519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947519 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_947519)
  decide +kernel
#print axioms cover_947519

def state_947582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 107)))
def hex_947582 : String := "42414405430540420705050505"
theorem cover_947582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_947582)
  decide +kernel
#print axioms cover_947582

def state_947595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
def hex_947595 : String := "05"
theorem cover_947595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_947595)
  decide +kernel
#print axioms cover_947595

def state_947597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
def hex_947597 : String := "420A41440843400A420A414408430808080A0A"
theorem cover_947597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_947597)
  decide +kernel
#print axioms cover_947597

def state_947617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 53)))
def hex_947617 : String := "4144064340420A41440743400A07070A4206410706400A060A"
theorem cover_947617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947617 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_947617)
  decide +kernel
#print axioms cover_947617

def state_947644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 106)))
def hex_947644 : String := "4340080606"
theorem cover_947644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947644 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_947644)
  decide +kernel
#print axioms cover_947644

def state_947651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 107)))
def hex_947651 : String := "424144084340420A08424107074144070708400A4207070A4144084340420808424144084308080841080840084208084408C7"
theorem cover_947651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_947651)
  decide +kernel
#print axioms cover_947651

def state_947702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 107)))
def hex_947702 : String := "4241440607440643404206050506414443050643404241070741440543050705420707404207410707074405C7"
theorem cover_947702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_947702)
  decide +kernel
#print axioms cover_947702

def state_947747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 107)))
def hex_947747 : String := "40420A414408430808084206410706"
theorem cover_947747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_947747)
  decide +kernel
#print axioms cover_947747

def state_947762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
def hex_947762 : String := "440843400A4206050A"
theorem cover_947762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_947762)
  decide +kernel
#print axioms cover_947762
end Mub6.Numerical.CircleFullD0.Forest
