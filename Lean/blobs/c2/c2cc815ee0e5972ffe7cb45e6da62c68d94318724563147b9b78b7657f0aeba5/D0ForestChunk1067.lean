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
def state_1556453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1556453 : String := "400942440743090509"
theorem cover_1556453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556453 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1556453)
  decide +kernel
#print axioms cover_1556453

def state_1556463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 20)))
def hex_1556463 : String := "07"
theorem cover_1556463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1556463)
  decide +kernel
#print axioms cover_1556463

def state_1556466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1556466 : String := "420743440741080707"
theorem cover_1556466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556466 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1556466)
  decide +kernel
#print axioms cover_1556466

def state_1556476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 21)))
def hex_1556476 : String := "434407414042060742440543410605054407434140064442064308060640074407420507070505"
theorem cover_1556476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 39) (hex := hex_1556476)
  decide +kernel
#print axioms cover_1556476

def state_1556517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 42)))
def hex_1556517 : String := "4140070707"
theorem cover_1556517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1556517)
  decide +kernel
#print axioms cover_1556517

def state_1556524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1556524 : String := "44420707420808"
theorem cover_1556524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556524 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1556524)
  decide +kernel
#print axioms cover_1556524

def state_1556531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1556531 : String := "44424341400744074207430907070743090742434140084442080808404407084442070742430807430807410607434140084408080941084007440708"
theorem cover_1556531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556531 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1556531)
  decide +kernel
#print axioms cover_1556531

def state_1556592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 43)))
def hex_1556592 : String := "400744074207430907"
theorem cover_1556592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1556592)
  decide +kernel
#print axioms cover_1556592

def state_1556601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 21)))
def hex_1556601 : String := "44074140074344074206070705"
theorem cover_1556601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556601 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1556601)
  decide +kernel
#print axioms cover_1556601

def state_1556614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1556614 : String := "05"
theorem cover_1556614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556614 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1556614)
  decide +kernel
#print axioms cover_1556614

def state_1556615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 10)))
def hex_1556615 : String := "434409094441400743090707414043094407420707434409424140094409430942080809094442070742414008434407080707414008430908094007430907"
theorem cover_1556615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1556615)
  decide +kernel
#print axioms cover_1556615

def state_1556681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
def hex_1556681 : String := "06"
theorem cover_1556681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1556681)
  decide +kernel
#print axioms cover_1556681

def state_1556686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
def hex_1556686 : String := "4306414042440743414042070606060744064306414042070706060606"
theorem cover_1556686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1556686)
  decide +kernel
#print axioms cover_1556686
end Mub6.Numerical.CircleFullD0.Forest
