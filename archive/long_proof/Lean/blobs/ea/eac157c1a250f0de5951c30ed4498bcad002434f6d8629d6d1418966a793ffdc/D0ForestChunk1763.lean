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
def state_2296287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 107 else 183)))
def hex_2296287 : String := "4140430842444108400A08410A400AC444410A0A0A0840434244090644094140090606424409414009C40944414009090941400AC4094306C4"
theorem cover_2296287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2296287)
  decide +kernel
#print axioms cover_2296287

def state_2296344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
def hex_2296344 : String := "4306424407064440090940414306090606"
theorem cover_2296344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2296344)
  decide +kernel
#print axioms cover_2296344

def state_2296361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
def hex_2296361 : String := "410806"
theorem cover_2296361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2296361)
  decide +kernel
#print axioms cover_2296361

def state_2296364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
def hex_2296364 : String := "430642064440070606"
theorem cover_2296364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2296364)
  decide +kernel
#print axioms cover_2296364

def state_2296374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
def hex_2296374 : String := "440740074143070707"
theorem cover_2296374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2296374)
  decide +kernel
#print axioms cover_2296374

def state_2296384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 44)))
def hex_2296384 : String := "400741434207444007054041434207050707410543070742074407400741434207440506060707"
theorem cover_2296384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_2296384)
  decide +kernel
#print axioms cover_2296384

def state_2296424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
def hex_2296424 : String := "414342074441400643420744074106070607414043070543420744410607410A4005430A0542070607420744060807"
theorem cover_2296424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 47) (hex := hex_2296424)
  decide +kernel
#print axioms cover_2296424

def state_2296475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 90)))
def hex_2296475 : String := "40074143080707"
theorem cover_2296475 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296475 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2296475)
  decide +kernel
#print axioms cover_2296475

def state_2296483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 54 else 91)))
def hex_2296483 : String := "414342074407414007430707070707"
theorem cover_2296483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2296483)
  decide +kernel
#print axioms cover_2296483

def state_2296500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 104) else (if j.val < 3 then 34 else (if j.val < 4 then 108 else 91)))
def hex_2296500 : String := "42440740070644404108070840414308420744084108070706"
theorem cover_2296500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_2296500)
  decide +kernel
#print axioms cover_2296500
end Mub6.Numerical.CircleFullD0.Forest
