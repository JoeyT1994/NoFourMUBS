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
def state_962733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_962733 : String := "4243440A400A41420A0A0A0A4344094007090A"
theorem cover_962733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_962733)
  decide +kernel
#print axioms cover_962733

def state_962752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 54)))
def hex_962752 : String := "440A400A41420A43440A400A41420543440605050A0A0A"
theorem cover_962752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_962752)
  decide +kernel
#print axioms cover_962752

def state_962775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_962775 : String := "420A0A"
theorem cover_962775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_962775)
  decide +kernel
#print axioms cover_962775

def state_962779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_962779 : String := "4142444340074105090505444307050742440A09440707"
theorem cover_962779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962779 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_962779)
  decide +kernel
#print axioms cover_962779

def state_962807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 110)))
def hex_962807 : String := "41C74209440A07"
theorem cover_962807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_962807)
  decide +kernel
#print axioms cover_962807

def state_962815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 176) else (if j.val < 3 then 104 else (if j.val < 4 then 72 else 110)))
def hex_962815 : String := "C7"
theorem cover_962815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962815 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_962815)
  decide +kernel
#print axioms cover_962815

def state_962817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 72 else 110)))
def hex_962817 : String := "444340094109060909"
theorem cover_962817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_962817)
  decide +kernel
#print axioms cover_962817

def state_962826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 72 else 110)))
def hex_962826 : String := "44434041420A070A4142440A4340090905440A434007410707400741050A420A0A400A4142050A0643404107074142094443070505420944070709"
theorem cover_962826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_962826)
  decide +kernel
#print axioms cover_962826

def state_962885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 73 else 110)))
def hex_962885 : String := "40054105420505"
theorem cover_962885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_962885)
  decide +kernel
#print axioms cover_962885

def state_962892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 111)))
def hex_962892 : String := "4340090905"
theorem cover_962892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_962892)
  decide +kernel
#print axioms cover_962892

def state_962900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
def hex_962900 : String := "4142C70707"
theorem cover_962900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_962900)
  decide +kernel
#print axioms cover_962900

def state_962906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 176) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
def hex_962906 : String := "42C744430740074142C70742070707"
theorem cover_962906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_962906)
  decide +kernel
#print axioms cover_962906

def state_962921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
def hex_962921 : String := "424443400741424443070A07074244070707400A41424344060505434407070A0A43074007414205054244070507444307400741070707"
theorem cover_962921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962921 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_962921)
  decide +kernel
#print axioms cover_962921
end Mub6.Numerical.CircleFullD0.Forest
