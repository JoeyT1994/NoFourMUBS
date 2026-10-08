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
def state_2316655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
def hex_2316655 : String := "444341054205054105424044050A054044054105430542050505434107420A074107420A07"
theorem cover_2316655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316655 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2316655)
  decide +kernel
#print axioms cover_2316655

def state_2316692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 14 else 22)))
def hex_2316692 : String := "43074044424341054044050705410540444241054305400A050542410743074008070744050707074442050507"
theorem cover_2316692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316692 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 45) (hex := hex_2316692)
  decide +kernel
#print axioms cover_2316692

def state_2316737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 23)))
def hex_2316737 : String := "4107424340444307070707404443410742400807074107420807430707444307070707"
theorem cover_2316737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_2316737)
  decide +kernel
#print axioms cover_2316737

def state_2316773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
def hex_2316773 : String := "4441420606424340440606444106424340064441060708064340064406060641060806434006444206064206060641420606420808"
theorem cover_2316773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 53) (hex := hex_2316773)
  decide +kernel
#print axioms cover_2316773

def state_2316828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
def hex_2316828 : String := "424340440606440507400609430706"
theorem cover_2316828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2316828)
  decide +kernel
#print axioms cover_2316828

def state_2316848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 44)))
def hex_2316848 : String := "42434006444205054241050A060643400644050606"
theorem cover_2316848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2316848)
  decide +kernel
#print axioms cover_2316848
end Mub6.Numerical.CircleFullD0.Forest
