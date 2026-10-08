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
def state_1000798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 44)))
def hex_1000798 : String := "41420540440A0A444341054205400A0805084206400644060A"
theorem cover_1000798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1000798)
  decide +kernel
#print axioms cover_1000798

def state_1000823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
def hex_1000823 : String := "4341420540074443070505424006444305050540440A07444341420507420A400A444341070A0A43070A4142054007440A050A4341074205070A41050A"
theorem cover_1000823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1000823)
  decide +kernel
#print axioms cover_1000823

def state_1000884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
def hex_1000884 : String := "420540064441050608"
theorem cover_1000884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000884 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1000884)
  decide +kernel
#print axioms cover_1000884

def state_1000893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_1000893 : String := "41430705434205444043070743410542050708400743070508"
theorem cover_1000893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1000893)
  decide +kernel
#print axioms cover_1000893

def state_1000920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_1000920 : String := "434205404408050505"
theorem cover_1000920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1000920)
  decide +kernel
#print axioms cover_1000920

def state_1000931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 22)))
def hex_1000931 : String := "05"
theorem cover_1000931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1000931)
  decide +kernel
#print axioms cover_1000931

def state_1000937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 44)))
def hex_1000937 : String := "05"
theorem cover_1000937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1000937)
  decide +kernel
#print axioms cover_1000937

def state_1000940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 88)))
def hex_1000940 : String := "4341420506424044C605054044C64342410505064205410540444306410542050606064443064205060641054205404443C6080808"
theorem cover_1000940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 53) (hex := hex_1000940)
  decide +kernel
#print axioms cover_1000940

def state_1000993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 89)))
def hex_1000993 : String := "43410542054044430605050505"
theorem cover_1000993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1000993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1000993)
  decide +kernel
#print axioms cover_1000993

def state_1001006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 44)))
def hex_1001006 : String := "444341054205060808"
theorem cover_1001006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1001006)
  decide +kernel
#print axioms cover_1001006

def state_1001016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 44)))
def hex_1001016 : String := "4044434105074105064341050505440705"
theorem cover_1001016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1001016)
  decide +kernel
#print axioms cover_1001016

def state_1001038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 88)))
def hex_1001038 : String := "4044C6434105094105094409430505"
theorem cover_1001038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1001038)
  decide +kernel
#print axioms cover_1001038

def state_1001055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 176)))
def hex_1001055 : String := "C6"
theorem cover_1001055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1001055)
  decide +kernel
#print axioms cover_1001055
end Mub6.Numerical.CircleFullD0.Forest
