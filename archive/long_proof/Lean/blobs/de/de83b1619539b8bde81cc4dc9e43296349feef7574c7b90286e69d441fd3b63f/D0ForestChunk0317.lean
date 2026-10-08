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
def state_1013527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 21)))
def hex_1013527 : String := "40440541430542050505440541430542404405430507070505"
theorem cover_1013527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1013527)
  decide +kernel
#print axioms cover_1013527

def state_1013554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 42)))
def hex_1013554 : String := "414342400607054206400644054143050605430506"
theorem cover_1013554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013554 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1013554)
  decide +kernel
#print axioms cover_1013554

def state_1013577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 43)))
def hex_1013577 : String := "4240444106050A444143070707414342400A07054207400A440708430507400505"
theorem cover_1013577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1013577)
  decide +kernel
#print axioms cover_1013577

def state_1013611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 43)))
def hex_1013611 : String := "400644064142060A06"
theorem cover_1013611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1013611)
  decide +kernel
#print axioms cover_1013611

def state_1013621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 43)))
def hex_1013621 : String := "44414342060506064143420A050A0A"
theorem cover_1013621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1013621)
  decide +kernel
#print axioms cover_1013621

def state_1013637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 86)))
def hex_1013637 : String := "4143424006070542064009094305420605"
theorem cover_1013637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013637 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1013637)
  decide +kernel
#print axioms cover_1013637

def state_1013654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 87)))
def hex_1013654 : String := "41434240444109050A444143050805410843050A05424006444108060840440941090A440941094209054305420605"
theorem cover_1013654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1013654)
  decide +kernel
#print axioms cover_1013654

def state_1013701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
def hex_1013701 : String := "4305420605"
theorem cover_1013701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1013701)
  decide +kernel
#print axioms cover_1013701

def state_1013707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 42)))
def hex_1013707 : String := "07"
theorem cover_1013707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1013707)
  decide +kernel
#print axioms cover_1013707

def state_1013710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 43)))
def hex_1013710 : String := "420740440505440541430542070505"
theorem cover_1013710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1013710)
  decide +kernel
#print axioms cover_1013710

def state_1013725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 43)))
def hex_1013725 : String := "4207404441434207054207404405090707414342404407080705420840444109420705410842080544070843054207054407414342074005060707"
theorem cover_1013725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013725 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1013725)
  decide +kernel
#print axioms cover_1013725

def state_1013784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 43)))
def hex_1013784 : String := "430707"
theorem cover_1013784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1013784)
  decide +kernel
#print axioms cover_1013784
end Mub6.Numerical.CircleFullD0.Forest
