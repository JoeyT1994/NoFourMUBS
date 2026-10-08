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
def state_2283099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 62)))
def hex_2283099 : String := "404144420643400606060644420643400606060641444206434006060606444206434006060606"
theorem cover_2283099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283099 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2283099)
  decide +kernel
#print axioms cover_2283099

def state_2283144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 124)))
def hex_2283144 : String := "40414405424305400905054442430A0A4305094243074007414405090709410544420A0542430A400A0A4305400505"
theorem cover_2283144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2283144)
  decide +kernel
#print axioms cover_2283144

def state_2283192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 172 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 124)))
def hex_2283192 : String := "414442434005054009050542434009410544050940094105060944424340090A400941440A0608430909424340094144420A09090940060609"
theorem cover_2283192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2283192)
  decide +kernel
#print axioms cover_2283192

def state_2283249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 124)))
def hex_2283249 : String := "4144424305050542434005054041050605054442430A400A07430540080542434041440A42064305050A0A404106064106064340410509054041090907"
theorem cover_2283249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283249 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2283249)
  decide +kernel
#print axioms cover_2283249

def state_2283310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 124)))
def hex_2283310 : String := "43404105090540094105440542430540050505"
theorem cover_2283310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2283310)
  decide +kernel
#print axioms cover_2283310

def state_2283332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 172 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
def hex_2283332 : String := "4144424340070540094105090942430709094442070907"
theorem cover_2283332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2283332)
  decide +kernel
#print axioms cover_2283332
end Mub6.Numerical.CircleFullD0.Forest
