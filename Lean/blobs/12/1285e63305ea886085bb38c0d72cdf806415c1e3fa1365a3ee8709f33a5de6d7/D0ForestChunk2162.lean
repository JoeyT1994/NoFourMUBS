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
def state_2599555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_2599555 : String := "404243410644064042090642054305060606424341440505440505410644064207064341064406430A0606"
theorem cover_2599555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2599555)
  decide +kernel
#print axioms cover_2599555

def state_2599598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
def hex_2599598 : String := "4042434108444008050841064440064207060A43080642430507434108444305400805084106444006064008420708"
theorem cover_2599598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599598 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2599598)
  decide +kernel
#print axioms cover_2599598

def state_2599646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_2599646 : String := "40424344094140090509094344064140064307060706424305440941420540090509430A440641400606400942090A"
theorem cover_2599646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2599646)
  decide +kernel
#print axioms cover_2599646

def state_2599695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_2599695 : String := "43414440420508054008054440090540420507054144400942094309060A09"
theorem cover_2599695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2599695)
  decide +kernel
#print axioms cover_2599695

def state_2599726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 15)))
def hex_2599726 : String := "4341444007430742080608074144064006424308060644400642090640420905424341080709430705"
theorem cover_2599726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2599726)
  decide +kernel
#print axioms cover_2599726

def state_2599768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_2599768 : String := "43054144420540430507054205404305070544420540090542054043050905"
theorem cover_2599768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599768 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2599768)
  decide +kernel
#print axioms cover_2599768
end Mub6.Numerical.CircleFullD0.Forest
