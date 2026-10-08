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
def state_1566525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
def hex_1566525 : String := "4443094208084342080808"
theorem cover_1566525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566525 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1566525)
  decide +kernel
#print axioms cover_1566525

def state_1566536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
def hex_1566536 : String := "4443424140440943050806060942410A40440A0A0A4105400906434241440505444043060806400807054241084440080A40080A41054440080A08"
theorem cover_1566536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1566536)
  decide +kernel
#print axioms cover_1566536

def state_1566596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
def hex_1566596 : String := "44094309424108400544050809"
theorem cover_1566596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1566596)
  decide +kernel
#print axioms cover_1566596

def state_1566609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 63) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
def hex_1566609 : String := "444306424140440643060A0606064342414406400906060642414440434208060843060A400843060A4440430605064043060506414440090640080606"
theorem cover_1566609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1566609)
  decide +kernel
#print axioms cover_1566609

def state_1566671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 44)))
def hex_1566671 : String := "4306424140440643060A060606"
theorem cover_1566671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566671 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1566671)
  decide +kernel
#print axioms cover_1566671

def state_1566685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 45)))
def hex_1566685 : String := "424144064007060606"
theorem cover_1566685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1566685)
  decide +kernel
#print axioms cover_1566685

def state_1566695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
def hex_1566695 : String := "41444043424144060A06060A43060A4043424144400A07074406404306090641070642090A43420606094440430642050606404306424109054144060A0606"
theorem cover_1566695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1566695)
  decide +kernel
#print axioms cover_1566695
end Mub6.Numerical.CircleFullD0.Forest
