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
def state_1012777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
def hex_1012777 : String := "44414243400A444241060A06060A4306400706420A434005060A414243070707420A43070A"
theorem cover_1012777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1012777)
  decide +kernel
#print axioms cover_1012777

def state_1012814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
def hex_1012814 : String := "444142430608064243404441064209060606400A0843060641064243060806"
theorem cover_1012814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1012814)
  decide +kernel
#print axioms cover_1012814

def state_1012846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 23)))
def hex_1012846 : String := "400A444142094309090741420843400A08080A"
theorem cover_1012846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1012846)
  decide +kernel
#print axioms cover_1012846

def state_1012865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 23)))
def hex_1012865 : String := "400A4442414340440909090A09414305400A09430505424143400A060A43400A0909414306400A06434005060A"
theorem cover_1012865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1012865)
  decide +kernel
#print axioms cover_1012865

def state_1012911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_1012911 : String := "4006440743414206400607060A"
theorem cover_1012911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1012911)
  decide +kernel
#print axioms cover_1012911

def state_1012924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
def hex_1012924 : String := "404443050A43420A050A44434209054207054342414044094342094144050A050A4409090941404405430505440943090905420A41400A440942090905"
theorem cover_1012924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1012924)
  decide +kernel
#print axioms cover_1012924

def state_1012986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_1012986 : String := "4006410606"
theorem cover_1012986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1012986)
  decide +kernel
#print axioms cover_1012986

def state_1012992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_1012992 : String := "0A"
theorem cover_1012992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1012992)
  decide +kernel
#print axioms cover_1012992

def state_1012996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 10)))
def hex_1012996 : String := "06"
theorem cover_1012996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1012996)
  decide +kernel
#print axioms cover_1012996

def state_1012999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
def hex_1012999 : String := "440641420643400644060A0606"
theorem cover_1012999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1012999)
  decide +kernel
#print axioms cover_1012999
end Mub6.Numerical.CircleFullD0.Forest
