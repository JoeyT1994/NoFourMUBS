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
def state_1628873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
def hex_1628873 : String := "4240064406430842080606"
theorem cover_1628873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1628873)
  decide +kernel
#print axioms cover_1628873

def state_1628884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 32)))
def hex_1628884 : String := "4142400644094341420909420906090606"
theorem cover_1628884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628884 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1628884)
  decide +kernel
#print axioms cover_1628884

def state_1628905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
def hex_1628905 : String := "44434142400A44430541050505404406084443054142050606080841420A40064443410A06060A0A4341420509080A"
theorem cover_1628905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1628905)
  decide +kernel
#print axioms cover_1628905

def state_1628952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
def hex_1628952 : String := "44434105054142404443050A050540444341050541420A060643050A054205404406050543054142050505"
theorem cover_1628952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1628952)
  decide +kernel
#print axioms cover_1628952

def state_1628996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
def hex_1628996 : String := "44434142400644060806060643414209070841420A0606"
theorem cover_1628996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1628996)
  decide +kernel
#print axioms cover_1628996

def state_1629020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 66)))
def hex_1629020 : String := "434142404443054105050505074205054142404406434105050644430541090505400644064305064240060506"
theorem cover_1629020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1629020)
  decide +kernel
#print axioms cover_1629020

def state_1629065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 67)))
def hex_1629065 : String := "434105054142404443050A0505404406430506054205400605"
theorem cover_1629065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629065 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1629065)
  decide +kernel
#print axioms cover_1629065

def state_1629090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
def hex_1629090 : String := "4240084408054006440608"
theorem cover_1629090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1629090)
  decide +kernel
#print axioms cover_1629090
end Mub6.Numerical.CircleFullD0.Forest
