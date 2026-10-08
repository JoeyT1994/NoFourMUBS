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
def state_1601203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 50)))
def hex_1601203 : String := "4442084008414344420840080A0A0A08420A400A4143440A050905"
theorem cover_1601203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1601203)
  decide +kernel
#print axioms cover_1601203

def state_1601230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 51)))
def hex_1601230 : String := "40410643420A0606414342054440410606050542440A0506430542054440060505"
theorem cover_1601230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1601230)
  decide +kernel
#print axioms cover_1601230

def state_1601263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
def hex_1601263 : String := "42440A0A444006414344420A06420A06064344080A08400641064342050606"
theorem cover_1601263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1601263)
  decide +kernel
#print axioms cover_1601263

def state_1601294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1601294 : String := "434208444008414344080508084008054208440808"
theorem cover_1601294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1601294)
  decide +kernel
#print axioms cover_1601294

def state_1601316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 13)))
def hex_1601316 : String := "424041440505050540414443424443050505444307400741070507424443400705400605054443070606430506444305050541444305050505"
theorem cover_1601316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1601316)
  decide +kernel
#print axioms cover_1601316

def state_1601373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 13)))
def hex_1601373 : String := "4240050540410644080541444342054006054205060505"
theorem cover_1601373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1601373)
  decide +kernel
#print axioms cover_1601373

def state_1601401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_1601401 : String := "4243440542434009410909400541050909440542434005410544054243080505050505"
theorem cover_1601401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601401 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_1601401)
  decide +kernel
#print axioms cover_1601401
end Mub6.Numerical.CircleFullD0.Forest
