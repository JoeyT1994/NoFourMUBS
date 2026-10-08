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
def state_2269932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 44 else 57)))
def hex_2269932 : String := "434007444105074142070507404441424307444006060609070744414243400505400606430540050542070A41424308064340050540060607"
theorem cover_2269932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269932 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2269932)
  decide +kernel
#print axioms cover_2269932

def state_2269989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 44 else 57)))
def hex_2269989 : String := "4340090540094441050941424305090509"
theorem cover_2269989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2269989)
  decide +kernel
#print axioms cover_2269989

def state_2270006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
def hex_2270006 : String := "4207430709"
theorem cover_2270006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2270006)
  decide +kernel
#print axioms cover_2270006

def state_2270012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 56)))
def hex_2270012 : String := "4142430540440541050A440541050A05420A430A400808"
theorem cover_2270012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2270012)
  decide +kernel
#print axioms cover_2270012

def state_2270037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 44 else 57)))
def hex_2270037 : String := "43444041050A054041050741050A44404142430544050605420A430A0A4105420A43050A4041420843054006054206430A06414208054206430A06"
theorem cover_2270037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2270037)
  decide +kernel
#print axioms cover_2270037

def state_2270096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 44 else 57)))
def hex_2270096 : String := "4305444041054243054405400505050540410542434005054009444105060609410542430544050605"
theorem cover_2270096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2270096)
  decide +kernel
#print axioms cover_2270096

def state_2270137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
def hex_2270137 : String := "42430A440A0A43440A40070A44400A0A4041420A090741420A430A0A0A"
theorem cover_2270137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2270137)
  decide +kernel
#print axioms cover_2270137
end Mub6.Numerical.CircleFullD0.Forest
