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
def state_1648732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
def hex_1648732 : String := "40434405054442410A0A0A42050A4305444205414043050A050505"
theorem cover_1648732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1648732)
  decide +kernel
#print axioms cover_1648732

def state_1648759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 43)))
def hex_1648759 : String := "424140430544050505054140090805"
theorem cover_1648759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648759 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1648759)
  decide +kernel
#print axioms cover_1648759

def state_1648776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 53 else 42)))
def hex_1648776 : String := "4140434407420741400A070A07434407070740434442070A0A074344070507"
theorem cover_1648776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1648776)
  decide +kernel
#print axioms cover_1648776

def state_1648809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
def hex_1648809 : String := "43444241400A070A41400A430A070A4241400A430A070A410A0A44070A"
theorem cover_1648809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1648809)
  decide +kernel
#print axioms cover_1648809

def state_1648839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 106 else 42)))
def hex_1648839 : String := "444207414043440707070740434407070707424140434407070707404344070507074140434442070A420A08440707434407080740430A0A4344070507"
theorem cover_1648839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_1648839)
  decide +kernel
#print axioms cover_1648839

def state_1648900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 107 else 42)))
def hex_1648900 : String := "440707"
theorem cover_1648900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1648900)
  decide +kernel
#print axioms cover_1648900

def state_1648903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
def hex_1648903 : String := "4043440A0A0A4344420741400A07400A074241400A050541400A43050705440707"
theorem cover_1648903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1648903)
  decide +kernel
#print axioms cover_1648903

def state_1648937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 53 else 43)))
def hex_1648937 : String := "414044434241060541400A440A060A0A4342050A0A4443060743054205414007050540440A05440505"
theorem cover_1648937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1648937)
  decide +kernel
#print axioms cover_1648937
end Mub6.Numerical.CircleFullD0.Forest
