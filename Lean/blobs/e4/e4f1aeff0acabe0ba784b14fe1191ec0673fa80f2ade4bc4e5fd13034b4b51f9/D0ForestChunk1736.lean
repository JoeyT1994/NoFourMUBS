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
def state_2289807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_2289807 : String := "424105430540440542084105430544054007050505"
theorem cover_2289807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_2289807)
  decide +kernel
#print axioms cover_2289807

def state_2289830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
def hex_2289830 : String := "430844400805404208410744080808"
theorem cover_2289830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289830 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2289830)
  decide +kernel
#print axioms cover_2289830

def state_2289846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_2289846 : String := "44400805404208430844080806"
theorem cover_2289846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2289846)
  decide +kernel
#print axioms cover_2289846

def state_2289862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
def hex_2289862 : String := "414308440808434407084407400708"
theorem cover_2289862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2289862)
  decide +kernel
#print axioms cover_2289862

def state_2289878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
def hex_2289878 : String := "4308444042080605400A08"
theorem cover_2289878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2289878)
  decide +kernel
#print axioms cover_2289878

def state_2289890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 22)))
def hex_2289890 : String := "44400905404243084407084344080844410809410840070808"
theorem cover_2289890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2289890)
  decide +kernel
#print axioms cover_2289890

def state_2289915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 22)))
def hex_2289915 : String := "44404207410A070840424407414308070744410A09410A430A0A42084408410843084042080A08"
theorem cover_2289915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289915 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2289915)
  decide +kernel
#print axioms cover_2289915

def state_2289954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_2289954 : String := "08"
theorem cover_2289954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2289954)
  decide +kernel
#print axioms cover_2289954

def state_2289957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
def hex_2289957 : String := "444108430840070841084308400508"
theorem cover_2289957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2289957)
  decide +kernel
#print axioms cover_2289957

def state_2289974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
def hex_2289974 : String := "4308400A08"
theorem cover_2289974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2289974)
  decide +kernel
#print axioms cover_2289974

def state_2289979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
def hex_2289979 : String := "4340424408084443084108400A0843084108400A0808404244410A07410A0544410A430A0A410A0A424408084441084308400A0841084308400A08"
theorem cover_2289979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2289979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_2289979)
  decide +kernel
#print axioms cover_2289979
end Mub6.Numerical.CircleFullD0.Forest
