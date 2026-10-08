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
def state_1619114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
def hex_1619114 : String := "44434109084142400944430906090606430909"
theorem cover_1619114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1619114)
  decide +kernel
#print axioms cover_1619114

def state_1619135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 8)))
def hex_1619135 : String := "414240440808444305080507420808"
theorem cover_1619135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1619135)
  decide +kernel
#print axioms cover_1619135

def state_1619153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
def hex_1619153 : String := "4443414208070841424009444341420807084142400644D34308410906060643084109084006440607420806430941420909420808"
theorem cover_1619153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 53) (hex := hex_1619153)
  decide +kernel
#print axioms cover_1619153

def state_1619208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 46 else 16)))
def hex_1619208 : String := "41424008050708"
theorem cover_1619208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619208 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1619208)
  decide +kernel
#print axioms cover_1619208

def state_1619218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 16)))
def hex_1619218 : String := "4443414208070841424044D34308414208080844D3430541050540070742080843084142404408080540444307410706084443054105050508"
theorem cover_1619218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1619218)
  decide +kernel
#print axioms cover_1619218

def state_1619275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 16)))
def hex_1619275 : String := "44430541420540440705050505"
theorem cover_1619275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619275 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1619275)
  decide +kernel
#print axioms cover_1619275

def state_1619288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 47 else 16)))
def hex_1619288 : String := "404407430741070744074305410705"
theorem cover_1619288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1619288)
  decide +kernel
#print axioms cover_1619288

def state_1619303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
def hex_1619303 : String := "42400808400608"
theorem cover_1619303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1619303)
  decide +kernel
#print axioms cover_1619303

def state_1619310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 17)))
def hex_1619310 : String := "43414205050541424044430541420505050505404443074107080905420508"
theorem cover_1619310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1619310)
  decide +kernel
#print axioms cover_1619310

def state_1619341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 23 else 8)))
def hex_1619341 : String := "4044064307410706444307410706430741400707400607"
theorem cover_1619341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1619341)
  decide +kernel
#print axioms cover_1619341

def state_1619364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 8)))
def hex_1619364 : String := "4240084408084006440608"
theorem cover_1619364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1619364)
  decide +kernel
#print axioms cover_1619364
end Mub6.Numerical.CircleFullD0.Forest
