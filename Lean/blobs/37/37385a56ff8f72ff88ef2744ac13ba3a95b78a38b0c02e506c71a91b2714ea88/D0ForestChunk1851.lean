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
def state_2317339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_2317339 : String := "404406064442410643404406064442050509400609410643400607064241064340440606070907"
theorem cover_2317339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2317339)
  decide +kernel
#print axioms cover_2317339

def state_2317378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 23)))
def hex_2317378 : String := "414209074243404441420807080844410942430A08074107084008094307400807"
theorem cover_2317378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317378 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2317378)
  decide +kernel
#print axioms cover_2317378

def state_2317413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 10)))
def hex_2317413 : String := "404241440505440A0A0A42410544050505"
theorem cover_2317413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2317413)
  decide +kernel
#print axioms cover_2317413

def state_2317430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
def hex_2317430 : String := "404241440606440A430A060A42414405054443404205050540424105440A060A424105080543404244050A0505404206064244050505410544050A"
theorem cover_2317430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317430 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2317430)
  decide +kernel
#print axioms cover_2317430

def state_2317489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_2317489 : String := "4340424441070A07070740424441060A060A4244410743074006070707"
theorem cover_2317489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2317489)
  decide +kernel
#print axioms cover_2317489

def state_2317521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_2317521 : String := "40094306410706"
theorem cover_2317521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2317521)
  decide +kernel
#print axioms cover_2317521

def state_2317529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_2317529 : String := "43440941420643064409400806064441420740090909414207444009430941420709074005434142060606054207440905"
theorem cover_2317529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2317529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2317529)
  decide +kernel
#print axioms cover_2317529
end Mub6.Numerical.CircleFullD0.Forest
