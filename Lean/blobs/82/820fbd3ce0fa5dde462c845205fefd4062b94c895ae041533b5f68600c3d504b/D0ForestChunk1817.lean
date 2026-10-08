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
def state_2309237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 91)))
def hex_2309237 : String := "414342440A0A444041060A0A404109430A080A42440A40080A440640060943420A440A0A4208440A08"
theorem cover_2309237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309237 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2309237)
  decide +kernel
#print axioms cover_2309237

def state_2309278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 45)))
def hex_2309278 : String := "42440740074108074440064106074006410608"
theorem cover_2309278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2309278)
  decide +kernel
#print axioms cover_2309278

def state_2309297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 45)))
def hex_2309297 : String := "43420744074007410A0707"
theorem cover_2309297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309297 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2309297)
  decide +kernel
#print axioms cover_2309297

def state_2309308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 22)))
def hex_2309308 : String := "44414305420A4044050A05430A074143420A404441050A410A0A0A420A40440A410A0A0A430A0A"
theorem cover_2309308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309308 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2309308)
  decide +kernel
#print axioms cover_2309308

def state_2309347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 22)))
def hex_2309347 : String := "42400744070A4044074108074441430A07074143420A404406080A0A0A"
theorem cover_2309347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2309347)
  decide +kernel
#print axioms cover_2309347

def state_2309376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
def hex_2309376 : String := "434207400744070A07"
theorem cover_2309376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309376 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2309376)
  decide +kernel
#print axioms cover_2309376

def state_2309388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 23)))
def hex_2309388 : String := "44404143424407054440070A050805410A0A40054143060805"
theorem cover_2309388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2309388)
  decide +kernel
#print axioms cover_2309388

def state_2309416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
def hex_2309416 : String := "4342444041080541430A080A400541434205080505444041080541434244404108080A40080944400909090843420A4440080A08084005414309080508"
theorem cover_2309416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2309416)
  decide +kernel
#print axioms cover_2309416

def state_2309477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 46)))
def hex_2309477 : String := "4342054440054108050505"
theorem cover_2309477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309477 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2309477)
  decide +kernel
#print axioms cover_2309477
end Mub6.Numerical.CircleFullD0.Forest
