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
def state_1607231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 200)))
def hex_1607231 : String := "4042419F084143444007429F0A4007420707444007429F0707434440074208070744080742094143440A400A0A4440429F0A0A4042090A0909"
theorem cover_1607231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1607231)
  decide +kernel
#print axioms cover_1607231

def state_1607288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 201)))
def hex_1607288 : String := "4042419F094107074209414344400A094007054440420707090909"
theorem cover_1607288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1607288)
  decide +kernel
#print axioms cover_1607288

def state_1607315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 121 else 100)))
def hex_1607315 : String := "4440420841060842094143444042094105060940420906094440060906094042090609"
theorem cover_1607315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1607315)
  decide +kernel
#print axioms cover_1607315

def state_1607350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
def hex_1607350 : String := "09"
theorem cover_1607350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607350 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1607350)
  decide +kernel
#print axioms cover_1607350

def state_1607351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 101)))
def hex_1607351 : String := "4042414344080508054107074205414344404205070905444007090909"
theorem cover_1607351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607351 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1607351)
  decide +kernel
#print axioms cover_1607351

def state_1607380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 50)))
def hex_1607380 : String := "444008420841434440060940060906084042080609"
theorem cover_1607380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1607380)
  decide +kernel
#print axioms cover_1607380

def state_1607404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 100)))
def hex_1607404 : String := "41424344070606064243070606"
theorem cover_1607404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1607404)
  decide +kernel
#print axioms cover_1607404

def state_1607418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 100)))
def hex_1607418 : String := "424344404241430A064307070A42410A430A440A0A0A4042070642410A430A4407070A4440064241430A06434440060909060640064241060606430A06"
theorem cover_1607418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607418 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1607418)
  decide +kernel
#print axioms cover_1607418
end Mub6.Numerical.CircleFullD0.Forest
