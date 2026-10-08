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
def state_1523996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 115) else (if j.val < 3 then 178 else (if j.val < 4 then 65 else 88)))
def hex_1523996 : String := "4441438306438340420606424409094441064383060941430706438340420606420909"
theorem cover_1523996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1523996)
  decide +kernel
#print axioms cover_1523996

def state_1524031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 115) else (if j.val < 3 then 179 else (if j.val < 4 then 65 else 88)))
def hex_1524031 : String := "444143070643400A428307404206064244410643830641064307060A41074307400607"
theorem cover_1524031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1524031)
  decide +kernel
#print axioms cover_1524031

def state_1524066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 115) else (if j.val < 3 then 89 else (if j.val < 4 then 65 else 88)))
def hex_1524066 : String := "4244410943834042090909410743070944410543074042440807070707"
theorem cover_1524066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1524066)
  decide +kernel
#print axioms cover_1524066

def state_1524095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 89)))
def hex_1524095 : String := "410743074042444107430708070707"
theorem cover_1524095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1524095)
  decide +kernel
#print axioms cover_1524095

def state_1524110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1524110 : String := "42444109434042094405070909094441054307404209070707"
theorem cover_1524110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524110 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1524110)
  decide +kernel
#print axioms cover_1524110

def state_1524137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 44)))
def hex_1524137 : String := "44410943404209440909090909"
theorem cover_1524137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1524137)
  decide +kernel
#print axioms cover_1524137

def state_1524150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 44)))
def hex_1524150 : String := "44414340060906434042444106434006090609444106434006420606060642094441094340420909090909400609410943404208080909"
theorem cover_1524150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1524150)
  decide +kernel
#print axioms cover_1524150

def state_1524205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
def hex_1524205 : String := "4209440909"
theorem cover_1524205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1524205)
  decide +kernel
#print axioms cover_1524205

def state_1524210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1524210 : String := "410743404442410743070807070740444208080809"
theorem cover_1524210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1524210)
  decide +kernel
#print axioms cover_1524210

def state_1524233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
def hex_1524233 : String := "07"
theorem cover_1524233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1524233)
  decide +kernel
#print axioms cover_1524233

def state_1524235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 32 else 44)))
def hex_1524235 : String := "404244410743074042440A070707070707"
theorem cover_1524235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1524235)
  decide +kernel
#print axioms cover_1524235
end Mub6.Numerical.CircleFullD0.Forest
