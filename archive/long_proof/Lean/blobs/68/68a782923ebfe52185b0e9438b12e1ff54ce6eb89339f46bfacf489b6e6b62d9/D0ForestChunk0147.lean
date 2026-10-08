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
def state_972754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
def hex_972754 : String := "4344424008080842404209410643060942410505414306054344080544080540064241064306080644084209400908"
theorem cover_972754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972754 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_972754)
  decide +kernel
#print axioms cover_972754

def state_972803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 26)))
def hex_972803 : String := "42400A410808400808"
theorem cover_972803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_972803)
  decide +kernel
#print axioms cover_972803

def state_972814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
def hex_972814 : String := "4142434408050543440806440805420A434408070A"
theorem cover_972814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_972814)
  decide +kernel
#print axioms cover_972814

def state_972835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
def hex_972835 : String := "414243440805054344084006410542054306054408054243444008080544080543440840074142054306054243070543074408054408400505"
theorem cover_972835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_972835)
  decide +kernel
#print axioms cover_972835

def state_972893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_972893 : String := "41424306440806064243070A43060A"
theorem cover_972893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_972893)
  decide +kernel
#print axioms cover_972893

def state_972908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
def hex_972908 : String := "4142434408064408404105084108084306440806424344084006414243060806074408400A414208080A434408064408400741080A"
theorem cover_972908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_972908)
  decide +kernel
#print axioms cover_972908

def state_972961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 13)))
def hex_972961 : String := "440A42400A4143420508050A400A4143420808080A"
theorem cover_972961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_972961)
  decide +kernel
#print axioms cover_972961
end Mub6.Numerical.CircleFullD0.Forest
