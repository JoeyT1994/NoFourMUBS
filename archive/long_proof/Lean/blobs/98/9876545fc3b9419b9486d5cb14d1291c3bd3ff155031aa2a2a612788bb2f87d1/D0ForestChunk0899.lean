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
def state_1516265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 30)))
def hex_1516265 : String := "44404105050540414208074243440508054307074142434405060507420507"
theorem cover_1516265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516265 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1516265)
  decide +kernel
#print axioms cover_1516265

def state_1516297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 30)))
def hex_1516297 : String := "4344404105050540414243440940080A054344094009414209090909420A0941420A43440A4041420A434407400907090A0A050A05"
theorem cover_1516297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516297 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 53) (hex := hex_1516297)
  decide +kernel
#print axioms cover_1516297

def state_1516351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 54 else 30)))
def hex_1516351 : String := "444009414205070940414243090909094142434440070740410709074405404142090709410705074243440941400907090A430707"
theorem cover_1516351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516351 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1516351)
  decide +kernel
#print axioms cover_1516351

def state_1516404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 55 else 30)))
def hex_1516404 : String := "440540414209090941420543070505"
theorem cover_1516404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1516404)
  decide +kernel
#print axioms cover_1516404

def state_1516419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
def hex_1516419 : String := "41424344054041064205430605060543444041070707404107424307070741060744054041074205070642430A05434405414042430705070740420A070805"
theorem cover_1516419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1516419)
  decide +kernel
#print axioms cover_1516419

def state_1516485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 31)))
def hex_1516485 : String := "43444041084208434440084108420843444008410609050808084106420643060640080608"
theorem cover_1516485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 37) (hex := hex_1516485)
  decide +kernel
#print axioms cover_1516485
end Mub6.Numerical.CircleFullD0.Forest
