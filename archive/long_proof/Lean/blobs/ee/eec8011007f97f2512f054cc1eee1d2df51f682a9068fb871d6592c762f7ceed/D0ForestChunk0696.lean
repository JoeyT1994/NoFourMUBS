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
def state_1467879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 21)))
def hex_1467879 : String := "4143400A42440A0A0A400642444106430A0606440A0A430A400A424441430A070741430A400642060A430A400742050A0A"
theorem cover_1467879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1467879)
  decide +kernel
#print axioms cover_1467879

def state_1467928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
def hex_1467928 : String := "4042074407064244074143060607444143400642074106070607410643404206064244074106074441430606074106430A0506"
theorem cover_1467928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1467928)
  decide +kernel
#print axioms cover_1467928

def state_1467979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
def hex_1467979 : String := "434042070A4244074143400742074407090707440741430940074207090907"
theorem cover_1467979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1467979)
  decide +kernel
#print axioms cover_1467979

def state_1468013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1468013 : String := "420808"
theorem cover_1468013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1468013)
  decide +kernel
#print axioms cover_1468013

def state_1468021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1468021 : String := "4244060606"
theorem cover_1468021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1468021)
  decide +kernel
#print axioms cover_1468021

def state_1468029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1468029 : String := "43400642060606"
theorem cover_1468029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468029 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1468029)
  decide +kernel
#print axioms cover_1468029

def state_1468038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1468038 : String := "42440606440606"
theorem cover_1468038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1468038)
  decide +kernel
#print axioms cover_1468038

def state_1468046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 44)))
def hex_1468046 : String := "444143830643834006424441060741064383054441064383064106438306414340064406060643400844830808"
theorem cover_1468046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1468046)
  decide +kernel
#print axioms cover_1468046

def state_1468091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 44)))
def hex_1468091 : String := "44414340064206060643400A42830A4006424441064383064106438306440A0641074340080708"
theorem cover_1468091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1468091)
  decide +kernel
#print axioms cover_1468091

def state_1468130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
def hex_1468130 : String := "400642440606440606"
theorem cover_1468130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1468130)
  decide +kernel
#print axioms cover_1468130

def state_1468139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1468139 : String := "410608"
theorem cover_1468139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468139 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1468139)
  decide +kernel
#print axioms cover_1468139
end Mub6.Numerical.CircleFullD0.Forest
