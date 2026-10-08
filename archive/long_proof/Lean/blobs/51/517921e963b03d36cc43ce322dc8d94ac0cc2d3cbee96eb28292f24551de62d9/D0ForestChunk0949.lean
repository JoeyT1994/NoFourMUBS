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
def state_1528246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 44)))
def hex_1528246 : String := "434042440909444109430809090909"
theorem cover_1528246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528246 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1528246)
  decide +kernel
#print axioms cover_1528246

def state_1528261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 44)))
def hex_1528261 : String := "4340424441430609064143060906444143064042080806064143064042090906064206064042440A0944410943400506054109430505420909"
theorem cover_1528261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1528261)
  decide +kernel
#print axioms cover_1528261

def state_1528318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 45)))
def hex_1528318 : String := "4109434042444109060944410706074206064042090909"
theorem cover_1528318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1528318)
  decide +kernel
#print axioms cover_1528318

def state_1528341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
def hex_1528341 : String := "41430709434044424108080708444241070607074008444209410743070908"
theorem cover_1528341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1528341)
  decide +kernel
#print axioms cover_1528341

def state_1528374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 22)))
def hex_1528374 : String := "43074042444106434042440606070740064209070707424441074307090707"
theorem cover_1528374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1528374)
  decide +kernel
#print axioms cover_1528374

def state_1528406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 16 else 22)))
def hex_1528406 : String := "404244414307400A07430A400A4244410A064107060A070A42444107060707"
theorem cover_1528406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1528406)
  decide +kernel
#print axioms cover_1528406

def state_1528442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 44)))
def hex_1528442 : String := "404244410A0A41070A0A424441430740424441060A07070743400A4244080707404244410A0A410A0A0A42444108084107430709440807074441070A07"
theorem cover_1528442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1528442)
  decide +kernel
#print axioms cover_1528442
end Mub6.Numerical.CircleFullD0.Forest
