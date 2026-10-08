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
def state_1035404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_1035404 : String := "41424307070742430744400741070A0707"
theorem cover_1035404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1035404)
  decide +kernel
#print axioms cover_1035404

def state_1035426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
def hex_1035426 : String := "4142430707074243074440074107070707"
theorem cover_1035426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1035426)
  decide +kernel
#print axioms cover_1035426

def state_1035444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 48) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 30)))
def hex_1035444 : String := "424344404108420807080844404108420807080843074440070807"
theorem cover_1035444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1035444)
  decide +kernel
#print axioms cover_1035444

def state_1035474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 60)))
def hex_1035474 : String := "40414243444007050844400741084205054007080742434405400705444007054007414208070907414208084243054405404105050509"
theorem cover_1035474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1035474)
  decide +kernel
#print axioms cover_1035474

def state_1035529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 49) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 61)))
def hex_1035529 : String := "40414208074243074440070707074108420808"
theorem cover_1035529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1035529)
  decide +kernel
#print axioms cover_1035529

def state_1035551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 98) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 60)))
def hex_1035551 : String := "4243444041420807424307070741084208084007084440414206070A064041070708430707"
theorem cover_1035551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1035551)
  decide +kernel
#print axioms cover_1035551

def state_1035588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 99) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 60)))
def hex_1035588 : String := "4243444041420A070A414243050643070642060940074142080742434405400705440640070607440A4041070741420606420606430707"
theorem cover_1035588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1035588 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1035588)
  decide +kernel
#print axioms cover_1035588
end Mub6.Numerical.CircleFullD0.Forest
