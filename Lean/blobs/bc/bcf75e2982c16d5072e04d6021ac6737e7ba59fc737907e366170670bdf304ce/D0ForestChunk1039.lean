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
def state_1549654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 88)))
def hex_1549654 : String := "43410A0A41404244430A0606440A084244430A410640064244430A0506440A0A43070644890740420A0A4244430A41400542050A05430A41400A0A05440A0A"
theorem cover_1549654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1549654)
  decide +kernel
#print axioms cover_1549654

def state_1549717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 89)))
def hex_1549717 : String := "430A41400607400A44420A0A07"
theorem cover_1549717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549717 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1549717)
  decide +kernel
#print axioms cover_1549717

def state_1549730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
def hex_1549730 : String := "40424405050A4244430A05430A0544430A41400A42050A05430A41400A0A05"
theorem cover_1549730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1549730)
  decide +kernel
#print axioms cover_1549730

def state_1549762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
def hex_1549762 : String := "4006424443410605050644434140064206448906404205440506424405054489434140064442050A060505410605434106400644420643410605060606"
theorem cover_1549762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 61) (hex := hex_1549762)
  decide +kernel
#print axioms cover_1549762

def state_1549823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
def hex_1549823 : String := "400542054405430505"
theorem cover_1549823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1549823)
  decide +kernel
#print axioms cover_1549823

def state_1549832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 45)))
def hex_1549832 : String := "434140084442430708070740440A084442430A050A424307050A41064006444205434140054405050505420508"
theorem cover_1549832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1549832)
  decide +kernel
#print axioms cover_1549832

def state_1549877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
def hex_1549877 : String := "4042054405054205444341400542054405050505434140054405050505"
theorem cover_1549877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1549877)
  decide +kernel
#print axioms cover_1549877
end Mub6.Numerical.CircleFullD0.Forest
