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
def state_2314735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 20)))
def hex_2314735 : String := "43404142070507410542070507"
theorem cover_2314735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2314735)
  decide +kernel
#print axioms cover_2314735

def state_2314751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 42)))
def hex_2314751 : String := "41424305060542074340070507"
theorem cover_2314751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2314751)
  decide +kernel
#print axioms cover_2314751

def state_2314764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 43)))
def hex_2314764 : String := "414243400605064340060506424340074407414205050707434044410607410642070644054105424305400605054006444105074106420606"
theorem cover_2314764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2314764)
  decide +kernel
#print axioms cover_2314764

def state_2314821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 21)))
def hex_2314821 : String := "44410542430507054142050542430A0A43054044054105420A0505"
theorem cover_2314821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2314821)
  decide +kernel
#print axioms cover_2314821

def state_2314848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 31 else 21)))
def hex_2314848 : String := "404441060741064206064441420505420743070741420606420A4340440641060A0A400609"
theorem cover_2314848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2314848)
  decide +kernel
#print axioms cover_2314848

def state_2314886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 20)))
def hex_2314886 : String := "4340424105440743050741054405054205054042410607410644060642410508410508"
theorem cover_2314886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_2314886)
  decide +kernel
#print axioms cover_2314886

def state_2314923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
def hex_2314923 : String := "424441054340420505054006420505410643404442050542060644050540064406064441054305400605410543400A054006420505"
theorem cover_2314923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2314923)
  decide +kernel
#print axioms cover_2314923

def state_2314976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
def hex_2314976 : String := "424405410543054044050505440505"
theorem cover_2314976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2314976)
  decide +kernel
#print axioms cover_2314976
end Mub6.Numerical.CircleFullD0.Forest
