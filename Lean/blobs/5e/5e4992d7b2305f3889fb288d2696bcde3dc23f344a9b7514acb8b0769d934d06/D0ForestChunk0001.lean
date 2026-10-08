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
def state_20 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_20 : String := "404142054305054243050543050541424305054305054243050505"
theorem cover_20 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_20 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 27) (hex := hex_20)
  decide +kernel
#print axioms cover_20

def state_47 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_47 : String := "404142434405400505440508430A440542080542430A084344050A054142434405074405404305050543070542434405400A050505"
theorem cover_47 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_47 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_47)
  decide +kernel
#print axioms cover_47

def state_101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_101 : String := "4041424344050544400505064344050544074244050505424309064305444107050541424309440740060543054407054243050905"
theorem cover_101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_101)
  decide +kernel
#print axioms cover_101

def state_154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_154 : String := "404142434443050608440640080643084442060508424344050844060743054405084142434405400805064305440540080542430544050605"
theorem cover_154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 57) (hex := hex_154)
  decide +kernel
#print axioms cover_154

def state_213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_213 : String := "4041424308440505434440050506440A430805424344050505430644414305050505414243440505054308440A05420543444006050505"
theorem cover_213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_213)
  decide +kernel
#print axioms cover_213
end Mub6.Numerical.CircleFullD0.Forest
