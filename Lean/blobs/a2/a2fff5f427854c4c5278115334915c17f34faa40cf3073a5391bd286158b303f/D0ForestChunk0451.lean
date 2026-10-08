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
def state_1045824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1045824 : String := "4240430A44410542050A080A40430A444106420A0641064240430A440A05060606"
theorem cover_1045824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1045824)
  decide +kernel
#print axioms cover_1045824

def state_1045858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_1045858 : String := "40430A44414205404409430505090941420540430505054205404305444205410507054305050A"
theorem cover_1045858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1045858)
  decide +kernel
#print axioms cover_1045858

def state_1045899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1045899 : String := "440A0A"
theorem cover_1045899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1045899)
  decide +kernel
#print axioms cover_1045899

def state_1045903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 24)))
def hex_1045903 : String := "4241404409430A4241404409050509410609090941404406060640440843080909"
theorem cover_1045903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1045903)
  decide +kernel
#print axioms cover_1045903

def state_1045938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1045938 : String := "40430A44424105404405050541064044430A420906430A420506064205410840430508050A"
theorem cover_1045938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1045938)
  decide +kernel
#print axioms cover_1045938

def state_1045977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1045977 : String := "44420A0A42050A"
theorem cover_1045977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1045977)
  decide +kernel
#print axioms cover_1045977

def state_1045985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 50)))
def hex_1045985 : String := "424140440905094044074307070741404409430A42410509414044060606090940440943090909"
theorem cover_1045985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1045985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1045985)
  decide +kernel
#print axioms cover_1045985

def state_1046025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 51)))
def hex_1046025 : String := "410540430544050505"
theorem cover_1046025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1046025)
  decide +kernel
#print axioms cover_1046025

def state_1046035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1046035 : String := "4043440A054442054140440605054044434205064205064305084406054205410540430508054305440505"
theorem cover_1046035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1046035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1046035)
  decide +kernel
#print axioms cover_1046035
end Mub6.Numerical.CircleFullD0.Forest
