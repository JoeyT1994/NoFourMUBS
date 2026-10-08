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
def state_1040122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_1040122 : String := "4041430A44070A4344090A4442074008074240410A430A4407050A40410A430A444240410743070707850A0A0A"
theorem cover_1040122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 45) (hex := hex_1040122)
  decide +kernel
#print axioms cover_1040122

def state_1040167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 29)))
def hex_1040167 : String := "0A"
theorem cover_1040167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040167)
  decide +kernel
#print axioms cover_1040167

def state_1040168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_1040168 : String := "0A"
theorem cover_1040168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040168)
  decide +kernel
#print axioms cover_1040168

def state_1040169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 15)))
def hex_1040169 : String := "0A"
theorem cover_1040169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1040169)
  decide +kernel
#print axioms cover_1040169

def state_1040170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
def hex_1040170 : String := "424440430505050544404341074442074043410744074207404341074407424043070507850707070742054043410544420540430A05050505430505070705"
theorem cover_1040170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 63) (hex := hex_1040170)
  decide +kernel
#print axioms cover_1040170

def state_1040239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
def hex_1040239 : String := "4244404142064406430A0542060606404105420544430805050A444041444243090609420A0A44094243090609410A0940410A424443080808080A"
theorem cover_1040239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1040239)
  decide +kernel
#print axioms cover_1040239

def state_1040298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
def hex_1040298 : String := "424406054440414344064205050606064005410506"
theorem cover_1040298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040298 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1040298)
  decide +kernel
#print axioms cover_1040298

def state_1040319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_1040319 : String := "434244064041420644060842060606440940414244430806084409074244060707094206440606"
theorem cover_1040319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1040319)
  decide +kernel
#print axioms cover_1040319

def state_1040358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_1040358 : String := "414342060A064342060606"
theorem cover_1040358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040358 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1040358)
  decide +kernel
#print axioms cover_1040358
end Mub6.Numerical.CircleFullD0.Forest
