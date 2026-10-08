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
def state_2294806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 23)))
def hex_2294806 : String := "4344410542060541070644414240434405410509440941070905074240090609414240444341070641074206074307410742060606074206400806"
theorem cover_2294806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2294806)
  decide +kernel
#print axioms cover_2294806

def state_2294865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
def hex_2294865 : String := "42064306440906"
theorem cover_2294865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2294865)
  decide +kernel
#print axioms cover_2294865

def state_2294872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 23)))
def hex_2294872 : String := "4142060706"
theorem cover_2294872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2294872)
  decide +kernel
#print axioms cover_2294872

def state_2294882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 22)))
def hex_2294882 : String := "44094142400943440506440941420909064009430544050909"
theorem cover_2294882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_2294882)
  decide +kernel
#print axioms cover_2294882

def state_2294907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 22)))
def hex_2294907 : String := "4409414240094409434142090909414240090940090909400944094341420905094142400909090909"
theorem cover_2294907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2294907)
  decide +kernel
#print axioms cover_2294907

def state_2294948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 22)))
def hex_2294948 : String := "43440941424009050509440941424009440943090A0A09"
theorem cover_2294948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294948 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2294948)
  decide +kernel
#print axioms cover_2294948

def state_2294971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
def hex_2294971 : String := "09"
theorem cover_2294971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2294971)
  decide +kernel
#print axioms cover_2294971

def state_2294972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
def hex_2294972 : String := "41424344054041050605444041050905404142444305410505430641080644054305410540090542060941050643054405404105090542064306440909"
theorem cover_2294972 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2294972 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_2294972)
  decide +kernel
#print axioms cover_2294972
end Mub6.Numerical.CircleFullD0.Forest
