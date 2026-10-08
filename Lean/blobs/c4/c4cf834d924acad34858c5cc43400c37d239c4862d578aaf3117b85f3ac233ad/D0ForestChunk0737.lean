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
def state_1477757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 116)))
def hex_1477757 : String := "4240434144090909070A4009434144084240090808080A"
theorem cover_1477757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477757 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1477757)
  decide +kernel
#print axioms cover_1477757

def state_1477780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 117)))
def hex_1477780 : String := "424043050743414442400A0A400543050505440905414407070A40054341050541444240050A050505"
theorem cover_1477780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477780 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1477780)
  decide +kernel
#print axioms cover_1477780

def state_1477821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 91 else 58)))
def hex_1477821 : String := "4144420740074341070707420740074341070707440A420740074341070707"
theorem cover_1477821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1477821)
  decide +kernel
#print axioms cover_1477821

def state_1477855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 116)))
def hex_1477855 : String := "424043414409094408420A4043080A08414409090A434109080A404341440842404308080808084144084209404308410808084408420A084308410808"
theorem cover_1477855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1477855)
  decide +kernel
#print axioms cover_1477855

def state_1477917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 90 else 117)))
def hex_1477917 : String := "404341094442064043060606064106440A0606"
theorem cover_1477917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1477917)
  decide +kernel
#print axioms cover_1477917

def state_1477938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 180 else 117)))
def hex_1477938 : String := "41444209404308410908084206400506444240430841440805080808420605"
theorem cover_1477938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1477938)
  decide +kernel
#print axioms cover_1477938

def state_1477969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 181 else 117)))
def hex_1477969 : String := "414442094043090909420640430509064442404341440A060A0A0A40434108054144080508084206400506"
theorem cover_1477969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1477969)
  decide +kernel
#print axioms cover_1477969
end Mub6.Numerical.CircleFullD0.Forest
