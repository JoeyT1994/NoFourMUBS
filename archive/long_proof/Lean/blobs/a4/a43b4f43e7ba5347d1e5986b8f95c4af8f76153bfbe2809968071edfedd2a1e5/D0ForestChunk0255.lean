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
def state_998668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 86)))
def hex_998668 : String := "404405434241050505424140440543050707050544074342070507"
theorem cover_998668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_998668)
  decide +kernel
#print axioms cover_998668

def state_998695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 86)))
def hex_998695 : String := "4241080741404408080840440743420741404405080705420741080707"
theorem cover_998695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_998695)
  decide +kernel
#print axioms cover_998695

def state_998727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
def hex_998727 : String := "08"
theorem cover_998727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_998727)
  decide +kernel
#print axioms cover_998727

def state_998729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
def hex_998729 : String := "444342410807414044434208410805080808404407430707074208410807434208410840444342084108050843420841084008080844080808"
theorem cover_998729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_998729)
  decide +kernel
#print axioms cover_998729

def state_998786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
def hex_998786 : String := "444342074108070708"
theorem cover_998786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998786 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_998786)
  decide +kernel
#print axioms cover_998786

def state_998796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 108) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 87)))
def hex_998796 : String := "404443060843060806"
theorem cover_998796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998796 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_998796)
  decide +kernel
#print axioms cover_998796

def state_998807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 174)))
def hex_998807 : String := "43424140444305420805434241060505084443050806400544054305050542410840440543420705070741404405430508444305050605"
theorem cover_998807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_998807)
  decide +kernel
#print axioms cover_998807

def state_998863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 212 else 175)))
def hex_998863 : String := "4241404443060806064044430542410805054342410605054208410605444306420805430608410605"
theorem cover_998863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_998863)
  decide +kernel
#print axioms cover_998863
end Mub6.Numerical.CircleFullD0.Forest
