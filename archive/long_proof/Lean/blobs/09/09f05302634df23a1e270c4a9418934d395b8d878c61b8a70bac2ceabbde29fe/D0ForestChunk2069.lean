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
def state_2576995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 45 else (if j.val < 4 then 98 else 33)))
def hex_2576995 : String := "424009410844434205400705080840410944070941440743074208074407434240070507420907"
theorem cover_2576995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2576995)
  decide +kernel
#print axioms cover_2576995

def state_2577034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 45 else (if j.val < 4 then 99 else 33)))
def hex_2577034 : String := "42400908400941440608444342090742080643420840070708"
theorem cover_2577034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2577034)
  decide +kernel
#print axioms cover_2577034

def state_2577061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 17)))
def hex_2577061 : String := "4206414409094443060906"
theorem cover_2577061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2577061)
  decide +kernel
#print axioms cover_2577061

def state_2577073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 44 else (if j.val < 4 then 48 else 17)))
def hex_2577073 : String := "4105440505"
theorem cover_2577073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2577073)
  decide +kernel
#print axioms cover_2577073

def state_2577079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 45 else (if j.val < 4 then 48 else 17)))
def hex_2577079 : String := "4443420505420A40410909410505434205054208400905"
theorem cover_2577079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2577079)
  decide +kernel
#print axioms cover_2577079

def state_2577102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 45 else (if j.val < 4 then 48 else 17)))
def hex_2577102 : String := "44434205404144050506054240090540410909414405054443054205074305420540090543420540060542400605400941084443050806"
theorem cover_2577102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577102 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2577102)
  decide +kernel
#print axioms cover_2577102

def state_2577158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 17)))
def hex_2577158 : String := "4209410909"
theorem cover_2577158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2577158)
  decide +kernel
#print axioms cover_2577158

def state_2577163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 17)))
def hex_2577163 : String := "42410808414443420840090842084009080844434240090840094144434205400705080844434208400707420809084208400941080843420840090808"
theorem cover_2577163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_2577163)
  decide +kernel
#print axioms cover_2577163

def state_2577225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
def hex_2577225 : String := "44404209094208430606400908"
theorem cover_2577225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2577225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2577225)
  decide +kernel
#print axioms cover_2577225
end Mub6.Numerical.CircleFullD0.Forest
