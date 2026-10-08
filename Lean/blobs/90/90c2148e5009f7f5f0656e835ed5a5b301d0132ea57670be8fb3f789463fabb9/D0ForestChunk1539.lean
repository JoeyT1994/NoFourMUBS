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
def state_2242923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_2242923 : String := "434440054107054041054243050A050544404142060642060A4142060A424305060540410A424406060A41074244050707"
theorem cover_2242923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 49) (hex := hex_2242923)
  decide +kernel
#print axioms cover_2242923

def state_2242974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2242974 : String := "42434443440709440A0909440A40090A4344070944420944060909"
theorem cover_2242974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2242974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_2242974)
  decide +kernel
#print axioms cover_2242974

def state_2243001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2243001 : String := "42434441430909434440090A090A090A434441420907424344400A07090A434407070A41420943404407070709424340440908090943400A0A0A440A09"
theorem cover_2243001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2243001)
  decide +kernel
#print axioms cover_2243001

def state_2243063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2243063 : String := "42434407400A43060A0A43074407400907"
theorem cover_2243063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2243063)
  decide +kernel
#print axioms cover_2243063

def state_2243080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_2243080 : String := "42434440410A4344420907090A41074309440707094440410A44424309060909414442430707070A44420909090A4344404107424307070707090A"
theorem cover_2243080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2243080)
  decide +kernel
#print axioms cover_2243080
end Mub6.Numerical.CircleFullD0.Forest
