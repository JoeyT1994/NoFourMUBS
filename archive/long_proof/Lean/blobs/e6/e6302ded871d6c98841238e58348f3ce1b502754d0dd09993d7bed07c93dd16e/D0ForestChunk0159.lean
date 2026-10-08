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
def state_975652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 87) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 57)))
def hex_975652 : String := "4442404108084108088542404106430644424009410543440805058505410A430A444240410543440805050A850585"
theorem cover_975652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_975652)
  decide +kernel
#print axioms cover_975652

def state_975699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 29)))
def hex_975699 : String := "424041054344420506050541054305054006410A430A44424041050505400641064306444205060505"
theorem cover_975699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_975699)
  decide +kernel
#print axioms cover_975699

def state_975740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 15)))
def hex_975740 : String := "400641064306420506"
theorem cover_975740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975740 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_975740)
  decide +kernel
#print axioms cover_975740

def state_975750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 7)))
def hex_975750 : String := "444009434105420544400905050905"
theorem cover_975750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_975750)
  decide +kernel
#print axioms cover_975750

def state_975767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
def hex_975767 : String := "4341090909"
theorem cover_975767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_975767)
  decide +kernel
#print axioms cover_975767

def state_975774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 14)))
def hex_975774 : String := "440809"
theorem cover_975774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_975774)
  decide +kernel
#print axioms cover_975774

def state_975779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 28)))
def hex_975779 : String := "404341094408090943410744080507"
theorem cover_975779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_975779)
  decide +kernel
#print axioms cover_975779

def state_975794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
def hex_975794 : String := "4043410844080941080943410844084240434108090943410744080508404341084408090843410844084240434105090943410544080505850808"
theorem cover_975794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_975794)
  decide +kernel
#print axioms cover_975794

def state_975853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 29)))
def hex_975853 : String := "4205400943410544420540094341054442058505050509"
theorem cover_975853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_975853)
  decide +kernel
#print axioms cover_975853

def state_975876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 14)))
def hex_975876 : String := "4107440809"
theorem cover_975876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_975876)
  decide +kernel
#print axioms cover_975876

def state_975881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 15)))
def hex_975881 : String := "400909"
theorem cover_975881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_975881)
  decide +kernel
#print axioms cover_975881
end Mub6.Numerical.CircleFullD0.Forest
