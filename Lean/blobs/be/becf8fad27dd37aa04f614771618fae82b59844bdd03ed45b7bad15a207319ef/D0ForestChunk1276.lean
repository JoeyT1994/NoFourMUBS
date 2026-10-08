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
def state_1606765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
def hex_1606765 : String := "4143444005429F05060643444006429F4105064006429F0606"
theorem cover_1606765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1606765)
  decide +kernel
#print axioms cover_1606765

def state_1606791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 100)))
def hex_1606791 : String := "9F"
theorem cover_1606791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1606791)
  decide +kernel
#print axioms cover_1606791

def state_1606793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 100)))
def hex_1606793 : String := "434440429F05429F0840429F06429F08444006429F064006429F06"
theorem cover_1606793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606793 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 27) (hex := hex_1606793)
  decide +kernel
#print axioms cover_1606793

def state_1606821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 100)))
def hex_1606821 : String := "4440429F41430A06434440050A40070A444005429F0506429F410A430A440A400A0A40429F4106430706429F4108430A4440429F060A400608"
theorem cover_1606821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1606821)
  decide +kernel
#print axioms cover_1606821

def state_1606878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 121 else 100)))
def hex_1606878 : String := "4440429F06429F4143440A0606434440429F050A4006429F06064006429F410606"
theorem cover_1606878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1606878)
  decide +kernel
#print axioms cover_1606878

def state_1606912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 101)))
def hex_1606912 : String := "424143444240069F060606434442400705070706410606"
theorem cover_1606912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606912 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1606912)
  decide +kernel
#print axioms cover_1606912

def state_1606935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 101)))
def hex_1606935 : String := "429F41434440060840060806434440429F06429F410843440805440706404205064205410605444006429F0606"
theorem cover_1606935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1606935)
  decide +kernel
#print axioms cover_1606935

def state_1606982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
def hex_1606982 : String := "4241060606"
theorem cover_1606982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1606982)
  decide +kernel
#print axioms cover_1606982
end Mub6.Numerical.CircleFullD0.Forest
