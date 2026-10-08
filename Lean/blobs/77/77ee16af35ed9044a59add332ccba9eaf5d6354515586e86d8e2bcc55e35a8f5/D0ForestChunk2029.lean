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
def state_2567490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 193) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 94)))
def hex_2567490 : String := "444043070705404342074144074007080742070743420A0A0A"
theorem cover_2567490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2567490)
  decide +kernel
#print axioms cover_2567490

def state_2567516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 192) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 94)))
def hex_2567516 : String := "44054043424105440508060605"
theorem cover_2567516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2567516)
  decide +kernel
#print axioms cover_2567516

def state_2567530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 193) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 188)))
def hex_2567530 : String := "40434207060605"
theorem cover_2567530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567530 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2567530)
  decide +kernel
#print axioms cover_2567530

def state_2567537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 193) else (if j.val < 3 then 117 else (if j.val < 4 then 114 else 189)))
def hex_2567537 : String := "40434241444006054008084407400743080741440609444006430806404308064308094241060706434241050A410544054009054241050A41050A"
theorem cover_2567537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2567537)
  decide +kernel
#print axioms cover_2567537

def state_2567596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 94)))
def hex_2567596 : String := "42414440060540434241050706064305054440070A404307070A41064406400643420A0606"
theorem cover_2567596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2567596)
  decide +kernel
#print axioms cover_2567596

def state_2567633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
def hex_2567633 : String := "43420505420A05"
theorem cover_2567633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2567633)
  decide +kernel
#print axioms cover_2567633

def state_2567642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 95)))
def hex_2567642 : String := "42E24144404342080842E206430842E2094043080943080944404342E2410844090942E241094409094342E20942E209404342080842E209430842E209"
theorem cover_2567642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2567642)
  decide +kernel
#print axioms cover_2567642
end Mub6.Numerical.CircleFullD0.Forest
