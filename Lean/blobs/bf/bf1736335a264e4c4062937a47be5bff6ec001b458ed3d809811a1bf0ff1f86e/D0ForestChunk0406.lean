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
def state_1034900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
def hex_1034900 : String := "404142440A4341400A420A090A0A440943070A420A09414244064309060909"
theorem cover_1034900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1034900)
  decide +kernel
#print axioms cover_1034900

def state_1034935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 29)))
def hex_1034935 : String := "44414007424443050A43074140074208074007420A0707400742440A43050A0707"
theorem cover_1034935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1034935)
  decide +kernel
#print axioms cover_1034935

def state_1034968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 29)))
def hex_1034968 : String := "44414007420A43070A0A414007424344414007084007420807074441090A090740074243440A070A07"
theorem cover_1034968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1034968)
  decide +kernel
#print axioms cover_1034968

def state_1035009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 29)))
def hex_1035009 : String := "07"
theorem cover_1035009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1035009)
  decide +kernel
#print axioms cover_1035009

def state_1035010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 49) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
def hex_1035010 : String := "424344400741420A070940074142430707074243070A07440A400741420A070A07"
theorem cover_1035010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1035010)
  decide +kernel
#print axioms cover_1035010

def state_1035046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 29)))
def hex_1035046 : String := "44404142440543054108064405430541080942440505094142050505404142080742434405084440414208074205054105050843074409074108420808"
theorem cover_1035046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1035046)
  decide +kernel
#print axioms cover_1035046

def state_1035107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 29)))
def hex_1035107 : String := "44404106060640414243080643080842434406404108420807060643444007060744064007064108420606"
theorem cover_1035107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1035107)
  decide +kernel
#print axioms cover_1035107
end Mub6.Numerical.CircleFullD0.Forest
