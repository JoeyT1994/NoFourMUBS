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
def state_1015200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
def hex_1015200 : String := "42400A4441434208400A44430508080A0A0A40444143050A050A4441430542400A444143050805410805050541434240050605420A0743050A"
theorem cover_1015200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1015200)
  decide +kernel
#print axioms cover_1015200

def state_1015257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
def hex_1015257 : String := "420A400A44414342400A0A40444107050744410905410705420A400A4441080A0843420A050A41434208070A0A"
theorem cover_1015257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1015257)
  decide +kernel
#print axioms cover_1015257

def state_1015302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 44)))
def hex_1015302 : String := "43420A050A"
theorem cover_1015302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015302 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1015302)
  decide +kernel
#print axioms cover_1015302

def state_1015307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 45)))
def hex_1015307 : String := "4143420A40074441070A070A0A"
theorem cover_1015307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1015307)
  decide +kernel
#print axioms cover_1015307

def state_1015323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 44)))
def hex_1015323 : String := "424044410843420705070808404441430542404441080508080505414306420806430542400A08054441060506"
theorem cover_1015323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1015323)
  decide +kernel
#print axioms cover_1015323

def state_1015368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 20 else (if j.val < 4 then 59 else 44)))
def hex_1015368 : String := "42084044414342084044410805410642080506084342400A07054208404441420805050A44410805084108434208400A0608444108434207050808"
theorem cover_1015368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1015368)
  decide +kernel
#print axioms cover_1015368
end Mub6.Numerical.CircleFullD0.Forest
