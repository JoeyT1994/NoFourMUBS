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
def state_1023542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 74 else (if j.val < 4 then 102 else 102)))
def hex_1023542 : String := "41404344420508054442064140060506420541050643054405054006434408054442054140060506420581"
theorem cover_1023542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023542 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1023542)
  decide +kernel
#print axioms cover_1023542

def state_1023585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 75 else (if j.val < 4 then 102 else 102)))
def hex_1023585 : String := "4140430844084241404307440606430544050581410708430A44424140440805054008090842410581410A8140084308440881"
theorem cover_1023585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023585 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1023585)
  decide +kernel
#print axioms cover_1023585

def state_1023636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 103)))
def hex_1023636 : String := "42414043054405050540064305440505414043444241054006050707444241400705810709430A444205410A81420541050540434408098143440A0A81"
theorem cover_1023636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1023636)
  decide +kernel
#print axioms cover_1023636

def state_1023699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1023699 : String := "4140444342064140064406050606434206414006050606444342054105400605420741404409050540060743054205410581400644430606430606"
theorem cover_1023699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1023699)
  decide +kernel
#print axioms cover_1023699
end Mub6.Numerical.CircleFullD0.Forest
