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
def state_1633532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1633532 : String := "444108094140420708420743440707074042074344410809414344074007070743444007074007070707420743440941070707"
theorem cover_1633532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1633532)
  decide +kernel
#print axioms cover_1633532

def state_1633586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
def hex_1633586 : String := "4243404107050507434041444342054105054207094305420541070544434205400805420740410707054305420505410505404144070707410707"
theorem cover_1633586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1633586)
  decide +kernel
#print axioms cover_1633586

def state_1633645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
def hex_1633645 : String := "4243050743404105050540410707410505"
theorem cover_1633645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1633645)
  decide +kernel
#print axioms cover_1633645

def state_1633662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_1633662 : String := "440707"
theorem cover_1633662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1633662)
  decide +kernel
#print axioms cover_1633662

def state_1633672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 16)))
def hex_1633672 : String := "43414240440943050905404443410905094305410909054240444305090505404443050943054105050541420909420909"
theorem cover_1633672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633672 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1633672)
  decide +kernel
#print axioms cover_1633672

def state_1633722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
def hex_1633722 : String := "41420540444305410505050505"
theorem cover_1633722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1633722)
  decide +kernel
#print axioms cover_1633722

def state_1633735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
def hex_1633735 : String := "4142404443410505074305070540444341090909434105054142090942050509424044430507050540444341050509430541050505"
theorem cover_1633735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1633735)
  decide +kernel
#print axioms cover_1633735
end Mub6.Numerical.CircleFullD0.Forest
