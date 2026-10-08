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
def state_2582592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 16)))
def hex_2582592 : String := "40420905424341444340090808080A4108084341444243400941444342080908080A0A0A424309090A0A05"
theorem cover_2582592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 43) (hex := hex_2582592)
  decide +kernel
#print axioms cover_2582592

def state_2582635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 17)))
def hex_2582635 : String := "4042090A424341080608434144420843400541080805080A410805"
theorem cover_2582635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_2582635)
  decide +kernel
#print axioms cover_2582635

def state_2582662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
def hex_2582662 : String := "0A"
theorem cover_2582662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582662 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2582662)
  decide +kernel
#print axioms cover_2582662

def state_2582664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
def hex_2582664 : String := "4144424340070A0A0A4243400A41440A430A4240060A0A0A400A414442430A0A0A4243400A0A40090A0A0A430A0A0A"
theorem cover_2582664 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582664 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2582664)
  decide +kernel
#print axioms cover_2582664

def state_2582711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
def hex_2582711 : String := "41440A4240054341440A42430A05050A05050A"
theorem cover_2582711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_2582711)
  decide +kernel
#print axioms cover_2582711

def state_2582731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
def hex_2582731 : String := "4206434144400542060A0606410505"
theorem cover_2582731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2582731)
  decide +kernel
#print axioms cover_2582731

def state_2582747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 9)))
def hex_2582747 : String := "430641444042060942084344410806060840060806"
theorem cover_2582747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2582747)
  decide +kernel
#print axioms cover_2582747

def state_2582771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
def hex_2582771 : String := "424340064441430642060A060640064441424306400608430A0A06414206430640064408060643400A440A0A400A440A4142430A0A0A0A"
theorem cover_2582771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582771 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2582771)
  decide +kernel
#print axioms cover_2582771

def state_2582826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
def hex_2582826 : String := "420643064006444142430606430A050606"
theorem cover_2582826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2582826)
  decide +kernel
#print axioms cover_2582826

def state_2582843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
def hex_2582843 : String := "06"
theorem cover_2582843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2582843)
  decide +kernel
#print axioms cover_2582843
end Mub6.Numerical.CircleFullD0.Forest
