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
def state_1035889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1035889 : String := "404105420505414205054243444041054205050840050805430705"
theorem cover_1035889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1035889)
  decide +kernel
#print axioms cover_1035889

def state_1035916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_1035916 : String := "43074440074143070743070707"
theorem cover_1035916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1035916)
  decide +kernel
#print axioms cover_1035916

def state_1035933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
def hex_1035933 : String := "4142434440074107070744400741420A070A0707424344084007074408400741070807"
theorem cover_1035933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1035933)
  decide +kernel
#print axioms cover_1035933

def state_1035971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 30)))
def hex_1035971 : String := "4409404142430744400741070707074243094409070741424305440540410809050909"
theorem cover_1035971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1035971)
  decide +kernel
#print axioms cover_1035971

def state_1036007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 60)))
def hex_1036007 : String := "40414243440A4007414243050A07090A43074409074243090A0941424309060909"
theorem cover_1036007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1036007)
  decide +kernel
#print axioms cover_1036007

def state_1036042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 100) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
def hex_1036042 : String := "4243444007414243074440074107070707424307440A070707444007414243440A070607420A0740074107424307070707"
theorem cover_1036042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036042 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1036042)
  decide +kernel
#print axioms cover_1036042

def state_1036091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 61)))
def hex_1036091 : String := "4243444007094007410707440A4007414243070707420A0707"
theorem cover_1036091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1036091)
  decide +kernel
#print axioms cover_1036091
end Mub6.Numerical.CircleFullD0.Forest
