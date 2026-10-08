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
def state_1624719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
def hex_1624719 : String := "40444341064206400906410642064008080606"
theorem cover_1624719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1624719)
  decide +kernel
#print axioms cover_1624719

def state_1624739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
def hex_1624739 : String := "44434142080742400944430608060741084240080840080843410909414208084240094408064009440809"
theorem cover_1624739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624739 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1624739)
  decide +kernel
#print axioms cover_1624739

def state_1624782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
def hex_1624782 : String := "44434106420640070641084240080640080843064106420640444306080606"
theorem cover_1624782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1624782)
  decide +kernel
#print axioms cover_1624782

def state_1624818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 34)))
def hex_1624818 : String := "42404406060640444309410909094443064106420640444309410609060606"
theorem cover_1624818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1624818)
  decide +kernel
#print axioms cover_1624818

def state_1624850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 34)))
def hex_1624850 : String := "404443090A0944430541060505"
theorem cover_1624850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624850 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1624850)
  decide +kernel
#print axioms cover_1624850

def state_1624863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 34)))
def hex_1624863 : String := "4044430941090909444341420505054142404443050A050540444309414209070A09444305410505054205404443050A050543054142050505"
theorem cover_1624863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1624863)
  decide +kernel
#print axioms cover_1624863

def state_1624921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 34)))
def hex_1624921 : String := "424044430A070A444306070640444341080A080A444341084240440806064044080A44080608434106420640090641080A"
theorem cover_1624921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1624921)
  decide +kernel
#print axioms cover_1624921
end Mub6.Numerical.CircleFullD0.Forest
