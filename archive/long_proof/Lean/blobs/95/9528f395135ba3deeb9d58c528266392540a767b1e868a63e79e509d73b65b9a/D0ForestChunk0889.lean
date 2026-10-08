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
def state_1513911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 122)))
def hex_1513911 : String := "43424440414342060506434206074206440706060644400707054206444041074307070740410543050606"
theorem cover_1513911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1513911)
  decide +kernel
#print axioms cover_1513911

def state_1513956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 168 else (if j.val < 4 then 212 else 122)))
def hex_1513956 : String := "444041434244400906064407054244400906064409400906434209094209094143420607064342440A0607420644070640414305064305420644090506"
theorem cover_1513956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513956 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_1513956)
  decide +kernel
#print axioms cover_1513956

def state_1514017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 169 else (if j.val < 4 then 212 else 122)))
def hex_1514017 : String := "4440410709074005410507"
theorem cover_1514017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514017 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1514017)
  decide +kernel
#print axioms cover_1514017

def state_1514028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 84 else (if j.val < 4 then 213 else 122)))
def hex_1514028 : String := "424440414342060906430909410643060606444041430707094107074041430542060743420905094106430706"
theorem cover_1514028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 45) (hex := hex_1514028)
  decide +kernel
#print axioms cover_1514028

def state_1514073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
def hex_1514073 : String := "4041054305420805414305064342050542064440050605"
theorem cover_1514073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1514073)
  decide +kernel
#print axioms cover_1514073

def state_1514096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 61)))
def hex_1514096 : String := "44404108420843090841420643444041064206070606064243444008060606434440410909414206074243060507404108420609064440080606400806"
theorem cover_1514096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1514096)
  decide +kernel
#print axioms cover_1514096
end Mub6.Numerical.CircleFullD0.Forest
