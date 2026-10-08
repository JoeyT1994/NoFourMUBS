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
def state_1487270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 13)))
def hex_1487270 : String := "4407410640420807420607"
theorem cover_1487270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487270 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1487270)
  decide +kernel
#print axioms cover_1487270

def state_1487281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 13)))
def hex_1487281 : String := "434407410540050707"
theorem cover_1487281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1487281)
  decide +kernel
#print axioms cover_1487281

def state_1487290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_1487290 : String := "4243444140430807084043080708410640434244410640430806060644070506064441060706434407410540070707"
theorem cover_1487290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_1487290)
  decide +kernel
#print axioms cover_1487290

def state_1487341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 26)))
def hex_1487341 : String := "41404344074142400707070909434407410742400707074407074009434405414205060509"
theorem cover_1487341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1487341)
  decide +kernel
#print axioms cover_1487341

def state_1487381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
def hex_1487381 : String := "41424440430A094342410A44070A074241440707440707070A0A424440094341424407400A070742050641424405070709400A430A410A42080A44070A"
theorem cover_1487381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1487381)
  decide +kernel
#print axioms cover_1487381

def state_1487442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 27)))
def hex_1487442 : String := "4142444008430707084407074244090809"
theorem cover_1487442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1487442)
  decide +kernel
#print axioms cover_1487442

def state_1487461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 36) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
def hex_1487461 : String := "42444043424144070744070707424107070743424144070744070707424107070740430A42444106400806060A4342060A0644070A"
theorem cover_1487461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487461 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1487461)
  decide +kernel
#print axioms cover_1487461
end Mub6.Numerical.CircleFullD0.Forest
