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
def state_2284771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
def hex_2284771 : String := "444243400708400808434041440508074105444243050505E5404144420805084442430740060643400505400905E54108444243400505400805430505E5E5"
theorem cover_2284771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284771 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2284771)
  decide +kernel
#print axioms cover_2284771

def state_2284834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
def hex_2284834 : String := "410844424340080840080843400505404105444243050505E541054405E5E5"
theorem cover_2284834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2284834)
  decide +kernel
#print axioms cover_2284834

def state_2284866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 126)))
def hex_2284866 : String := "41444208430806084442434006060643404144420643050606444206434006060606410844420643400605060606E5"
theorem cover_2284866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_2284866)
  decide +kernel
#print axioms cover_2284866

def state_2284913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 126)))
def hex_2284913 : String := "4108444243400606064340410744420607060706E5"
theorem cover_2284913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_2284913)
  decide +kernel
#print axioms cover_2284913

def state_2284935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 126)))
def hex_2284935 : String := "40414405E54442434005054041050905430505E54105444243050505E5"
theorem cover_2284935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2284935)
  decide +kernel
#print axioms cover_2284935

def state_2284964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
def hex_2284964 : String := "4041444243050705E5444243404109094105444243050505E5404109090743400505400907E541074407E5"
theorem cover_2284964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_2284964)
  decide +kernel
#print axioms cover_2284964

def state_2285007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 127)))
def hex_2285007 : String := "E5"
theorem cover_2285007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2285007)
  decide +kernel
#print axioms cover_2285007
end Mub6.Numerical.CircleFullD0.Forest
