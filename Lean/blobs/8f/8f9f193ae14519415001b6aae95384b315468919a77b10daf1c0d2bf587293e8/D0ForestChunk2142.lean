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
def state_2594726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
def hex_2594726 : String := "44424340410644060806064306054243400707074340050805"
theorem cover_2594726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2594726)
  decide +kernel
#print axioms cover_2594726

def state_2594751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
def hex_2594751 : String := "4442434044414243400508050505414207050A4441060808400508434005440641060A0542434007070743400541070705"
theorem cover_2594751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2594751)
  decide +kernel
#print axioms cover_2594751

def state_2594800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
def hex_2594800 : String := "414406084442080608"
theorem cover_2594800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2594800)
  decide +kernel
#print axioms cover_2594800

def state_2594812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 19)))
def hex_2594812 : String := "44434240410644060906064206054342404144434240050905050544430905074144060709400509424005410644060705"
theorem cover_2594812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594812 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2594812)
  decide +kernel
#print axioms cover_2594812

def state_2594861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 19)))
def hex_2594861 : String := "444342400A090942400509054342400A0909424005414409070A05"
theorem cover_2594861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594861 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2594861)
  decide +kernel
#print axioms cover_2594861

def state_2594888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 19)))
def hex_2594888 : String := "414406430906440909"
theorem cover_2594888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594888 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2594888)
  decide +kernel
#print axioms cover_2594888

def state_2594897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 49 else 19)))
def hex_2594897 : String := "404144050544050541064406424340410609060606"
theorem cover_2594897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594897 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2594897)
  decide +kernel
#print axioms cover_2594897

def state_2594918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
def hex_2594918 : String := "41064406424341080908430906"
theorem cover_2594918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2594918)
  decide +kernel
#print axioms cover_2594918

def state_2594931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 9)))
def hex_2594931 : String := "404144064208064442430606064243404144050544050508400506434005060506"
theorem cover_2594931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2594931)
  decide +kernel
#print axioms cover_2594931
end Mub6.Numerical.CircleFullD0.Forest
