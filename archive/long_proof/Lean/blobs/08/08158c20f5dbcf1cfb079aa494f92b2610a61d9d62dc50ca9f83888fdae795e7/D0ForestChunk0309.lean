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
def state_1011644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 44)))
def hex_1011644 : String := "414243400A070A43404441420A43050A0A0A4407414243400A0707434044420705420A4105054407420706400A074207430707400A44070A420743400A0707"
theorem cover_1011644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011644 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1011644)
  decide +kernel
#print axioms cover_1011644

def state_1011707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_1011707 : String := "4142430A0843400A444142084340440A0A0608420A43400A090A41080A0A0A"
theorem cover_1011707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011707 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1011707)
  decide +kernel
#print axioms cover_1011707

def state_1011738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_1011738 : String := "44414207430707074142084340444108420709080808420743404407090707"
theorem cover_1011738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1011738)
  decide +kernel
#print axioms cover_1011738

def state_1011773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 44)))
def hex_1011773 : String := "43404405424143050505054405424143054044050A4407060505400A44420741430540050705424143400A08080A414340054405060A0A"
theorem cover_1011773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1011773)
  decide +kernel
#print axioms cover_1011773

def state_1011828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 44)))
def hex_1011828 : String := "430540054405410505"
theorem cover_1011828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1011828)
  decide +kernel
#print axioms cover_1011828

def state_1011837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
def hex_1011837 : String := "4243050A05"
theorem cover_1011837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1011837)
  decide +kernel
#print axioms cover_1011837
end Mub6.Numerical.CircleFullD0.Forest
