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
def state_1307048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 45)))
def hex_1307048 : String := "42444108064143080606444143404206440541080505060641434042444108050A44414305060541434005050A43050605400606430506"
theorem cover_1307048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1307048)
  decide +kernel
#print axioms cover_1307048

def state_1307103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 22)))
def hex_1307103 : String := "444305064340420541440509050506"
theorem cover_1307103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1307103)
  decide +kernel
#print axioms cover_1307103

def state_1307120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 44)))
def hex_1307120 : String := "43404241440943050905090509"
theorem cover_1307120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1307120)
  decide +kernel
#print axioms cover_1307120

def state_1307134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 58 else 45)))
def hex_1307134 : String := "4042444143400705404244090707424405410705094305404244060808054107430540084205084441070A0742054405410705"
theorem cover_1307134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1307134)
  decide +kernel
#print axioms cover_1307134

def state_1307186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 45)))
def hex_1307186 : String := "4244410906414340424441070607074244410706410743070644070740054206064340064206060644094109430806"
theorem cover_1307186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1307186)
  decide +kernel
#print axioms cover_1307186

def state_1307233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 45)))
def hex_1307233 : String := "4244410906414340424441090641074305064409070540420609420609434042050605064409410943404206080506"
theorem cover_1307233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1307233)
  decide +kernel
#print axioms cover_1307233

def state_1307280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 45) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 22)))
def hex_1307280 : String := "4443050643404241440508050805400606"
theorem cover_1307280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1307280 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1307280)
  decide +kernel
#print axioms cover_1307280
end Mub6.Numerical.CircleFullD0.Forest
