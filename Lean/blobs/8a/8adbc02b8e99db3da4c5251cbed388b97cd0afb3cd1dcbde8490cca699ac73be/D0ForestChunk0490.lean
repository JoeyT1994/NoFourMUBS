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
def state_1306366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 67 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 116 else 90)))
def hex_1306366 : String := "42444143050A05094441430540420A07054305404205440541070505410709"
theorem cover_1306366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306366 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1306366)
  decide +kernel
#print axioms cover_1306366

def state_1306397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 117 else 90)))
def hex_1306397 : String := "40420A44410A43400606060A4244410A060A444143400A420A444108060A064340060606410A43400A420944410A060906"
theorem cover_1306397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306397 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1306397)
  decide +kernel
#print axioms cover_1306397

def state_1306446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 89) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 90)))
def hex_1306446 : String := "4309400606"
theorem cover_1306446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1306446)
  decide +kernel
#print axioms cover_1306446

def state_1306451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 91)))
def hex_1306451 : String := "4143090A09"
theorem cover_1306451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1306451)
  decide +kernel
#print axioms cover_1306451

def state_1306459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 116 else 90)))
def hex_1306459 : String := "40424441074307080707424441074305404244050707050707"
theorem cover_1306459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1306459)
  decide +kernel
#print axioms cover_1306459

def state_1306485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 66 else 88) else (if j.val < 3 then 97 else (if j.val < 4 then 117 else 90)))
def hex_1306485 : String := "42444143070543400842060606410743070544410743070607"
theorem cover_1306485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306485 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1306485)
  decide +kernel
#print axioms cover_1306485

def state_1306511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 67 else 88) else (if j.val < 3 then 194 else (if j.val < 4 then 117 else 90)))
def hex_1306511 : String := "444143404244070707424441074305060707064340420606420606064143070A43404244410706070742444107064107080706"
theorem cover_1306511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1306511)
  decide +kernel
#print axioms cover_1306511

def state_1306562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 67 else 88) else (if j.val < 3 then 195 else (if j.val < 4 then 117 else 90)))
def hex_1306562 : String := "444107434007420607064107430706"
theorem cover_1306562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1306562)
  decide +kernel
#print axioms cover_1306562

def state_1306577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 89) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 90)))
def hex_1306577 : String := "4340084244050808404206084244064143060606440608"
theorem cover_1306577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306577 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1306577)
  decide +kernel
#print axioms cover_1306577

def state_1306600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 91)))
def hex_1306600 : String := "4143074042440707074244410743070A0707430808"
theorem cover_1306600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1306600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1306600)
  decide +kernel
#print axioms cover_1306600
end Mub6.Numerical.CircleFullD0.Forest
