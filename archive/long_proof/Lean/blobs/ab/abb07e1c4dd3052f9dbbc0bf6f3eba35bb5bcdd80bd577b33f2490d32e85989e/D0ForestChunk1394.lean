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
def state_1635216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 18)))
def hex_1635216 : String := "414342440A060742440808440508434244070707424440080840410843070841064306420608444007084007410707"
theorem cover_1635216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1635216)
  decide +kernel
#print axioms cover_1635216

def state_1635263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 24 else 19)))
def hex_1635263 : String := "41430742440606444005060943074244404109090640070644400741070709"
theorem cover_1635263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1635263)
  decide +kernel
#print axioms cover_1635263

def state_1635294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 24 else 9)))
def hex_1635294 : String := "444143070507410707"
theorem cover_1635294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1635294)
  decide +kernel
#print axioms cover_1635294

def state_1635303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_1635303 : String := "424441064306404206440A0A06064441430A404208070A43074042440707070A4143400706404442060707064307404407074442060706"
theorem cover_1635303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_1635303)
  decide +kernel
#print axioms cover_1635303

def state_1635361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 18)))
def hex_1635361 : String := "4105434244080844050805"
theorem cover_1635361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1635361)
  decide +kernel
#print axioms cover_1635361

def state_1635373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
def hex_1635373 : String := "43424408400506440540050805"
theorem cover_1635373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635373 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1635373)
  decide +kernel
#print axioms cover_1635373

def state_1635387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
def hex_1635387 : String := "42444008410843440806084041084309084106430642060844400541084342080808400941430908434244400706060742440808440808"
theorem cover_1635387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1635387)
  decide +kernel
#print axioms cover_1635387

def state_1635442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
def hex_1635442 : String := "4244084005084405400508"
theorem cover_1635442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1635442)
  decide +kernel
#print axioms cover_1635442
end Mub6.Numerical.CircleFullD0.Forest
