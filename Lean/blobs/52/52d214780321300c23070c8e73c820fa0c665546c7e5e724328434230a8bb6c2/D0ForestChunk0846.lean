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
def state_1503668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 59)))
def hex_1503668 : String := "434442054041050505420640414342060A084342084407400807084106434205070544054205400805"
theorem cover_1503668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1503668)
  decide +kernel
#print axioms cover_1503668

def state_1503709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 59)))
def hex_1503709 : String := "41064344050605"
theorem cover_1503709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1503709)
  decide +kernel
#print axioms cover_1503709

def state_1503718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
def hex_1503718 : String := "42054041434405420508050505"
theorem cover_1503718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1503718)
  decide +kernel
#print axioms cover_1503718

def state_1503732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
def hex_1503732 : String := "40414342054405404341424405064405404309090688414205440506054341060505054342058805414342054405060505"
theorem cover_1503732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 49) (hex := hex_1503732)
  decide +kernel
#print axioms cover_1503732

def state_1503785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 118)))
def hex_1503785 : String := "424043414405420540430641440507050888054341440542050505054043064142440507060608"
theorem cover_1503785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1503785)
  decide +kernel
#print axioms cover_1503785

def state_1503830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 164 else (if j.val < 4 then 208 else 238)))
def hex_1503830 : String := "404341444205404341090505054209400A0988414405420540430905090543410988410505"
theorem cover_1503830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503830 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1503830)
  decide +kernel
#print axioms cover_1503830

def state_1503867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 165 else (if j.val < 4 then 208 else 238)))
def hex_1503867 : String := "40434144070A8841444240430605050742400A0A0788434107074144070788"
theorem cover_1503867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1503867)
  decide +kernel
#print axioms cover_1503867

def state_1503898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 239)))
def hex_1503898 : String := "4240434109884144420909098843090940430A410A8843410988410988"
theorem cover_1503898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1503898)
  decide +kernel
#print axioms cover_1503898

def state_1503927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 173) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
def hex_1503927 : String := "88"
theorem cover_1503927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503927 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1503927)
  decide +kernel
#print axioms cover_1503927
end Mub6.Numerical.CircleFullD0.Forest
