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
def state_1644193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1644193 : String := "43400744424107070707400544054241054340050A0505"
theorem cover_1644193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1644193)
  decide +kernel
#print axioms cover_1644193

def state_1644217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 102 else 40)))
def hex_1644217 : String := "4007440707"
theorem cover_1644217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1644217)
  decide +kernel
#print axioms cover_1644217

def state_1644223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 40)))
def hex_1644223 : String := "44054241050706"
theorem cover_1644223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1644223)
  decide +kernel
#print axioms cover_1644223

def state_1644231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 80)))
def hex_1644231 : String := "42414340054405070543400707400544054208084105430705"
theorem cover_1644231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1644231)
  decide +kernel
#print axioms cover_1644231

def state_1644256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 81)))
def hex_1644256 : String := "4241430740054405424105430705054307400744424143070543074005070742410707074143070507"
theorem cover_1644256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1644256)
  decide +kernel
#print axioms cover_1644256

def state_1644299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 41)))
def hex_1644299 : String := "4309400944424106430640420609064109430940050A09"
theorem cover_1644299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1644299)
  decide +kernel
#print axioms cover_1644299

def state_1644323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 102 else 41)))
def hex_1644323 : String := "40074442060707"
theorem cover_1644323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644323 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1644323)
  decide +kernel
#print axioms cover_1644323

def state_1644330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 41)))
def hex_1644330 : String := "404442410943074007A0090944424143064042440606444109090906434042060706A0414309400944420A41090A0943400707A04241064306A009"
theorem cover_1644330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644330 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1644330)
  decide +kernel
#print axioms cover_1644330

def state_1644389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 41)))
def hex_1644389 : String := "41094307400944424109430740074407070709"
theorem cover_1644389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1644389)
  decide +kernel
#print axioms cover_1644389

def state_1644408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
def hex_1644408 : String := "4143094005440509430740094442414307054307400644060741090709"
theorem cover_1644408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644408 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1644408)
  decide +kernel
#print axioms cover_1644408

def state_1644437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 21)))
def hex_1644437 : String := "09"
theorem cover_1644437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1644437)
  decide +kernel
#print axioms cover_1644437

def state_1644439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 10)))
def hex_1644439 : String := "4007440705"
theorem cover_1644439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644439 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1644439)
  decide +kernel
#print axioms cover_1644439
end Mub6.Numerical.CircleFullD0.Forest
