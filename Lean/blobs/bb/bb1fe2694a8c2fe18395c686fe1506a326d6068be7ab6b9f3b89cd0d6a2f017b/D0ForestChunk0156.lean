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
def state_974966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 42) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 28)))
def hex_974966 : String := "434442404108430A08074041064306080A0A440805"
theorem cover_974966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_974966)
  decide +kernel
#print axioms cover_974966

def state_974991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 43) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
def hex_974991 : String := "4143440842050A440805434442080842400505404143440606440805434442080807440805410A430944080544084205404105434408050541054344080505"
theorem cover_974991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_974991)
  decide +kernel
#print axioms cover_974991

def state_975054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 56)))
def hex_975054 : String := "41430A074344090A44074205404105434408050507"
theorem cover_975054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_975054)
  decide +kernel
#print axioms cover_975054

def state_975077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 86) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_975077 : String := "4344080A4408420808"
theorem cover_975077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_975077)
  decide +kernel
#print axioms cover_975077

def state_975086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 87) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_975086 : String := "4344420808424041064306440806410A094006094408424041084344084205080841084344084205080840410843440606084108434408424006080608"
theorem cover_975086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_975086)
  decide +kernel
#print axioms cover_975086

def state_975147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 56)))
def hex_975147 : String := "41430A44070A430944084240414308074309084107094041080909"
theorem cover_975147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_975147)
  decide +kernel
#print axioms cover_975147
end Mub6.Numerical.CircleFullD0.Forest
