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
def state_2570348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 62 else (if j.val < 4 then 56 else 92)))
def hex_2570348 : String := "41404342440741400709074441060741090A4207060A40070A"
theorem cover_2570348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570348 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2570348)
  decide +kernel
#print axioms cover_2570348

def state_2570373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 62 else (if j.val < 4 then 56 else 93)))
def hex_2570373 : String := "414043424441090A4109400509094244410907090943420A090A4043420744074140050905070A"
theorem cover_2570373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2570373)
  decide +kernel
#print axioms cover_2570373

def state_2570412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 63 else (if j.val < 4 then 56 else 46)))
def hex_2570412 : String := "4441404309064309094043424407410A074441060741090A4207060A4140090940434244410907090942444109050509430A09"
theorem cover_2570412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570412 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_2570412)
  decide +kernel
#print axioms cover_2570412

def state_2570463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 57 else 46)))
def hex_2570463 : String := "42444140060A074140084309080844410608410908"
theorem cover_2570463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2570463)
  decide +kernel
#print axioms cover_2570463

def state_2570484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 46)))
def hex_2570484 : String := "4342440740070A4440070A4041430505050A08"
theorem cover_2570484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2570484)
  decide +kernel
#print axioms cover_2570484

def state_2570503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 46)))
def hex_2570503 : String := "4143420A440A4041090A09420A440A0A0A"
theorem cover_2570503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570503 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2570503)
  decide +kernel
#print axioms cover_2570503

def state_2570521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 47)))
def hex_2570521 : String := "414342444140430909094005430A0A4109054441094005090942444140080908410905444109080943424440050A0544400541430505050505"
theorem cover_2570521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2570521)
  decide +kernel
#print axioms cover_2570521

def state_2570578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 47)))
def hex_2570578 : String := "414342444041090A0A4009060942440A40090909430608"
theorem cover_2570578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570578 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2570578)
  decide +kernel
#print axioms cover_2570578
end Mub6.Numerical.CircleFullD0.Forest
