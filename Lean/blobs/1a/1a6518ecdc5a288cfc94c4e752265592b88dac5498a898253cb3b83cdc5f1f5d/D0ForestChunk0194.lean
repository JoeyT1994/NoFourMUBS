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
def state_984068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 21)))
def hex_984068 : String := "4144420540430706434105440605410506054406420540064344060506"
theorem cover_984068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_984068)
  decide +kernel
#print axioms cover_984068

def state_984099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 21)))
def hex_984099 : String := "4442054043410744424305054307400741050A05410544420540430709434105440A05410505054341054442050A0541050505"
theorem cover_984099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984099 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_984099)
  decide +kernel
#print axioms cover_984099

def state_984152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 42)))
def hex_984152 : String := "404341054406054105064341050505"
theorem cover_984152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_984152)
  decide +kernel
#print axioms cover_984152

def state_984169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 33 else (if j.val < 4 then 100 else 42)))
def hex_984169 : String := "41444243400841050840414406050641054406054308400841440A0A084205430740074105444205070544424308060842434006084006054308400808"
theorem cover_984169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_984169)
  decide +kernel
#print axioms cover_984169

def state_984233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 66 else (if j.val < 4 then 101 else 84)))
def hex_984233 : String := "40064341050605"
theorem cover_984233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_984233)
  decide +kernel
#print axioms cover_984233

def state_984240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 67 else (if j.val < 4 then 101 else 84)))
def hex_984240 : String := "40434144420608070641440606064341444240430A05050A4205400705444206084205400808414442054009430A09054406420540064341050605"
theorem cover_984240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_984240)
  decide +kernel
#print axioms cover_984240

def state_984299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 33 else (if j.val < 4 then 101 else 85)))
def hex_984299 : String := "42054043074105440605430505"
theorem cover_984299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_984299)
  decide +kernel
#print axioms cover_984299
end Mub6.Numerical.CircleFullD0.Forest
