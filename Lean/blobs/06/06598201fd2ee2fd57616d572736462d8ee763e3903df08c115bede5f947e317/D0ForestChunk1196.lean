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
def state_1587483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 54 else 51)))
def hex_1587483 : String := "4142440A0A44404341420707420A44094305080A43070740434142050842054405050A430505424405054440434142054443050A05050A4305054043050505"
theorem cover_1587483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587483 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1587483)
  decide +kernel
#print axioms cover_1587483

def state_1587546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 55 else 51)))
def hex_1587546 : String := "410A0A"
theorem cover_1587546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587546 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1587546)
  decide +kernel
#print axioms cover_1587546

def state_1587549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
def hex_1587549 : String := "4341070541074205440505"
theorem cover_1587549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1587549)
  decide +kernel
#print axioms cover_1587549

def state_1587561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1587561 : String := "4043410942440940430909430609094109424409400A430909094341084206084108424407430707440808"
theorem cover_1587561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1587561)
  decide +kernel
#print axioms cover_1587561

def state_1587607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
def hex_1587607 : String := "424440430841080908404308080808"
theorem cover_1587607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587607 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1587607)
  decide +kernel
#print axioms cover_1587607

def state_1587624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
def hex_1587624 : String := "4043414244094308400905084244060544094340090540090541420A0942440A0A44094009410809434108064108420508"
theorem cover_1587624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1587624)
  decide +kernel
#print axioms cover_1587624

def state_1587673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 103)))
def hex_1587673 : String := "4043414244050508420544430505054142440A05440808420544404143080643050A0540410605054305410805"
theorem cover_1587673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1587673)
  decide +kernel
#print axioms cover_1587673
end Mub6.Numerical.CircleFullD0.Forest
