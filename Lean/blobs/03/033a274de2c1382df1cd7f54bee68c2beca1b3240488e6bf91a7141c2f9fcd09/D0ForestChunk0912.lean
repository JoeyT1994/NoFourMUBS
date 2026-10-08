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
def state_1519356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 47) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 31)))
def hex_1519356 : String := "404243090909424344054140420A090A0A05430705"
theorem cover_1519356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1519356)
  decide +kernel
#print axioms cover_1519356

def state_1519377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 29 else 15)))
def hex_1519377 : String := "440505"
theorem cover_1519377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1519377)
  decide +kernel
#print axioms cover_1519377

def state_1519380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 15)))
def hex_1519380 : String := "434407410742400707074405410707"
theorem cover_1519380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1519380)
  decide +kernel
#print axioms cover_1519380

def state_1519395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 7)))
def hex_1519395 : String := "44054041420507054142050705"
theorem cover_1519395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1519395)
  decide +kernel
#print axioms cover_1519395

def state_1519410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
def hex_1519410 : String := "4344404142064306064205434405404106050505060606"
theorem cover_1519410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1519410)
  decide +kernel
#print axioms cover_1519410

def state_1519433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
def hex_1519433 : String := "434442404143070743440707074106430706400707424041064344420607060606404107070644424007060706"
theorem cover_1519433 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519433 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1519433)
  decide +kernel
#print axioms cover_1519433

def state_1519479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
def hex_1519479 : String := "434405414042054344050605060A05"
theorem cover_1519479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519479 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1519479)
  decide +kernel
#print axioms cover_1519479

def state_1519496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
def hex_1519496 : String := "414240434405410705050A07420508"
theorem cover_1519496 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519496 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1519496)
  decide +kernel
#print axioms cover_1519496

def state_1519511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
def hex_1519511 : String := "41424043444107420507414206074240430605060744050643440606064007074240434405414240434405410605050507420508050A400707"
theorem cover_1519511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1519511)
  decide +kernel
#print axioms cover_1519511

def state_1519568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 7)))
def hex_1519568 : String := "44414205070541424005050705"
theorem cover_1519568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519568 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1519568)
  decide +kernel
#print axioms cover_1519568
end Mub6.Numerical.CircleFullD0.Forest
