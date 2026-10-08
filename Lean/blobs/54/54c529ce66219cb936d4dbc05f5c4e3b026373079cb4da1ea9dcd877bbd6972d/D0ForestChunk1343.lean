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
def state_1623059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
def hex_1623059 : String := "40444341420805060643090A444341420807424044060744074307410707064108424006080643414240094408430708074240094443070A0A0741080A"
theorem cover_1623059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623059 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1623059)
  decide +kernel
#print axioms cover_1623059

def state_1623120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 211 else (if j.val < 4 then 193 else 66)))
def hex_1623120 : String := "400644064307410706"
theorem cover_1623120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1623120)
  decide +kernel
#print axioms cover_1623120

def state_1623129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 66)))
def hex_1623129 : String := "42400644064341420A06060A06"
theorem cover_1623129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1623129)
  decide +kernel
#print axioms cover_1623129

def state_1623142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 67)))
def hex_1623142 : String := "43414209074209074142400944434109090A0A4009444307414208070A09420A400644060A"
theorem cover_1623142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1623142)
  decide +kernel
#print axioms cover_1623142

def state_1623181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 192 else 66)))
def hex_1623181 : String := "414240440743074107074443054107050507424044430741070743054107050507"
theorem cover_1623181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1623181)
  decide +kernel
#print axioms cover_1623181

def state_1623218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 132)))
def hex_1623218 : String := "434142080742404407430741070744430708430541080507410842400808400808"
theorem cover_1623218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1623218)
  decide +kernel
#print axioms cover_1623218

def state_1623251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 133)))
def hex_1623251 : String := "43414240440843070844080607424044430741084205074305410A0505074108424044080A440843410505084044080A44084341070708"
theorem cover_1623251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623251 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1623251)
  decide +kernel
#print axioms cover_1623251
end Mub6.Numerical.CircleFullD0.Forest
