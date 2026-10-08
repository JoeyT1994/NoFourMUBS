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
def state_1342988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 38 else 48)))
def hex_1342988 : String := "4044410A42430A0A4340440941090809404409410942080909410A420A430A40440A0A0A44410A4206090A"
theorem cover_1342988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1342988)
  decide +kernel
#print axioms cover_1342988

def state_1343031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 48)))
def hex_1343031 : String := "4044410742430A074340050905410A420A4340050A054441074207090A"
theorem cover_1343031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1343031)
  decide +kernel
#print axioms cover_1343031

def state_1343060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 45 else (if j.val < 4 then 19 else 48)))
def hex_1343060 : String := "43404409410942430909090940444105090509"
theorem cover_1343060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1343060)
  decide +kernel
#print axioms cover_1343060

def state_1343081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 38 else 48)))
def hex_1343081 : String := "404441420643400805404406080606414208430840084441420609060808440641420543054044064109050505"
theorem cover_1343081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343081 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1343081)
  decide +kernel
#print axioms cover_1343081

def state_1343128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 62 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 96)))
def hex_1343128 : String := "41424306400806434044410906414208050844064109064005440641050642064306400506"
theorem cover_1343128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343128 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1343128)
  decide +kernel
#print axioms cover_1343128

def state_1343165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 62 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 97)))
def hex_1343165 : String := "414208434008444142080908410A0840054441054206054105084208430808"
theorem cover_1343165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1343165)
  decide +kernel
#print axioms cover_1343165

def state_1343196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 39 else 48)))
def hex_1343196 : String := "44414206430606064142430607434044094109420609094044410906410A420609094206430606"
theorem cover_1343196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1343196)
  decide +kernel
#print axioms cover_1343196
end Mub6.Numerical.CircleFullD0.Forest
