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
def state_1659985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 94)))
def hex_1659985 : String := "4241440740430A0A0744070A4144404342410707414405090A070740434241444009430807090A09420A06430842070844400A07400A4342440705080A"
theorem cover_1659985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1659985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1659985)
  decide +kernel
#print axioms cover_1659985

def state_1660046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 94)))
def hex_1660046 : String := "42074144074006070A"
theorem cover_1660046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1660046)
  decide +kernel
#print axioms cover_1660046

def state_1660055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 94)))
def hex_1660055 : String := "07"
theorem cover_1660055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1660055)
  decide +kernel
#print axioms cover_1660055

def state_1660058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 114 else 95)))
def hex_1660058 : String := "42444140430A0A43054205440741400505050A414043050A05054441404309420A06430808400A43050A41400908400A05"
theorem cover_1660058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1660058)
  decide +kernel
#print axioms cover_1660058

def state_1660107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 115 else 95)))
def hex_1660107 : String := "424441400A434207440741400A070A070A41400A4342054441400A0505050A0A4441400643424407414006070A06060A4140064342444108080806060A"
theorem cover_1660107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1660107)
  decide +kernel
#print axioms cover_1660107

def state_1660168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 95)))
def hex_1660168 : String := "4342444106050508424407414043050705054407410840430542050605"
theorem cover_1660168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1660168)
  decide +kernel
#print axioms cover_1660168

def state_1660198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
def hex_1660198 : String := "4440434241440505444005050806054308074043080608"
theorem cover_1660198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1660198)
  decide +kernel
#print axioms cover_1660198
end Mub6.Numerical.CircleFullD0.Forest
