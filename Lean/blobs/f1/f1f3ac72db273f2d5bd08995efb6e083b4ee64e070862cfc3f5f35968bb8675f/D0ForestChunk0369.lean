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
def state_1025910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 49)))
def hex_1025910 : String := "4044434241400A050941400A44094305054009090A43424105400A0541400A05400A444309080808444309084342054105404405050508"
theorem cover_1025910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1025910)
  decide +kernel
#print axioms cover_1025910

def state_1025965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 49)))
def hex_1025965 : String := "404443090943420A41400A0A0A0A4409430909"
theorem cover_1025965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1025965)
  decide +kernel
#print axioms cover_1025965

def state_1025987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 98)))
def hex_1025987 : String := "434241404443090943420A070A4409430909400A0941404443060907064044090A09420A0A"
theorem cover_1025987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025987 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1025987)
  decide +kernel
#print axioms cover_1025987

def state_1026024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 99)))
def hex_1026024 : String := "4342414044430707074443420506420806430608400A4443090943424105400A0541064007060A410740440A0744430606430606420A0A"
theorem cover_1026024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1026024)
  decide +kernel
#print axioms cover_1026024

def state_1026079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 49)))
def hex_1026079 : String := "444342090642090943424106404409434205060806064208410606"
theorem cover_1026079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1026079)
  decide +kernel
#print axioms cover_1026079

def state_1026106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 49)))
def hex_1026106 : String := "40444342090909434241400A4409434209090A0A41400A4409434209060A400A090A440943420909420909"
theorem cover_1026106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026106 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1026106)
  decide +kernel
#print axioms cover_1026106

def state_1026149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 49)))
def hex_1026149 : String := "420A41400A444342080908080A"
theorem cover_1026149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1026149)
  decide +kernel
#print axioms cover_1026149
end Mub6.Numerical.CircleFullD0.Forest
