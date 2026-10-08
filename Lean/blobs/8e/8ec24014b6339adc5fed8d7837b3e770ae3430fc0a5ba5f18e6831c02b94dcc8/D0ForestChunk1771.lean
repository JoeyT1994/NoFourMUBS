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
def state_2298216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 91)))
def hex_2298216 : String := "41434042440941080944094143050A0908404244410A09410A090A42440841084306400906444105054107434009054009054340090640094209440909"
theorem cover_2298216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2298216)
  decide +kernel
#print axioms cover_2298216

def state_2298277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 45)))
def hex_2298277 : String := "44414305054305094143404244054105090505400A0743400942090540094244094143070909440507"
theorem cover_2298277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2298277)
  decide +kernel
#print axioms cover_2298277

def state_2298320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 90)))
def hex_2298320 : String := "4140430A0A43424405414009050944054105094244410A09410A090A4009430909"
theorem cover_2298320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2298320)
  decide +kernel
#print axioms cover_2298320

def state_2298355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
def hex_2298355 : String := "430A0A"
theorem cover_2298355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2298355)
  decide +kernel
#print axioms cover_2298355

def state_2298358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
def hex_2298358 : String := "43424441400A43050A40090941400A43080A404309094342080942090A44410A4009430509410A400A430A0A4244410A4009430909410A400A430A0A0A"
theorem cover_2298358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298358 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_2298358)
  decide +kernel
#print axioms cover_2298358

def state_2298419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
def hex_2298419 : String := "4043090A43424409094409414009090942440941400909094409410A09"
theorem cover_2298419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2298419)
  decide +kernel
#print axioms cover_2298419
end Mub6.Numerical.CircleFullD0.Forest
