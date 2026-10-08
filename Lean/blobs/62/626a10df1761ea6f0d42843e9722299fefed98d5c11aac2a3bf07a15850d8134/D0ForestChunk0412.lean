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
def state_1036362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 104 else (if j.val < 4 then 75 else 124)))
def hex_1036362 : String := "40414243444007410842080740070744400706400708074243444007094007410707444007064007410742060707414208084243090609"
theorem cover_1036362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036362 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1036362)
  decide +kernel
#print axioms cover_1036362

def state_1036417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 104 else (if j.val < 4 then 75 else 125)))
def hex_1036417 : String := "4041424307070742430707074108424308444041084208070608430707"
theorem cover_1036417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036417 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1036417)
  decide +kernel
#print axioms cover_1036417

def state_1036446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 105 else (if j.val < 4 then 37 else 62)))
def hex_1036446 : String := "430707"
theorem cover_1036446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036446 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1036446)
  decide +kernel
#print axioms cover_1036446

def state_1036449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 63)))
def hex_1036449 : String := "400741420807424344400708400608444007410842080740070807"
theorem cover_1036449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1036449)
  decide +kernel
#print axioms cover_1036449

def state_1036476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 31)))
def hex_1036476 : String := "07"
theorem cover_1036476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1036476)
  decide +kernel
#print axioms cover_1036476

def state_1036479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 31)))
def hex_1036479 : String := "444041424306070709094006414243064409060609"
theorem cover_1036479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1036479)
  decide +kernel
#print axioms cover_1036479

def state_1036502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
def hex_1036502 : String := "4142430744400741070707074243080807"
theorem cover_1036502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1036502)
  decide +kernel
#print axioms cover_1036502

def state_1036522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 74 else 62)))
def hex_1036522 : String := "4409400909"
theorem cover_1036522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1036522)
  decide +kernel
#print axioms cover_1036522

def state_1036528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 75 else 124)))
def hex_1036528 : String := "4041424309440940074142060709070909"
theorem cover_1036528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036528 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1036528)
  decide +kernel
#print axioms cover_1036528

def state_1036545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 75 else 125)))
def hex_1036545 : String := "4041424307070742430744400709070741424309444041424309060709064041424307070742430707074108090909"
theorem cover_1036545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036545 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1036545)
  decide +kernel
#print axioms cover_1036545

def state_1036592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 37 else 62)))
def hex_1036592 : String := "09"
theorem cover_1036592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036592 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1036592)
  decide +kernel
#print axioms cover_1036592

def state_1036593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 62)))
def hex_1036593 : String := "09"
theorem cover_1036593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1036593)
  decide +kernel
#print axioms cover_1036593

def state_1036595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 63)))
def hex_1036595 : String := "410707"
theorem cover_1036595 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036595 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1036595)
  decide +kernel
#print axioms cover_1036595
end Mub6.Numerical.CircleFullD0.Forest
