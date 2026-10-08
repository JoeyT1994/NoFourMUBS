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
def state_1533315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 103 else (if j.val < 4 then 39 else 34)))
def hex_1533315 : String := "414344404207410A074208410A084042414344074006090707410A434407400742070A0742410908410A43080A0A43440740070807"
theorem cover_1533315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1533315)
  decide +kernel
#print axioms cover_1533315

def state_1533369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 35)))
def hex_1533369 : String := "42410607414344400642064105070506434407400642070707"
theorem cover_1533369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533369 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1533369)
  decide +kernel
#print axioms cover_1533369

def state_1533395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 53) else (if j.val < 3 then 102 else (if j.val < 4 then 39 else 35)))
def hex_1533395 : String := "414344400609060943440740070807"
theorem cover_1533395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1533395)
  decide +kernel
#print axioms cover_1533395

def state_1533411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 106) else (if j.val < 3 then 103 else (if j.val < 4 then 39 else 35)))
def hex_1533411 : String := "4344404241064344070506410543050A424109430809410543050A050A"
theorem cover_1533411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533411 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1533411)
  decide +kernel
#print axioms cover_1533411

def state_1533440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 107) else (if j.val < 3 then 103 else (if j.val < 4 then 39 else 35)))
def hex_1533440 : String := "43444042074143440705070742084143080A084042414305060741054305074241430544080508410543054407054407400742070A"
theorem cover_1533440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533440 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1533440)
  decide +kernel
#print axioms cover_1533440

def state_1533494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 17)))
def hex_1533494 : String := "4109430809"
theorem cover_1533494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1533494)
  decide +kernel
#print axioms cover_1533494

def state_1533500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 17)))
def hex_1533500 : String := "434440420941074305440805090509"
theorem cover_1533500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1533500)
  decide +kernel
#print axioms cover_1533500

def state_1533516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 17)))
def hex_1533516 : String := "440840420841050808"
theorem cover_1533516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1533516)
  decide +kernel
#print axioms cover_1533516

def state_1533526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 34)))
def hex_1533526 : String := "40424109084143440840420841090808094308440540070808"
theorem cover_1533526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1533526)
  decide +kernel
#print axioms cover_1533526
end Mub6.Numerical.CircleFullD0.Forest
