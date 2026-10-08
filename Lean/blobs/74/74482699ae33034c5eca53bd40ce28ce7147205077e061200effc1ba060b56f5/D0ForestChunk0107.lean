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
def state_963206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 54)))
def hex_963206 : String := "440A4041420A070A414243440A40074142434407050507420A07440840054105064344080744084007414243070507420707420A43090A"
theorem cover_963206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_963206)
  decide +kernel
#print axioms cover_963206

def state_963261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 54)))
def hex_963261 : String := "430944094007414243074408070709"
theorem cover_963261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963261 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_963261)
  decide +kernel
#print axioms cover_963261

def state_963276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_963276 : String := "424344054007090A43094408400709"
theorem cover_963276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_963276)
  decide +kernel
#print axioms cover_963276

def state_963291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
def hex_963291 : String := "4007414244434007410707400741424344400741070705050742430744400741050705074306400741050707424443074007414243070A074207070707"
theorem cover_963291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_963291)
  decide +kernel
#print axioms cover_963291

def state_963353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_963353 : String := "400A4142434408400A41420A0A0A0A434408400A414243440840074107070843440707080A0A0A"
theorem cover_963353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963353 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 39) (hex := hex_963353)
  decide +kernel
#print axioms cover_963353

def state_963392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
def hex_963392 : String := "4041420507420A074142434440054105420543440505050505434440074142050742070705054243440A400541050744050543440707440A05"
theorem cover_963392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_963392)
  decide +kernel
#print axioms cover_963392
end Mub6.Numerical.CircleFullD0.Forest
