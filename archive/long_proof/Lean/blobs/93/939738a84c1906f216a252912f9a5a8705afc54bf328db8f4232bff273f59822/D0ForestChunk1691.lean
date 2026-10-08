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
def state_2278998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 59)))
def hex_2278998 : String := "414440420A05054042430A41440A40070A0A43050942430A41050A05440A400A0A"
theorem cover_2278998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2278998)
  decide +kernel
#print axioms cover_2278998

def state_2279032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 112) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 59)))
def hex_2279032 : String := "444042434144050A0A41440A060A0942430A41070A43050740424341444006064006060A0609424341404405060A0A064341054009054107400606"
theorem cover_2279032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2279032)
  decide +kernel
#print axioms cover_2279032

def state_2279091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 113) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 59)))
def hex_2279091 : String := "4440080A40420A09420A430A4140060608"
theorem cover_2279091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2279091)
  decide +kernel
#print axioms cover_2279091

def state_2279108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
def hex_2279108 : String := "4440080A404207430708420A430A4144080A08"
theorem cover_2279108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2279108)
  decide +kernel
#print axioms cover_2279108

def state_2279129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
def hex_2279129 : String := "404243414440080840060644080641060643080842434144400A064006064408064106064341440740080708410708"
theorem cover_2279129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2279129)
  decide +kernel
#print axioms cover_2279129

def state_2279176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 59)))
def hex_2279176 : String := "4042434106060643410909410606424341060606434144404206090740060644400808400606410606"
theorem cover_2279176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2279176)
  decide +kernel
#print axioms cover_2279176

def state_2279217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
def hex_2279217 : String := "44400808404205084206434144084006060806"
theorem cover_2279217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2279217)
  decide +kernel
#print axioms cover_2279217
end Mub6.Numerical.CircleFullD0.Forest
