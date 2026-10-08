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
def state_2336254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
def hex_2336254 : String := "40444105424305404405430541050A050541074243070707440507"
theorem cover_2336254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_2336254)
  decide +kernel
#print axioms cover_2336254

def state_2336281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
def hex_2336281 : String := "4044414209054243404441050A41090A0A404441090A0909434044050705404442090509094107424309090744410542050509"
theorem cover_2336281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2336281)
  decide +kernel
#print axioms cover_2336281

def state_2336332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
def hex_2336332 : String := "444305404241054405050505430707"
theorem cover_2336332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2336332)
  decide +kernel
#print axioms cover_2336332

def state_2336347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_2336347 : String := "4105424405430509440505"
theorem cover_2336347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2336347)
  decide +kernel
#print axioms cover_2336347

def state_2336360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_2336360 : String := "44404305410606054043064406060A"
theorem cover_2336360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336360 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2336360)
  decide +kernel
#print axioms cover_2336360

def state_2336375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_2336375 : String := "4440414207434407400707070741420743080707404441420A43404441420543050706410A060A4044070A0A42064306070A0A"
theorem cover_2336375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_2336375)
  decide +kernel
#print axioms cover_2336375

def state_2336427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_2336427 : String := "444042060642430541050606404243064441400605060606420606"
theorem cover_2336427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2336427)
  decide +kernel
#print axioms cover_2336427

def state_2336455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_2336455 : String := "40424143440840420808084407404207080843060741434406400806080808"
theorem cover_2336455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2336455)
  decide +kernel
#print axioms cover_2336455
end Mub6.Numerical.CircleFullD0.Forest
