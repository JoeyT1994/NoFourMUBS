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
def state_2336001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_2336001 : String := "40410542430507434408054407404105070505"
theorem cover_2336001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2336001)
  decide +kernel
#print axioms cover_2336001

def state_2336022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_2336022 : String := "440542434041054405430509054041050A05434041054405050509"
theorem cover_2336022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336022 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2336022)
  decide +kernel
#print axioms cover_2336022

def state_2336049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_2336049 : String := "444243050A43404105440505054041440505440A0A41050A4243400A0A0A43404441050A41420A4307070A0A404441420A090A41090A0A"
theorem cover_2336049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2336049)
  decide +kernel
#print axioms cover_2336049

def state_2336104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_2336104 : String := "410544050A"
theorem cover_2336104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2336104)
  decide +kernel
#print axioms cover_2336104

def state_2336110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_2336110 : String := "444005410505404105424305440540440507050505"
theorem cover_2336110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2336110)
  decide +kernel
#print axioms cover_2336110

def state_2336132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_2336132 : String := "40414243054405050542434408404105080544084041420505080843440805440840424105084105080541054243050808"
theorem cover_2336132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2336132)
  decide +kernel
#print axioms cover_2336132

def state_2336183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2336183 : String := "424405430507440505"
theorem cover_2336183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336183 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2336183)
  decide +kernel
#print axioms cover_2336183

def state_2336194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
def hex_2336194 : String := "43404105420505054041420505424443054041050705434044050505404441050A41050A0544430540420505054305404244050505054105420505"
theorem cover_2336194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2336194)
  decide +kernel
#print axioms cover_2336194
end Mub6.Numerical.CircleFullD0.Forest
