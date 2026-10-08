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
def state_1613791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
def hex_1613791 : String := "444142094340440A08084044410A0909090909"
theorem cover_1613791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1613791)
  decide +kernel
#print axioms cover_1613791

def state_1613810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
def hex_1613810 : String := "40444142094344400641420906094006090609414209060909"
theorem cover_1613810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1613810)
  decide +kernel
#print axioms cover_1613810

def state_1613838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 50)))
def hex_1613838 : String := "4142430A4440060A4006080842434440410A42430A090A0A40410A4209070A44404106420906410A094006410A090A"
theorem cover_1613838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613838 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1613838)
  decide +kernel
#print axioms cover_1613838

def state_1613885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 51)))
def hex_1613885 : String := "4142430806064243404441070706440A05400609430806"
theorem cover_1613885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1613885)
  decide +kernel
#print axioms cover_1613885

def state_1613908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_1613908 : String := "44410842430A4044090909084108420908"
theorem cover_1613908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613908 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1613908)
  decide +kernel
#print axioms cover_1613908

def state_1613925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_1613925 : String := "4044410642434440064106060606060644414243400A084006080642090A414243080606420906"
theorem cover_1613925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1613925)
  decide +kernel
#print axioms cover_1613925

def state_1613965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1613965 : String := "4142434044074207080640444207074241070941080A440742070708424340440641420607060609430A40440A0A0A"
theorem cover_1613965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1613965)
  decide +kernel
#print axioms cover_1613965
end Mub6.Numerical.CircleFullD0.Forest
