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
def state_2281409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 188 else (if j.val < 4 then 88 else 123)))
def hex_2281409 : String := "4340070A4041440A060741440A060A"
theorem cover_2281409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2281409)
  decide +kernel
#print axioms cover_2281409

def state_2281425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 176 else 123)))
def hex_2281425 : String := "404144420709070741440A420A43054009050A"
theorem cover_2281425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2281425)
  decide +kernel
#print axioms cover_2281425

def state_2281444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 177 else 123)))
def hex_2281444 : String := "404144424309090909440907414442430A0A4340050540090A4243400A0A064340094105094009410606440A420A430A0A"
theorem cover_2281444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2281444)
  decide +kernel
#print axioms cover_2281444

def state_2281493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 115) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2281493 : String := "440A420743070A"
theorem cover_2281493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281493 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2281493)
  decide +kernel
#print axioms cover_2281493

def state_2281501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281501 : String := "4144424340064106060643090942060944420A08420509"
theorem cover_2281501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281501 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2281501)
  decide +kernel
#print axioms cover_2281501

def state_2281525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281525 : String := "444243404106060A06434041440842060908414407420643400805060840060642064340414442060906094144420643400606060644060606"
theorem cover_2281525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2281525)
  decide +kernel
#print axioms cover_2281525

def state_2281582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 115) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281582 : String := "44420A08420643404106060A06"
theorem cover_2281582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2281582)
  decide +kernel
#print axioms cover_2281582

def state_2281596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 61)))
def hex_2281596 : String := "40094144424340080540080808424340094105440809400941440909090944084243080808"
theorem cover_2281596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2281596)
  decide +kernel
#print axioms cover_2281596

def state_2281633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 61)))
def hex_2281633 : String := "400941444243400808080842434009414409090940094107060908"
theorem cover_2281633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2281633)
  decide +kernel
#print axioms cover_2281633
end Mub6.Numerical.CircleFullD0.Forest
