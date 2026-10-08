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
def state_1496957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
def hex_1496957 : String := "4406424043064144060A06434144060A44064240064306410A0606414442400643410A0641444240064306410905060A880642400A430A410A880A8806"
theorem cover_1496957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1496957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 61) (hex := hex_1496957)
  decide +kernel
#print axioms cover_1496957

def state_1497018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
def hex_1497018 : String := "440606"
theorem cover_1497018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497018 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1497018)
  decide +kernel
#print axioms cover_1497018

def state_1497021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 14)))
def hex_1497021 : String := "440640064306414244060A0606"
theorem cover_1497021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1497021)
  decide +kernel
#print axioms cover_1497021

def state_1497035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 14)))
def hex_1497035 : String := "4142440843084044080908084244084308404108080808"
theorem cover_1497035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1497035)
  decide +kernel
#print axioms cover_1497035

def state_1497063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 28)))
def hex_1497063 : String := "44084142090808"
theorem cover_1497063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1497063)
  decide +kernel
#print axioms cover_1497063

def state_1497070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 28)))
def hex_1497070 : String := "444142404308440541050508084205084142094043084408410707084240434442050842090844054205410905430805404308440841070808"
theorem cover_1497070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1497070)
  decide +kernel
#print axioms cover_1497070

def state_1497127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1497127 : String := "43084408410908"
theorem cover_1497127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1497127)
  decide +kernel
#print axioms cover_1497127

def state_1497136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
def hex_1497136 : String := "444109420908410942090A"
theorem cover_1497136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1497136)
  decide +kernel
#print axioms cover_1497136

def state_1497147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
def hex_1497147 : String := "44414209400A0942404309444209410940430909090909404344080A4441420907424043074407070707410A424043090A0907430844080941094209400A09"
theorem cover_1497147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1497147)
  decide +kernel
#print axioms cover_1497147

def state_1497210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
def hex_1497210 : String := "09"
theorem cover_1497210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1497210)
  decide +kernel
#print axioms cover_1497210
end Mub6.Numerical.CircleFullD0.Forest
