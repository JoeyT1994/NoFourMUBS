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
def state_1484676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
def hex_1484676 : String := "434441080509444142054043084408420508080541094205404341094205054142054405090509"
theorem cover_1484676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1484676)
  decide +kernel
#print axioms cover_1484676

def state_1484718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_1484718 : String := "400A0A"
theorem cover_1484718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1484718)
  decide +kernel
#print axioms cover_1484718

def state_1484723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
def hex_1484723 : String := "43420A0709"
theorem cover_1484723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1484723)
  decide +kernel
#print axioms cover_1484723

def state_1484730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 25)))
def hex_1484730 : String := "4140440A43420541404405434205418005050A05050A05"
theorem cover_1484730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1484730)
  decide +kernel
#print axioms cover_1484730

def state_1484754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1484754 : String := "404407434241404407434241804044054342050705440A430A050707440743420A07074044074342050707440A430A0707074443080743420A0707"
theorem cover_1484754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484754 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1484754)
  decide +kernel
#print axioms cover_1484754

def state_1484813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1484813 : String := "4044094342050707440A43420A070A"
theorem cover_1484813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1484813)
  decide +kernel
#print axioms cover_1484813

def state_1484828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 25)))
def hex_1484828 : String := "420A07"
theorem cover_1484828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1484828)
  decide +kernel
#print axioms cover_1484828

def state_1484831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1484831 : String := "440A430A0A"
theorem cover_1484831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1484831)
  decide +kernel
#print axioms cover_1484831

def state_1484836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
def hex_1484836 : String := "420540440A4341420540050A05050A"
theorem cover_1484836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1484836)
  decide +kernel
#print axioms cover_1484836

def state_1484853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 13)))
def hex_1484853 : String := "404344410605060606"
theorem cover_1484853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1484853)
  decide +kernel
#print axioms cover_1484853

def state_1484866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 26)))
def hex_1484866 : String := "4140434442054140434442054106050606064005430505080806404344050505434405420541060505"
theorem cover_1484866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1484866)
  decide +kernel
#print axioms cover_1484866
end Mub6.Numerical.CircleFullD0.Forest
