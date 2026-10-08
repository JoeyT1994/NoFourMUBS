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
def state_2288647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 46)))
def hex_2288647 : String := "4344410509410A4042434409410A090A09424344054105094409410A0907440A0A"
theorem cover_2288647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2288647)
  decide +kernel
#print axioms cover_2288647

def state_2288681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
def hex_2288681 : String := "0A"
theorem cover_2288681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2288681)
  decide +kernel
#print axioms cover_2288681

def state_2288683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 47)))
def hex_2288683 : String := "424443410A40054207440A0A0A43410A05050A"
theorem cover_2288683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288683 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2288683)
  decide +kernel
#print axioms cover_2288683

def state_2288704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 49 else 94)))
def hex_2288704 : String := "434108404244430841080508444341084007060A4341084005060A08410A400A424443080A0844434108400A060A434108060A"
theorem cover_2288704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288704 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2288704)
  decide +kernel
#print axioms cover_2288704

def state_2288755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 36 else (if j.val < 4 then 49 else 95)))
def hex_2288755 : String := "434108404205444308050506410A400542050A"
theorem cover_2288755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288755 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2288755)
  decide +kernel
#print axioms cover_2288755

def state_2288775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 94)))
def hex_2288775 : String := "43410A40424443410A40094209090A43410A400A42060A0A0A424443410740420606064107400A06434107064107400A06070A"
theorem cover_2288775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2288775)
  decide +kernel
#print axioms cover_2288775

def state_2288826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 37 else (if j.val < 4 then 49 else 95)))
def hex_2288826 : String := "43410A40424443410A4005060A43410805050A424443064107064306410706070A"
theorem cover_2288826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2288826)
  decide +kernel
#print axioms cover_2288826

def state_2288861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 46)))
def hex_2288861 : String := "4105404243054405410A090505"
theorem cover_2288861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2288861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2288861)
  decide +kernel
#print axioms cover_2288861
end Mub6.Numerical.CircleFullD0.Forest
