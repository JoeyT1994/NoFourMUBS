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
def state_1600206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
def hex_1600206 : String := "4143444208054240080A400541054344050805440542080508"
theorem cover_1600206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1600206)
  decide +kernel
#print axioms cover_1600206

def state_1600234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 98)))
def hex_1600234 : String := "4240414344054208050808414307074306440608400541430905434407420740050644054240050705"
theorem cover_1600234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1600234)
  decide +kernel
#print axioms cover_1600234

def state_1600276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 60 else 99)))
def hex_1600276 : String := "404143440A0A0A0A4143440742074041070707444207400A070A4344064206400A060A"
theorem cover_1600276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1600276)
  decide +kernel
#print axioms cover_1600276

def state_1600312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 99)))
def hex_1600312 : String := "4143440542400509054405420A05434442400541090805424008410A0840059F44420805420A40059F"
theorem cover_1600312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_1600312)
  decide +kernel
#print axioms cover_1600312

def state_1600354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 99)))
def hex_1600354 : String := "4344424009070942404109430744070A07400909444240050705424041090A4107074005410909"
theorem cover_1600354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1600354)
  decide +kernel
#print axioms cover_1600354

def state_1600393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 99)))
def hex_1600393 : String := "434442404107430607064041054344059F44059F074240414344074207070A4344060A0A4107069F4442400A074005410743070742400A4143070A0A9F"
theorem cover_1600393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1600393)
  decide +kernel
#print axioms cover_1600393
end Mub6.Numerical.CircleFullD0.Forest
