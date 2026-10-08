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
def state_1004142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 177)))
def hex_1004142 : String := "434241404443420A060A43420806084443060806400A444342410A05050A43420A060A410640054405064241080A4140440A0A06400A4443050A0A"
theorem cover_1004142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1004142)
  decide +kernel
#print axioms cover_1004142

def state_1004201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 110) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 88)))
def hex_1004201 : String := "444342410607064241080741064044054305070743424106404443064207060606064208410640444306080606"
theorem cover_1004201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1004201)
  decide +kernel
#print axioms cover_1004201

def state_1004246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 88)))
def hex_1004246 : String := "424044070A07404443054142070505434142400A44050905050A440743414209400506074142074044054305070707"
theorem cover_1004246 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004246 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1004246)
  decide +kernel
#print axioms cover_1004246

def state_1004293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 88)))
def hex_1004293 : String := "4142084044434241080A41400A080A0A43420841080A0844434208410807080842400607400A4407430707"
theorem cover_1004293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1004293)
  decide +kernel
#print axioms cover_1004293
end Mub6.Numerical.CircleFullD0.Forest
