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
def state_2267785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 56)))
def hex_2267785 : String := "41444043090943424108090942410A4409060940430942060943084206094440094309094006430906"
theorem cover_2267785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2267785)
  decide +kernel
#print axioms cover_2267785

def state_2267826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 57)))
def hex_2267826 : String := "40430742064106064342084108074206410606"
theorem cover_2267826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2267826)
  decide +kernel
#print axioms cover_2267826

def state_2267845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2267845 : String := "4440074307420741090707"
theorem cover_2267845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2267845)
  decide +kernel
#print axioms cover_2267845

def state_2267856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 28)))
def hex_2267856 : String := "434144054009424305090544090741444009424341050941090909400942430941090909440909"
theorem cover_2267856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2267856)
  decide +kernel
#print axioms cover_2267856

def state_2267895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 29)))
def hex_2267895 : String := "4042074307094243074106064341440907074144400942430806090909"
theorem cover_2267895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267895 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_2267895)
  decide +kernel
#print axioms cover_2267895

def state_2267924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2267924 : String := "444007420743070907"
theorem cover_2267924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2267924)
  decide +kernel
#print axioms cover_2267924

def state_2267936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
def hex_2267936 : String := "43424144404307054342070905060541090942054144080605"
theorem cover_2267936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267936 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2267936)
  decide +kernel
#print axioms cover_2267936

def state_2267964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
def hex_2267964 : String := "444043424106054144090609420541444005060505434241060541444043424106060942060943420A0A0A06444009434206090606420541440A060506"
theorem cover_2267964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2267964)
  decide +kernel
#print axioms cover_2267964

def state_2268025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
def hex_2268025 : String := "4440054342054106050505"
theorem cover_2268025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2268025)
  decide +kernel
#print axioms cover_2268025
end Mub6.Numerical.CircleFullD0.Forest
