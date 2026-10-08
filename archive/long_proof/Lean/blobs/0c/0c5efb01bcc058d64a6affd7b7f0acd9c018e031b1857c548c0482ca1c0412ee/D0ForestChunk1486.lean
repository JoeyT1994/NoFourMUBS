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
def state_1657279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 20)))
def hex_1657279 : String := "414344424041090909404143440908094344060806090844094240410909094041434406080606094344420909084409420909"
theorem cover_1657279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657279 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1657279)
  decide +kernel
#print axioms cover_1657279

def state_1657334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 21)))
def hex_1657334 : String := "4442414043084442414043084407080808080808080808"
theorem cover_1657334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1657334)
  decide +kernel
#print axioms cover_1657334

def state_1657360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1657360 : String := "40434442410740070741404344070807074043080743080708440742074107074344070807"
theorem cover_1657360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657360 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1657360)
  decide +kernel
#print axioms cover_1657360

def state_1657397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1657397 : String := "40434442414007074043050705414043080608080844074207410708430807"
theorem cover_1657397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657397 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1657397)
  decide +kernel
#print axioms cover_1657397

def state_1657428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 53 else 42)))
def hex_1657428 : String := "414043444241404308064308074006084140060806084406424140060706064308440708404308064308440708"
theorem cover_1657428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1657428)
  decide +kernel
#print axioms cover_1657428

def state_1657473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 43)))
def hex_1657473 : String := "424140444308424107080808080808"
theorem cover_1657473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657473 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1657473)
  decide +kernel
#print axioms cover_1657473

def state_1657488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1657488 : String := "43084442404143084407080541430507054041430806060808"
theorem cover_1657488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657488 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1657488)
  decide +kernel
#print axioms cover_1657488

def state_1657513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1657513 : String := "41430844424041070907404143080708080808"
theorem cover_1657513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1657513 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1657513)
  decide +kernel
#print axioms cover_1657513
end Mub6.Numerical.CircleFullD0.Forest
