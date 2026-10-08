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
def state_377181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_377181 : String := "43440643440640064142074344064042410706414308060642074143074406400607074406400642070642074344064006410707060606"
theorem cover_377181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 55) (hex := hex_377181)
  decide +kernel
#print axioms cover_377181

def state_377236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_377236 : String := "434406424344064006414344420606424008410A08084405420608434406424006410806080606434440054105060808440505"
theorem cover_377236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 51) (hex := hex_377236)
  decide +kernel
#print axioms cover_377236

def state_377288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_377288 : String := "43440641434406400642430707434406414006074006420706060643444005420506400A420A4143440640064209434406090606434405400505050A440505"
theorem cover_377288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 63) (hex := hex_377288)
  decide +kernel
#print axioms cover_377288

def state_377351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_377351 : String := "43444106064142434406400643440641084206060606434406080642434406400641434406420606064344054205050506434406400541060505440605"
theorem cover_377351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_377351)
  decide +kernel
#print axioms cover_377351
end Mub6.Numerical.CircleFullPrototype.Forest
