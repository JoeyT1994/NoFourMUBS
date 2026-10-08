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
def state_2329734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 24)))
def hex_2329734 : String := "41424008434441070841404243440707070707400808440841400807080808"
theorem cover_2329734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2329734)
  decide +kernel
#print axioms cover_2329734

def state_2329768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 25)))
def hex_2329768 : String := "43444140420508424344414005070505050808414005420543444105050505054441050505"
theorem cover_2329768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329768 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2329768)
  decide +kernel
#print axioms cover_2329768

def state_2329805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 25)))
def hex_2329805 : String := "434441404243444107400507094407050707404205084206074140420507074005064441404205070740054205074140050705"
theorem cover_2329805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329805 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2329805)
  decide +kernel
#print axioms cover_2329805

def state_2329856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 25)))
def hex_2329856 : String := "40084344070707"
theorem cover_2329856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2329856)
  decide +kernel
#print axioms cover_2329856

def state_2329863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 25)))
def hex_2329863 : String := "424005434408050508"
theorem cover_2329863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2329863)
  decide +kernel
#print axioms cover_2329863

def state_2329872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 12)))
def hex_2329872 : String := "4441424008080808414240054344410A0505050808"
theorem cover_2329872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2329872)
  decide +kernel
#print axioms cover_2329872

def state_2329894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 13)))
def hex_2329894 : String := "4341420544400843414205080505050505"
theorem cover_2329894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329894 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2329894)
  decide +kernel
#print axioms cover_2329894

def state_2329913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 13)))
def hex_2329913 : String := "424440054341090505054440434142444005070544074005074205084142050805434107424440050605074107420507400543414205070505"
theorem cover_2329913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_2329913)
  decide +kernel
#print axioms cover_2329913

def state_2329970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 13)))
def hex_2329970 : String := "4205444005434205080505"
theorem cover_2329970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2329970)
  decide +kernel
#print axioms cover_2329970

def state_2329981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 13)))
def hex_2329981 : String := "05"
theorem cover_2329981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2329981)
  decide +kernel
#print axioms cover_2329981

def state_2329982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
def hex_2329982 : String := "44400844080505"
theorem cover_2329982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2329982)
  decide +kernel
#print axioms cover_2329982

def state_2329991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 12)))
def hex_2329991 : String := "08"
theorem cover_2329991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2329991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2329991)
  decide +kernel
#print axioms cover_2329991
end Mub6.Numerical.CircleFullD0.Forest
