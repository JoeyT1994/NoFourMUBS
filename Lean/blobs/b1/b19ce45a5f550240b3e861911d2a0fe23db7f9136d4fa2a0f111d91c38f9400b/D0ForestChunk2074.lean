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
def state_2578222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 18)))
def hex_2578222 : String := "43404109440909410A4443420A400A0A0A43420A40090A0A4009410844420843090808"
theorem cover_2578222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2578222)
  decide +kernel
#print axioms cover_2578222

def state_2578259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
def hex_2578259 : String := "41440A09444243090943400541070705420943400541090905"
theorem cover_2578259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2578259)
  decide +kernel
#print axioms cover_2578259

def state_2578285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
def hex_2578285 : String := "440A0A"
theorem cover_2578285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2578285)
  decide +kernel
#print axioms cover_2578285

def state_2578289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 36)))
def hex_2578289 : String := "424340410A440743420907094106440643420A070A4041094409090643404106070606"
theorem cover_2578289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2578289)
  decide +kernel
#print axioms cover_2578289

def state_2578325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 37)))
def hex_2578325 : String := "43404109440909410A4443420A400A0A0A434208400A080A40094108440A08"
theorem cover_2578325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2578325)
  decide +kernel
#print axioms cover_2578325

def state_2578357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 96 else 37)))
def hex_2578357 : String := "4041440A09444243400941094407090943404105054107074005064209434009DC094144060A44424340410A44070A060606DC"
theorem cover_2578357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578357 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2578357)
  decide +kernel
#print axioms cover_2578357

def state_2578408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 95 else (if j.val < 4 then 97 else 37)))
def hex_2578408 : String := "40410944090941064406420A06"
theorem cover_2578408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578408 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2578408)
  decide +kernel
#print axioms cover_2578408

def state_2578421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2578421 : String := "40410505410A444243400906060642094340050605"
theorem cover_2578421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578421 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2578421)
  decide +kernel
#print axioms cover_2578421

def state_2578443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 19)))
def hex_2578443 : String := "434009444108434207400908080709"
theorem cover_2578443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2578443)
  decide +kernel
#print axioms cover_2578443
end Mub6.Numerical.CircleFullD0.Forest
