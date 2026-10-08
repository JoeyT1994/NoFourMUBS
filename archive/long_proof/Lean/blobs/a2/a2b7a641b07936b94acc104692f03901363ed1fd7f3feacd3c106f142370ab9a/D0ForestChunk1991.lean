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
def state_2558478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_2558478 : String := "4243070707"
theorem cover_2558478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2558478)
  decide +kernel
#print axioms cover_2558478

def state_2558486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 96)))
def hex_2558486 : String := "43E24144404243090843E206420943E208404243E241080843E24108084243E20843E2084440420808420808404243090843E208420943E208"
theorem cover_2558486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2558486)
  decide +kernel
#print axioms cover_2558486

def state_2558543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 96)))
def hex_2558543 : String := "43E2414440064243E20606404243E206064243E20843E2064440420806420808404243E20843E2064243E20843E208"
theorem cover_2558543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558543 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2558543)
  decide +kernel
#print axioms cover_2558543

def state_2558591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 58 else 96)))
def hex_2558591 : String := "4341440540E2054440E205064144054042430908430708054440080540420943E20806"
theorem cover_2558591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558591 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2558591)
  decide +kernel
#print axioms cover_2558591

def state_2558626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 95) else (if j.val < 3 then 115 else (if j.val < 4 then 58 else 96)))
def hex_2558626 : String := "43414440E205074440E20540E20741440540424307070705444042080805404243E20843E208420707"
theorem cover_2558626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_2558626)
  decide +kernel
#print axioms cover_2558626

def state_2558670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 95) else (if j.val < 3 then 114 else (if j.val < 4 then 116 else 97)))
def hex_2558670 : String := "414440424306410A44400506050A4206430607400A06444042064305050606"
theorem cover_2558670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558670 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2558670)
  decide +kernel
#print axioms cover_2558670
end Mub6.Numerical.CircleFullD0.Forest
