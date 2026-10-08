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
def state_2321785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 88)))
def hex_2321785 : String := "414340064442060642060606434044070844420741430906074241080741080840074407420708"
theorem cover_2321785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2321785)
  decide +kernel
#print axioms cover_2321785

def state_2321824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
def hex_2321824 : String := "414340064442050542060606434044090844420909424108084108084006444241060706420806"
theorem cover_2321824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2321824)
  decide +kernel
#print axioms cover_2321824

def state_2321863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 89)))
def hex_2321863 : String := "4241430806084143080608"
theorem cover_2321863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2321863)
  decide +kernel
#print axioms cover_2321863

def state_2321874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
def hex_2321874 : String := "434044090944420909424143094008440908090940444207090844420741430940094407090942410805410808"
theorem cover_2321874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2321874)
  decide +kernel
#print axioms cover_2321874

def state_2321920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
def hex_2321920 : String := "43400A44424143050A090A42410743074008070740440A084442414340064405050643400944090A4006444206064206060A424108080A"
theorem cover_2321920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2321920)
  decide +kernel
#print axioms cover_2321920

def state_2321975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
def hex_2321975 : String := "4340094409094044090844420909424108080A"
theorem cover_2321975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321975 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2321975)
  decide +kernel
#print axioms cover_2321975

def state_2321994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 45)))
def hex_2321994 : String := "424143400844424108084107080808434008444208080808414340080708434008444208070708"
theorem cover_2321994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2321994)
  decide +kernel
#print axioms cover_2321994
end Mub6.Numerical.CircleFullD0.Forest
