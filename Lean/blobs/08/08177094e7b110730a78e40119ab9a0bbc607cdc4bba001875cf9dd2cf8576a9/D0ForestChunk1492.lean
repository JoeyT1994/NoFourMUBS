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
def state_1658776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
def hex_1658776 : String := "41444042430608094206430641444009060944400A06400906400742060944400A420643060A4007420543050A"
theorem cover_1658776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1658776)
  decide +kernel
#print axioms cover_1658776

def state_1658821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
def hex_1658821 : String := "41444008420843414440084307074008434206410944400806094208414405400505080A08400AEA0A"
theorem cover_1658821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 41) (hex := hex_1658821)
  decide +kernel
#print axioms cover_1658821

def state_1658862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 23)))
def hex_1658862 : String := "0A"
theorem cover_1658862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1658862)
  decide +kernel
#print axioms cover_1658862

def state_1658863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_1658863 : String := "4144080A08"
theorem cover_1658863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1658863)
  decide +kernel
#print axioms cover_1658863

def state_1658872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_1658872 : String := "434241090A0606"
theorem cover_1658872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1658872)
  decide +kernel
#print axioms cover_1658872

def state_1658882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 96) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 46)))
def hex_1658882 : String := "44400543424105440540090705054009434209094241440540054309054440050740094309074105440509"
theorem cover_1658882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1658882)
  decide +kernel
#print axioms cover_1658882

def state_1658926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 92)))
def hex_1658926 : String := "400A4342414407400A070A4144054005430905444007070A4207410507"
theorem cover_1658926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1658926)
  decide +kernel
#print axioms cover_1658926

def state_1658955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 93)))
def hex_1658955 : String := "400A434241444009420609090A094241440A0A0A414440054342070505400943090A0A"
theorem cover_1658955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658955 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1658955)
  decide +kernel
#print axioms cover_1658955

def state_1658990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 46)))
def hex_1658990 : String := "41440509444005434241054405090505400643094241090606"
theorem cover_1658990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658990 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1658990)
  decide +kernel
#print axioms cover_1658990
end Mub6.Numerical.CircleFullD0.Forest
