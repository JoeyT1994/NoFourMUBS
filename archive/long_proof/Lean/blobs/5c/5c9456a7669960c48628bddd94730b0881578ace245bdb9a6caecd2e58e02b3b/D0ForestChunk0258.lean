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
def state_999398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 42)))
def hex_999398 : String := "43404442074143050705424143404441080541084305070708074143400544054209054009084305074407420741430A07074044074208434108070807"
theorem cover_999398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999398 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_999398)
  decide +kernel
#print axioms cover_999398

def state_999459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 27 else 42)))
def hex_999459 : String := "430707"
theorem cover_999459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_999459)
  decide +kernel
#print axioms cover_999459

def state_999463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 43)))
def hex_999463 : String := "4143404442084108434044070807070808084340440741420743404406080707070707"
theorem cover_999463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_999463)
  decide +kernel
#print axioms cover_999463

def state_999502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 86)))
def hex_999502 : String := "4241084340444307074342410807050844070808414340094409060843400544054243050805404442410805054208410805440708"
theorem cover_999502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_999502)
  decide +kernel
#print axioms cover_999502

def state_999555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 87)))
def hex_999555 : String := "424108434044434208410805080808084143400906084340444243054108050542434106050843050944424341060508064208064044080808"
theorem cover_999555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_999555)
  decide +kernel
#print axioms cover_999555

def state_999612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
def hex_999612 : String := "444208410843404405420705060742084106430608"
theorem cover_999612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_999612)
  decide +kernel
#print axioms cover_999612

def state_999633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 43)))
def hex_999633 : String := "4044080808"
theorem cover_999633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_999633)
  decide +kernel
#print axioms cover_999633

def state_999641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 86)))
def hex_999641 : String := "42414307070741430540050705"
theorem cover_999641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999641 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_999641)
  decide +kernel
#print axioms cover_999641
end Mub6.Numerical.CircleFullD0.Forest
