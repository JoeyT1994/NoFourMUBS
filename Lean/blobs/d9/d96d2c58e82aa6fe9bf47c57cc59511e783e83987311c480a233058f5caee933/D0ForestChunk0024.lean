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
def state_943209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
def hex_943209 : String := "44430542400A07400A4405074342404109054144050705404144430542050543050905414405080542400907404109440A0941440707440707"
theorem cover_943209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943209 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_943209)
  decide +kernel
#print axioms cover_943209

def state_943266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 26)))
def hex_943266 : String := "4405430542400A05400A05"
theorem cover_943266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_943266)
  decide +kernel
#print axioms cover_943266

def state_943277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 17 else 26)))
def hex_943277 : String := "42400A41440607074041440A090A4144434207400A060643420940090709440A43420A400A070A"
theorem cover_943277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_943277)
  decide +kernel
#print axioms cover_943277

def state_943316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 27)))
def hex_943316 : String := "43424009410909404109444306090641444342094006080908444342400905404106050542094009410944050843080942094009410909"
theorem cover_943316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_943316)
  decide +kernel
#print axioms cover_943316

def state_943378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
def hex_943378 : String := "434240064441060606064240440805444105080940064441060806"
theorem cover_943378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943378 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_943378)
  decide +kernel
#print axioms cover_943378

def state_943405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 52)))
def hex_943405 : String := "434240064441430642080643050806400644410605064240440841060644410808414306094342400644080606420940080840440806440841064306420806"
theorem cover_943405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_943405)
  decide +kernel
#print axioms cover_943405
end Mub6.Numerical.CircleFullD0.Forest
