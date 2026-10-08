import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_167413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 95 else 59)))
def hex_167413 : String := "41440643424041090641440607060942400941094406090906"
theorem cover_167413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_167413)
  decide +kernel
#print axioms cover_167413

def state_167439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 76) else (if j.val < 3 then 100 else (if j.val < 4 then 95 else 59)))
def hex_167439 : String := "4443420840060A420A0A43424041444307080744068F41084408084041074406074107054240414409094443060A8F410A44088F40094109440A8F"
theorem cover_167439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_167439)
  decide +kernel
#print axioms cover_167439

def state_167498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 77) else (if j.val < 3 then 100 else (if j.val < 4 then 95 else 59)))
def hex_167498 : String := "44064342060542404144068F064144068F0640064144068F05"
theorem cover_167498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_167498)
  decide +kernel
#print axioms cover_167498

def state_167523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 95 else 59)))
def hex_167523 : String := "404109064144430509430509440505"
theorem cover_167523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_167523)
  decide +kernel
#print axioms cover_167523

def state_167538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
def hex_167538 : String := "06"
theorem cover_167538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_167538)
  decide +kernel
#print axioms cover_167538

def state_167539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 29)))
def hex_167539 : String := "41444305420805434205054241404408434208050A0840444305084305420805054140440505050544054305424041440505050505"
theorem cover_167539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_167539)
  decide +kernel
#print axioms cover_167539

def state_167592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 29)))
def hex_167592 : String := "40414406430542400905050505"
theorem cover_167592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_167592)
  decide +kernel
#print axioms cover_167592

def state_167607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 15)))
def hex_167607 : String := "400A410744420A0A0A"
theorem cover_167607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_167607)
  decide +kernel
#print axioms cover_167607

def state_167618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
def hex_167618 : String := "444243400A414405050A0543400A074041054405054144050544434205070543070542430A054307400507"
theorem cover_167618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_167618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_167618)
  decide +kernel
#print axioms cover_167618
end Mub6.Numerical.CircleFullPrototype.Forest
